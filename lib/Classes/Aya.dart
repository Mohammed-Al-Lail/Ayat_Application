
import 'package:audioplayers/audioplayers.dart';

class Aya{

Aya({
  required this.aya,
  required this.AyaTafseer,
  required this.sourahName,
  required this.AyaNumber,
  required this.audioUrl,
});
  


  final String aya;
  final String AyaTafseer;
  final String sourahName;
  final int AyaNumber;
  final String audioUrl;


  final AudioPlayer _audioPlayer = AudioPlayer(); // to play an audio
  
   


// method to play the Aya Sound
  void playAudio() async {
    await _audioPlayer.play(UrlSource(audioUrl)); // URL of the audio file
  }


}




