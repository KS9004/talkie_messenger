// import 'dart:convert';
// import 'dart:io';
//
// import 'package:http/http.dart' as http;
// import 'package:talkie/models/usermodel.dart';
//
//
// Future<List<User>> fetchUser()async{
//   final response = await http.get('https://3.142.48.57:3000/users');
//   if (response.statusCode == 200){
//
//     var respons = jsonDecode(response.body) as List;
//     print(respons);
//     List<User> user = respons.map((e) => User.fromJson(e)).toList();
//     return user;
//
//
//   }else{
//     throw Exception("Failed to load");
//   }
// }
// class MyHttpOverrides extends HttpOverrides{
//   @override
//   HttpClient createHttpClient(SecurityContext context){
//     return super.createHttpClient(context)
//       ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
//   }
// }