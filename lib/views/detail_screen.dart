import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.black,),
          ),
          title: Text("Details",
          style: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 25,color: Colors.black
          ),),
          actions: [Icon(Icons.favorite, color: Colors.blue,)],
        ),
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding:  EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.red,
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 17, vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text('Mathematics',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),),
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 10,),
                            Text('4.9',
                            style: TextStyle(color: Colors.white, fontSize: 12),),
                            SizedBox(width: 10,
                            child: CircleAvatar(
                              radius: 1.5,
                              backgroundColor: Colors.white,
                            ),),
                            Text('489 review',
                            style: TextStyle(color: Colors.white, fontSize: 12),),
                            SizedBox(width: 10,
                            child: Icon(Icons.arrow_forward_ios, size: 10,color: Colors.white,))

                          ],
                        ),
                      ],
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      color: Colors.amber,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 13, vertical: 6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Fees',
                              style: TextStyle(color: Colors.white, fontSize: 14),),

                            Text('\$ 20',
                              style: TextStyle(color: Colors.white , fontSize: 18,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    )
                  ],
              ),),
            ),
                )),
            SizedBox(height: 4,),
            Expanded(
                flex: 5,
                child: Image.asset('assets/images/photo6323528866307618524 - Copy.jpg',
                height: 100,
                fit: BoxFit.fill,)),
            SizedBox(height: 4,),
            Expanded(flex: 1,child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Object',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,),),
                  Text('View all',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,),)
                ],
              ),
            )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding:  EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Image.asset('assets/images/photo6323528866307618524 - Copy (5).jpg'),
                        Padding(
                          padding:  EdgeInsets.only(top: 22, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Order of Operations',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                              Text('234 reviews',
                              style: TextStyle(color: Colors.grey, fontSize: 13),)
                            ],
                          ),
                        ),
                        SizedBox(width: 80,),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.red.shade300,
                          child: Icon(Icons.arrow_right_rounded, size: 30,),
                        )
                      ],
                    )
                  ),
                )),
            Expanded(flex: 2,child: Padding(
              padding:  EdgeInsets.only(left: 10, right: 10),
              child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Image.asset('assets/images/photo6323528866307618524 - Copy (5).jpg'),
                      Padding(
                        padding:  EdgeInsets.only(top: 22, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order of Operations',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                            Text('234 reviews',
                              style: TextStyle(color: Colors.grey, fontSize: 13),)
                          ],
                        ),
                      ),
                      SizedBox(width: 80,),
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.red.shade300,
                        child: Icon(Icons.arrow_right_rounded, size: 30,),
                      )
                    ],
                  )
              ),
            )),
            Expanded(
                flex: 2,
                child: Padding(
              padding:  EdgeInsets.only(left: 10, right: 10),
              child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  color: Colors.blue,
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Icon(Icons.lock),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 1, left: 10),
                        child:  Text('Unlock Course Now',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),),
                      ),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios, size: 20,color: Colors.grey,),
                          Icon(Icons.arrow_forward_ios, size: 20,color: Colors.grey.shade300,),
                          Icon(Icons.arrow_forward_ios, size: 20,color: Colors.white,)
                        ],
                      ),

                    ],
                  )
              ),
            )),
          ],
        ),
      ),
    );
  }
}
