// A Class for lottie animation access
class LottieAssets {

  //manage common path as a method
  static String lottieAnimPath(lottieNm) {
    var lottieAn = "assets/json/$lottieNm.json";
    return lottieAn;
  }

 //get lottie assets as static variable
  static String  lottieSplashMob = lottieAnimPath("splash_mob");
  static String  lotteSplashWeb = lottieAnimPath("splash_web");

}