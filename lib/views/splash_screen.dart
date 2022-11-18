import 'package:educationapp/views/tabbar_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade600,
        body: Column(
         // crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Center(
              child: CircleAvatar(
                radius: 200,
                backgroundColor: Colors.blue.shade300,
                child: CircleAvatar(
                  radius: 172,
                  backgroundColor: Colors.blue.shade400,
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 145,
                    child: Image.asset('assets/images/photo6323528866307618524_-_Copy__3.png',
                      height: 160,
                      fit: BoxFit.fill,),
                  ),
                ),
              )
            ),
            SizedBox(
              width: 240,
              child: Text('Learn anything anytime anywhere',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 27, color: Colors.white, fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 270,
              child: Text('Online Learning is education that takes place over the internet',
                maxLines: 2,
                strutStyle: StrutStyle(height: 1.4),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w400),),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  TabBarScreen()),
                );
              },
              child: Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Center(
                  child: Text('Start Now',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26, color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
