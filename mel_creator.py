import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import librosa
import librosa.display
import numpy as np
# import threading


def generate_mel(audio_path,id):
    audio, sr = librosa.load(audio_path)

    n_fft = 2048
    hop_length = 512
    n_mels = 128

    mel_spectrogram = librosa.feature.melspectrogram(
        y=audio,
        sr=sr,
        n_fft=n_fft,
        hop_length=hop_length,
        n_mels=n_mels
    )

    mel_spectrogram_db = librosa.power_to_db(mel_spectrogram, ref=np.max)
    plt.figure(figsize=(10, 4))
    librosa.display.specshow(mel_spectrogram_db, sr=sr, hop_length=hop_length,
                            x_axis='time', y_axis='mel')
    plt.colorbar(format='%+2.0f dB')
    plt.title('Mel Spectrogram')
    plt.tight_layout()

    output_file = f'uploads/{id}.png'
    plt.savefig(output_file, format='png')
    return output_file

def generate_mel_in_thread(audio_file, id):
    # Function to run the Matplotlib code in a separate thread
    plt.figure(figsize=(10, 4))
    plt.savefig(f"uploads/{id}.png")
    plt.close()