class APIEndPoints {

  //application api base Url
  static String baseUrl = 'http://14.194.28.110:9030/';

  ///get Token
  static String getToken = '${baseUrl}commonapi/generateToken';

  ///get Fields
  static String getFields = '${baseUrl}api/allfields';

}