import threading

from flask import Flask, render_template, request
from uuid import uuid4
import subprocess
import datetime
import os
import mysql.connector
from mel_creator import generate_mel,generate_mel_in_thread

app = Flask(__name__, static_folder='uploads', static_url_path='/uploads')

host = os.environ.get("HOST", 'localhost')
# MySQL configuration
mysql_config = {
    'host': host,
    'user': 'root',
    'password': 'root@123',
    'database': 'mel_script'
}

def save_to_database(id, filename, audio_name, melfile, uploaded_on):
    conn = mysql.connector.connect(**mysql_config)
    cursor = conn.cursor()
    insert_query = "INSERT INTO data (uuid, videofile, audiofile, melfile, uploaded_on) VALUES (%s, %s, %s, %s, %s)"
    values = (id, filename, audio_name, melfile, uploaded_on)
    cursor.execute(insert_query, values)
    conn.commit()
    conn.close()

@app.route('/', methods=['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
        if 'file' not in request.files:
            return 'No file selected'
        file = request.files['file']
        if file.filename == '':
            return 'No file selected'
        else:
            id = str(uuid4())
            uploaded_on = str(datetime.datetime.now())
            filename = f"uploads/{id}.mp4"
            audio_name = f"uploads/{id}.mp3"
            file.save(filename)
            threading.Thread(target=generate_mel_in_thread, args=(audio_name, id)).start()
            ffmpeg_cmd = f"ffmpeg -i {filename} -vn -acodec libmp3lame {audio_name}"
            subprocess.run(ffmpeg_cmd, capture_output=True, text=True, shell=True)
            if os.path.exists(audio_name):
                melfile = generate_mel(audio_name, id)
                save_to_database(id, filename, audio_name, melfile, uploaded_on)
                return render_template('success.html')
            else:
                return render_template('failure.html')
    else:
        conn = mysql.connector.connect(**mysql_config)
        cursor = conn.cursor()
        select_query = "SELECT * FROM data"
        cursor.execute(select_query)
        data = cursor.fetchall()
        conn.close()
        return render_template('upload.html', data=data)


if __name__ == '__main__':
    app.run(debug=False, host="0.0.0.0")
