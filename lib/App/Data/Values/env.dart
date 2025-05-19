

class Env {
  Env._privateConstructor();

  static const title = "";
  static const bool isProduction = false;
  



//Dev Test server
  static const baseURL =
  isProduction == true
    
      ? "https://test"
      : "https://test";


  static const imageUrl = Env.isProduction == false ?
  "https://test"
      : "https://test";


}
