import 'dart:math';

import 'package:ayat_application/Classes/Aya.dart';
import 'package:flutter/foundation.dart';

class AyaProvider extends ChangeNotifier{

 final Random _random=Random(); // to generate random nubmer

 int _randomIndex=0;
 late Aya _currentAya;



// methode to update the randomIndex
  void updateRandomIndex(){
    int tmpRandom = _random.nextInt(_allAyatList.length);

    if(tmpRandom==_randomIndex){

      while(tmpRandom ==_randomIndex){ // to prevent repeting the same Aya whent the timer finished

        tmpRandom = _random.nextInt(_allAyatList.length);
      }
    }

    _randomIndex = tmpRandom;
    notifyListeners();
  }



// method to get random Aya from allAyatList
   Aya getRandomAya(){
      _currentAya=_allAyatList[_randomIndex];
      notifyListeners();
      return _currentAya;
    }









// All Ayat List

final List<Aya> _allAyatList = [

// سورة الاخلاص

  Aya(
    aya: "قُلْ هُوَ اللَّهُ أَحَدٌ", 

    AyaTafseer: """
         
         أي: ﴿قُلْ﴾ -أيها الرسول-: قولًا جازمًا به، معتقدًا له، عارفًا بمعناه أنه هو الله جل وعلا المتفرد بالألوهية والربوبية، والأسماء والصفات فلا يشاركه فيها أحد، ولا إله غيره، حيث انحصرت فيه الأحديةُ سبحانه وتعالى، فهو الأحد المنفرد بالكمال، الذي له الأسماء الحسنى، والصفات الكاملة العليا، والأفعال المقدسة، الذي لا نظير له ولا مثيل.


        """,

        sourahName: "سورة الإخلاص",
        AyaNumber: 1,
        audioUrl: "lib/sounds/alekhlas/قل هو الله احد.mp3"
    ),


    Aya(
    aya: "اللَّهُ الصَّمَدُ", 

    AyaTafseer: """
         
        أي: المقصود في جميع النوازل والحوائج. فأهل العالم العلوي والسفلي مفتقرون إليه غايةَ الافتقار، يسألونه حوائجهم، ويرغبون إليه في مهماتهم؛ لأنه الكامل في أوصافه، العليم الذي قد كمل في علمه، الحليم الذي قد كمل في حلمه، الرحيم الذي كمل في رحمته الذي وسعت رحمته كلَّ شيء، وهكذا سائر أوصافه، وهو سبحانه الذي كَمُل في صفات الشَّرَف والمجد والعظمة، الذي يقصده الخلائق جميعهم في قضاء الحوائج والرغائب، وهو السيد سبحانه الذي انتهى إليه السُّؤْدد في صفات الكمال والجمال، الذي تصمد إليه الخلائق، والمعبود الذي لا تصلح العبادةُ إلا له الصمد.

        """,

        sourahName: "سورة الإخلاص",
        AyaNumber: 2,
        audioUrl: "lib/sounds/alekhlas/الله الصمد.mp3"
    ),


// سورة الفلق

    Aya(
    aya:"قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ", 

    AyaTafseer: """
               أعوذ : ألجأ وأتحصن.
الفلق : الصبح، أو جميع الموجودات.

        """,

        sourahName: "سورة الفلق",
        AyaNumber: 1,
        audioUrl: "lib/sounds/alfalakh/قل اعوذ برب الفلق.mp3"
    ),


];

}