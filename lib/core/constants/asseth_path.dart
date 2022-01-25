// ignore_for_file: prefer_final_fields, unused_field

class AssetsPath {
  static AssetsPath _instance = AssetsPath._init();
  AssetsPath._init();
  factory AssetsPath() {
    return _instance;
  }
  
  
  
  //!LOGINPAGE
  final String loginImagePNG = 'assets/images/login.png';
  final String facebookSVG = 'assets/images/facebook.svg';
  final String googleSVG = 'assets/images/google.svg';
  final String spotifySVG = 'assets/images/spotify.svg';
  final String appleSVG = 'assets/images/apple.svg';
  
}