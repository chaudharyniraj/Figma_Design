class OnboardingContent {
  String image;
  String title;

  OnboardingContent({required this.title, required this.image});
}

List<OnboardingContent> contents = [
  OnboardingContent(
    title: 'Book Your Favourite restaurants or hotels',
    image: 'onboarding1.png',
  ),
  OnboardingContent(
    title: 'Quick view menu of wide range of restaurants',
    image: 'onboarding2.png',
  ),
  OnboardingContent(
    title: 'Find your Favourite Hotels in different city',
    image: 'onboarding3.png',
  ),
];
