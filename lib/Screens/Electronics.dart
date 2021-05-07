import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecom/constants.dart';

class ElectronicsStore extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor:kBackgroundColor,
        appBar: AppBar(
          title : Text('Electronics'), titleTextStyle: TextStyle(fontSize: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
        padding: const EdgeInsets.only(left: 20),
    child: Icon(
    Icons.menu,
    color: kPrimaryColor,
    size: 35,
    ),
    ),),
        body: SingleChildScrollView(
                 physics: BouncingScrollPhysics(),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("10 types of Products Found..... ",
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          )),
                    ],
                  ),
                ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  GestureDetector(
                      child:
              Container(
              //child: Center(child: Text('Laptop'),),
          height: 190.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: kPrimaryColor,
              image: DecorationImage(
                  image: AssetImage(
                      'assets/laptop.png'
                  ),
                  fit: BoxFit.fill
              )
          ),
        ),
                  ),
                  SizedBox(height: 0,),
                  Text(
                    "HP Laptop - ₹ 60000 ",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                      height: 40),
                  GestureDetector(
                    child:
                    Container(
                      //child: Center(child: Text('Laptop'),),
                      height: 190.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kPrimaryColor,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/iphone.png'
                              ),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 0,),
                  Text(
                    "IPhone - ₹ 70000 ",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 40),
                  GestureDetector(
                    child:
                    Container(
                      //child: Center(child: Text('Laptop'),),
                      height: 190.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kPrimaryColor,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/laptop.png'
                              ),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    child:
                    Container(
                      //child: Center(child: Text('Laptop'),),
                      height: 190.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kPrimaryColor,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/laptop.png'
                              ),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),


        ],),),);

  }
}