import 'story.dart';

class StoryBrain {
  final List<Story> _storyData = [
    Story(storyTitle: 'story text1', choice1: 'choice1', choice2: 'choice2'),
    Story(storyTitle: 'story text2', choice1: 'choice1', choice2: 'choice2'),
    Story(storyTitle: 'story text3', choice1: 'choice1', choice2: 'choice2'),
    Story(storyTitle: 'story text4', choice1: 'choice1', choice2: 'choice2'),
    Story(storyTitle: 'story text5', choice1: 'choice1', choice2: 'choice2'),
    Story(storyTitle: 'story text6', choice1: 'choice1', choice2: 'choice2'),
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
