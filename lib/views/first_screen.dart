import 'package:flutter/material.dart';

import 'detail_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hello Rishib',
                          style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                          Text('Find your course',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        ],
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom: 30),
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Icon(Icons.search,color: Colors.white,),
                          ),
                        ),
                      )
                    ],
                  )),
              Expanded(
                  flex: 4,
                  child: Card(
                   // color: Colors.blue.shade300,
                    child: Container(
                      padding: EdgeInsets.only(left: 19),
                      decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient:  LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.8, 1),
                            colors: [
                              Colors.indigo.shade500,
                              Colors.blue,
                            ], tileMode: TileMode.mirror,
                          )
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                //SizedBox(height: 15,),
                                Text('60% 0ff',
                                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),),
                                //SizedBox(height: 6,),
                                Text('Feb 14 - Mar 20',
                                  style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),),
                                SizedBox(height: 6,),
                                Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                                  color: Colors.amber,
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                                    child: Text('Join Course',
                                    style: TextStyle(),),
                                  ),
                                )
                              ],
                            ),
                            Image(image: AssetImage('assets/images/schoolbags.png',),height: 250,)
                            // Image.asset('assets/images/schoolbags.png',
                            // height: 290,
                            // fit: BoxFit.fill,)
                          ],
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subject',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,),),
                        Text('See all',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,),)
                      ],
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  DetailScreen()),
                        );
                      },
                        child: Container(
                          width: w/2.6,
                          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                              gradient:  LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.8, 1),
                                colors: [
                                  Colors.white,
                                  Colors.white,
                                ], tileMode: TileMode.mirror,
                              )
                          ),
                         // color: Colors.white.withOpacity(0.9),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/images/photo6323528866307618524 - Copy (5).jpg',height: 80,
                              fit: BoxFit.fill,),
                              Text('Mathematics', style: TextStyle(
                                fontWeight: FontWeight.bold),),
                              Text('\$10/months',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, color: Colors.yellow,size: 13,),
                                  SizedBox(width: 5,),
                                  Text('4.9(689 reviews)',
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),)
                                ],
                              )
                            ],
                          ),

                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  DetailScreen()),
                          );
                        },
                        child: Container(
                          width: w/2.6,
                          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient:  LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.8, 1),
                                colors: [
                                  Colors.white,
                                  Colors.white,
                                ], tileMode: TileMode.mirror,
                              )
                          ),
                          // color: Colors.white.withOpacity(0.9),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/images/photo6323528866307618524 - Copy (4).jpg',height: 80,
                                fit: BoxFit.fill,),
                              Text('Chemistry', style: TextStyle(
                                  fontWeight: FontWeight.bold),),
                              Text('\$10/months',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, color: Colors.yellow,size: 13,),
                                  SizedBox(width: 5,),
                                  Text('4.9(689 reviews)',
                                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),)
                                ],
                              )
                            ],
                          ),

                        ),
                      ),
                    ],
                  )
                  ),
              SizedBox(height: 15,),
              Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  DetailScreen()),
                          );
                        },
                        child: Container(
                          width: w/2.6,
                          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient:  LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.8, 1),
                                colors: [
                                  Colors.white,
                                  Colors.white,
                                ], tileMode: TileMode.mirror,
                              )
                          ),
                          // color: Colors.white.withOpacity(0.9),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/images/photo6323528866307618524 - Copy (6).jpg',height: 80,
                                fit: BoxFit.fill,),
                              Text('Biology', style: TextStyle(
                                  fontWeight: FontWeight.bold),),
                              Text('\$10/months',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, color: Colors.yellow,size: 13,),
                                  SizedBox(width: 5,),
                                  Text('4.9(689 reviews)',
                                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),)
                                ],
                              )
                            ],
                          ),

                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  DetailScreen()),
                          );
                        },
                        child: Container(
                          width: w/2.6,
                          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient:  LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.8, 1),
                                colors: [
                                  Colors.white,
                                  Colors.white,
                                ], tileMode: TileMode.mirror,
                              )
                          ),
                          // color: Colors.white.withOpacity(0.9),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/images/photo6323528866307618524 - Copy (7).jpg',height: 80,
                                fit: BoxFit.fill,),
                              Text('Language', style: TextStyle(
                                  fontWeight: FontWeight.bold),),
                              Text('\$10/months',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, color: Colors.yellow,size: 13,),
                                  SizedBox(width: 5,),
                                  Text('4.9(689 reviews)',
                                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),)
                                ],
                              )
                            ],
                          ),

                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
