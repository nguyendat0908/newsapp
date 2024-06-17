enum OnBoardingPagePosition { page1, page2, page3 }

extension OnBoardingPagePositionExtension on OnBoardingPagePosition {
  String OnBoardingPageImages() {
    switch (this) {
      case OnBoardingPagePosition.page1:
        return 'assets/images/Images_onboarding_1.png';
      case OnBoardingPagePosition.page2:
        return 'assets/images/Images_onboarding_2.png';
      case OnBoardingPagePosition.page3:
        return 'assets/images/Images_onboarding_3.png';
    }
  }

  String OnBoardingPageTitle() {
    switch (this) {
      case OnBoardingPagePosition.page1:
        return 'Lorem Ipsum is simply dummy';
      case OnBoardingPagePosition.page2:
        return 'Lorem Ipsum is simply dummy';
      case OnBoardingPagePosition.page3:
        return 'Lorem Ipsum is simply dummy';
    }
  }

  String OnBoardingPageContent() {
    switch (this) {
      case OnBoardingPagePosition.page1:
        return 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.';
      case OnBoardingPagePosition.page2:
        return 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.';
      case OnBoardingPagePosition.page3:
        return 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.';
    }
  }
}
