import 'package:flutter/material.dart';

class MyTextStyle {
  static TextStyle titleStyle = TextStyle(
      color: Color(0xFF00A7FF),
      fontSize: 32,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700);
}

class MyCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              child: Image.asset('resources/images/image_profile_pic.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Parth Adroja',
              textAlign: TextAlign.center,
              style: MyTextStyle.titleStyle,
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    color: Color(0xFFB4B4B4), fontSize: 20, letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              width: 200,
              height: 1.5,
              color: Color(0xFFB4B4B4),
            ),
            SizedBox(
              height: 32,
            ),
            CardView(Icon(Icons.alternate_email), 'padroja@mobiquityinc.com'),
            SizedBox(
              height: 16,
            ),
            CardView(Icon(Icons.phone), '9999988888'),
          ],
        )),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView(this.leading, this.title);

  final Widget leading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Colors.white),
      margin: EdgeInsets.symmetric(horizontal: 40),
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            leading,
            SizedBox(
              width: 8,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
