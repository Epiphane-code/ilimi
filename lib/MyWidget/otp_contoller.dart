import 'package:get/get.dart';
import 'package:ilimi/MyWidget/authentification_repo.dart';

class OTPController extends GetxController{
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async{
    var isVerified = await AuthentificationRepo.instance.verifyOTP(otp);
  }
}