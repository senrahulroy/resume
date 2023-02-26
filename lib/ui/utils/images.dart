
class AssetsImages {
  // Singleton Constructor
  AssetsImages._();

  static String assetImagePath(assetName){
    var nameOfImage ="assets/image/$assetName.jpg";
    return nameOfImage;
  }

  static String mobProfile =assetImagePath("mob");
  static String webProfile =assetImagePath("web");
}