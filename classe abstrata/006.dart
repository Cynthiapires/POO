abstract class Media {
void play();
}

class Video implements Media {
String _URLdoVideo;

Video (this. _URLdoVideo);

@override
void play() {
print ('Reproduzindo vídeo: $_URLdoVideo');
// Lógica de reprodução de vídeo
}
}

class Audio implements Media {
String _URLdoAudio;

Audio (this._URLdoAudio);

@override
void play() {
print ('Reproduzindo áudio: $_URLdoAudio');
// Lógica de reprodução de áudio
}
}

void reproduzirMedia (Media media) {
media.play();
}