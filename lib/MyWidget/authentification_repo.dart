import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:ilimi/MyWidget/my_botton_navigation_bar.dart';
import 'package:ilimi/MyWidget/register_failure.dart';
import 'package:ilimi/MyWidget/welcome.dart';

class AuthentificationRepo extends GetxController {
  static AuthentificationRepo get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;


  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll( () => const Welcome()) : Get.offAll(() => const MyBottonNavigationBar());
  }

  Future<void> phoneAuthentification(String phoneNumber) async {
  await _auth.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    verificationCompleted: (credential) async {
      await _auth.signInWithCredential(credential);
    },
    verificationFailed: (e) {
      if (e.code == 'invalid-phone-number') {
        Get.snackbar("Error", "Le numéro de téléphone est invalide.");  
      } else {
        Get.snackbar("Error", "Une erreur s'est produite lors de la vérification du numéro de téléphone.");
      }
    },
    codeSent: (verificationId, resendToken) {
      this.verificationId.value = verificationId;
    },
    codeAutoRetrievalTimeout: (verificationId) {
      this.verificationId.value = verificationId;
    }
    );
}

  Future<bool> verifyOTP(String otp) async{
    var credentials = await _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: this.verificationId.value, smsCode: otp));

    return credentials.user != null ? true : false;
  }
  

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("Error creating account", e.toString());
    }
  }

  Future<void> loginUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => const MyBottonNavigationBar()) : Get.offAll(() => const Welcome());
    } on FirebaseAuthException catch (e) {
      final errorExceptionMessage = RegisterFailure.code(e.code);
      print('FirebaseAuthException - ${errorExceptionMessage.toString()}');
    } catch (_) {
      const errorExceptionMessage = RegisterFailure();
      print('Unknown error - ${errorExceptionMessage.toString()}');
      throw errorExceptionMessage;
    }
  }

  Future<void> logout() async => await _auth.signOut();
  
}