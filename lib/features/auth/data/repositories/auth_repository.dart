

import 'dart:developer';

import 'package:iQA/features/core/path/file_path.dart';

class AuthRepository {
//  late DioClient dioClient;
  // static final Dio _dio = Dio();
  late DioClientForLogin dioClientForLogin;
  //final String _baseUrl = dotenv.env["BASE_URL"]!;
  final String _baseUrl = "";
  static const storage = FlutterSecureStorage();
  AuthRepository() {
    var dio = Dio();
    //dioClient = DioClient(_baseUrl, dio);
    dioClientForLogin = DioClientForLogin(_baseUrl, dio);
  }

  Future<LoginModelClass> userLogin({
    required String username,
    required String password,
  }) async {
    final String domain = await storage.read(key: "domain") ?? "";
    try {
      FormData formData = FormData.fromMap({
        'username': username,
        'password': password,
      });

      final resp = await dioClientForLogin.post("https://$domain/api/login", data: formData);

      LoginModelClass userLoginResponse =
          LoginModelClass.fromJson(jsonDecode(jsonEncode(resp)));
      if (kDebugMode) {
        log("userLoginResponse:$userLoginResponse");
      }
      return userLoginResponse;
    } catch (e) {
      rethrow;
    }
  }
}
