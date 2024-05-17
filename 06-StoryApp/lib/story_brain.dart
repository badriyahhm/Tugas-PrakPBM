import 'story.dart';

class StoryBrain {
  final List<Story> _storyData = [
    Story(
        storyTitle:
            'Kamu dan temanmu sedang berjalan-jalan di hutan yang belum pernah kamu kunjungi sebelumnya. Tiba-tiba, langit mulai gelap dan hujan mulai turun dengan derasnya. Di kejauhan, kamu melihat sebuah pondok kecil.',
        choice1: 'Ayo, kita harus mencari tempat berteduh di pondok itu!',
        choice2: 'Tunggu, mungkin lebih baik kita mencari tempat lain.'),
    Story(
        storyTitle:
            'Kamu mendekati pondok itu dan melihat bayangan seseorang di balik jendela.',
        choice1: 'Ayo kita pergi ke sana, mungkin dia bisa membantu kita!',
        choice2:
            'Tunggu, kita sebaiknya tetap waspada dan mencari tempat berteduh lain.'),
    Story(
        storyTitle:
            'Saat kamu mendekati pondok, pintu terbuka perlahan dan seorang kakek muncul dari dalam.',
        choice1: 'Halo, kakek! Bisakah kami berteduh sebentar di sini?',
        choice2: 'Maaf kakek, kami harus mencari tempat berteduh lain.'),
    Story(
        storyTitle:
            'Kamu dan temanmu mencari tempat berteduh lain. Meskipun kalian basah kuyup, kalian menemukan sebuah gua di tepi hutan. Kalian berteduh di sana dan menunggu hujan reda. Setelah hujan reda, kalian keluar dari gua dan menemukan pelangi di langit.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Kamu memutuskan untuk tetap mencari tempat berteduh lain. Namun, semakin lama hujan semakin deras dan kalian kehujanan.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Kakek tersenyum ramah dan mengizinkan kalian masuk. Kamu dan temanmu menghabiskan waktu di pondok bersama kakek, membaca cerita dan bermain. Hujan pun berhenti, dan kalian melanjutkan petualanganmu dengan senyum di wajah.',
        choice1: 'Restart',
        choice2: ''),
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

  void restart() {
    _storyNumber = 0;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
