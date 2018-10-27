import 'package:flutter/material.dart';
import 'distance_page.dart';
import 'quadratic_page.dart';
import 'pythagorean_page.dart';
import 'arithmetic_page.dart';
import 'geometric_page.dart';

class FormulaButton extends StatelessWidget {
  String buttonText;

  /*static MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: <String>['E54D20723992CFC03380BA590CD8F60A'],
  );

  InterstitialAd interstitialAd;
  */

  FormulaButton(this.buttonText);

  @override
  Widget build(BuildContext context) {
    adSetUp();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: RaisedButton(
        padding: const EdgeInsets.all(15.0),
        child: Text(buttonText),
        onPressed: () {
          switch (buttonText) {
            case 'Distance Formula':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DistancePage()),
              );
              break;
            case 'Quadratic Formula':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuadraticPage()),
              );
              break;
            case 'Pythagorean Theorem':
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PythagoreanPage()));
              break;
            case 'Arithmetic Sum':
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ArithmeticPage()));
              break;
            case 'Geometric Sequence':
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GeometricPage()));
              break;
            case 'View Interstitial Ad':
              //interstitialAd..show();
              break;
          }
        },
      ),
    );
  }

  void adSetUp() {
    /*if(Platform.isAndroid) {
      FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);
    }
    interstitialAd = InterstitialAd(
        adUnitId: InterstitialAd.testAdUnitId,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {});
    interstitialAd..load();
  */}
}
