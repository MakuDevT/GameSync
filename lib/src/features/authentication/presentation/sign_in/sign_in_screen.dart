import 'package:firebase_auth/firebase_auth.dart';
import 'package:gamesync/src/common/google_sign_in_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

import 'package:gamesync/src/common/theme_text.dart';

class CustomSignInScreen extends StatelessWidget {
  const CustomSignInScreen({super.key});
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    print('>>1');
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    print('>>2');
    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    print('>>3');
    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    print('>>4');
    // Once signed in, return the UserCredential
    print('>>>>>>>>>>>>>>>>$credential');
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.066,
          right: MediaQuery.of(context).size.width * 0.066,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'GAMESYNC',
              style: TextStyle(
                color: Color(0XFFDD5147),
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.025),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0XFFDD5147),
                          width: MediaQuery.of(context).size.width * 0.0025,
                        ),
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.017,
                        )),
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          buildCustomTextSpan('DISCOVER ', 22, FontWeight.w700,
                              const Color(0XFFFEFBFB)),
                          buildCustomTextSpan('ENDLESS \n GAMING', 32,
                              FontWeight.w700, const Color(0XFFDD5147)),
                          buildCustomTextSpan(' COMPANIONSHIP. \n', 22,
                              FontWeight.w700, const Color(0XFFFEFBFB)),
                          buildCustomTextSpan(' YOUR PERFECT', 22,
                              FontWeight.w700, const Color(0XFFFEFBFB)),
                          buildCustomTextSpan(' GAMING\nBUDDY', 32,
                              FontWeight.w700, const Color(0XFFDD5147)),
                          buildCustomTextSpan(' IS JUST A SWIPE \nAWAY!', 22,
                              FontWeight.w700, const Color(0XFFFEFBFB)),
                        ])),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05),
              width: double.infinity,
              child: GoogleSignInButton(onPressed: signInWithGoogle),
            ),
          ],
        ),
      ),
    );
  }
}
