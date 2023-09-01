import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0,30.0,30.0,30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/close_icon.png',height: 35,),
                Text('Premium',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                SizedBox(height: 35,width: 35,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('The Secrets to be Fluent in English',style: TextStyle(fontSize: 16,
                    color: CupertinoColors.inactiveGray),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Row(
              children: [
                Expanded(
                  child: _buildCategory('assets/images/earth.png', 'Full Access to', 'Pattern Lessons'),
                ),
                Expanded(
                  child: _buildCategory('assets/images/book.png', 'Unlock', 'All Limitations'),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Row(
              children: [
                Expanded(
                  child: _buildCategory('assets/images/topics.png', 'All Topics', 'Available'),
                ),
                Expanded(
                  child: _buildCategory('assets/images/reading.png', 'Personlized', 'Coaching'),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('2021 Special Early Birds Offer' ,style: TextStyle(color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Colors.deepOrange,
            ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('IDR50.000',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25.00),),
              Text('/month',style: TextStyle(color: Colors.black,fontSize: 15.00),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                         decoration: BoxDecoration(
                              color: Colors.teal,
                              border: Border.all(color: Colors.black,width: 2),
                              borderRadius: BorderRadius.circular(50)
                             ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(child: Text('Start 3 Days Free Trial',style: TextStyle(color: Colors.white,fontSize: 16 , fontWeight: FontWeight.bold),)),
                      ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text('View all Plan' ,style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.black,
            ),
            ),
          ),



        ],
      ),
    );
  }

  Container _buildCategory(String image , String text1 , String text2) {
    return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      border: Border.all(color: Colors.black,width: 2)
                    ),
                    margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Image.asset(image ,height: 35,),
                      ),
                      Text(text1 ,style: TextStyle(fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0, 0, 30),
                        child: Text(text2 ,style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],

                  ),
                );
  }
}
