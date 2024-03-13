import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RegisterUserProvider extends ChangeNotifier {
  // late BuildContext buildContext;
  // final _myBox = Hive.box('userBox');
  //
  // // RegisterUserModel commonResponse = RegisterUserModel();
  // Future registerUser({
  //   required BuildContext context,
  //   required String name,
  //   required String email,
  //   required String password,
  //   required String phone,
  //   required String countryCode,
  //   required String pnumber,
  // }) async {
  //   try {
  //     var connectivity = await (Connectivity().checkConnectivity());
  //     if (connectivity == ConnectivityResult.none) {
  //       // Consider showing a toast or dialog to notify the user about the lack of internet connectivity
  //       ApplicationToast.getWarningToast(
  //           durationTime: 3, heading: "No Internet Connection");
  //     } else {
  //       http.Response response =
  //       await http.post(Uri.parse(ApiService.registerUser),
  //           headers: {
  //             "Content-Type": "application/json",
  //           },
  //           body: jsonEncode(
  //             {
  //               "username": name,
  //               "email": email,
  //               "password": password,
  //               "phone": phone,
  //               "ccode": countryCode,
  //               "pnumber": pnumber,
  //             },
  //           ));
  //
  //       if (kDebugMode) {
  //         print(response.statusCode);
  //         print(response.body);
  //       }
  //
  //       if (response.statusCode == 201) {
  //         commonResponse =
  //             RegisterUserModel.fromJson(jsonDecode(response.body));
  //
  //         ApplicationToast.getSuccessToast(
  //             durationTime: 3, heading: "User Registered Successfully");
  //
  //         _myBox.put('phone', phone);
  //         _myBox.put('pass', password);
  //         _myBox.put('email', email);
  //         _myBox.put('username', name);
  //         _myBox.put('country_code', countryCode);
  //         _myBox.put('number', pnumber);
  //         _myBox.put('authToken', commonResponse.token);
  //
  //         Navigator.of(context).pushNamedAndRemoveUntil(
  //             '/setUp', (Route<dynamic> route) => false);
  //       } else if (response.statusCode == 409) {
  //         // Handle the case where username, email, or phone already exists
  //         Map<String, dynamic> jsonResponse = json.decode(response.body);
  //         String errorMessage = jsonResponse["error"] ??
  //             "Username, email, or phone already exists";
  //
  //         ApplicationToast.getErrorToast(
  //             durationTime: 3, heading: errorMessage);
  //
  //         // Optionally, navigate the user to the login page or show a dialog
  //       } else {
  //         // Handle other errors
  //         Map<String, dynamic> jsonResponse = json.decode(response.body);
  //         String msgValue =
  //             jsonResponse["error"] ?? "An error occurred during registration.";
  //
  //         ApplicationToast.getErrorToast(durationTime: 3, heading: msgValue);
  //       }
  //     }
  //   } catch (e) {
  //     log(e.toString());
  //     ApplicationToast.getWarningToast(
  //         durationTime: 3, heading: "An unexpected error occurred.");
  //   }
  // }
}
