import 'package:ecom/Screens/Clothings.dart';
import 'package:flutter/material.dart';
import 'package:ecom/constants.dart';
import 'package:ecom/Screens/Electronics.dart';
import 'package:ecom/Screens/Clothings.dart';
import 'package:ecom/Screens/Groceries.dart';
import 'package:ecom/Screens/Kitchen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String userName = "Hello Mate! ";
  String avatar = "A";
  DateTime currentTime = DateTime.now();
  List<String> greetingList = [
    "Good Morning",
    "Good AfterNoon",
    "Good Evening",
    "Good Night"
  ];
  late String greetings;
  void getGreeting() {
    if (currentTime.hour < 12) {
      greetings = greetingList[0];
    } else if (currentTime.hour >= 12 && currentTime.hour < 18) {
      greetings = greetingList[1];
    } else if (currentTime.hour >= 18 && currentTime.hour < 20) {
      greetings = greetingList[2];
    } else if (currentTime.hour >= 20 && currentTime.hour < 24) {
      greetings = greetingList[3];
    }
  }
  @override
  void initState() {
   // _list = CardData.cardDataList;

    getGreeting();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor:kBackgroundColor,
      appBar: AppBar(
        title : Text('Our Store'), titleTextStyle: TextStyle(fontSize: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Icon(
            Icons.menu,
            color: kPrimaryColor,
            size: 35,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: kPrimaryColor,
              child: Text(avatar),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(greetings,
                      style: TextStyle(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  Text(userName,
                      style: TextStyle(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  Text("Let's Start Shopping",
                      style: TextStyle(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(

               crossAxisAlignment: CrossAxisAlignment.start,
               children: [

                 GestureDetector(
                     child: Container(
                       height: 250.0,
                       width: 500.0,
                       decoration: BoxDecoration(
                           border: Border.all(
                             color: kPrimaryColor,
                             width: 8,
                           ),
                         image: DecorationImage(
                           image: AssetImage(
                               'assets/electronics.jpg') ,
                           fit: BoxFit.cover,

                         ),
                         shape: BoxShape.rectangle,

                       ),
                       child: Align(
                           alignment: Alignment.bottomLeft , child: Text("Electronics ", style: TextStyle(fontSize: 40, backgroundColor: kPrimaryColor ))
                       ),
                     ),onTap:(){
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => ElectronicsStore())
                   );
                 }
                 ),
                 SizedBox(
                     height: 40),



                 GestureDetector(
                     child: Container(
                   height: 250.0,
                   width: 500.0,
                   decoration: BoxDecoration(
                     border: Border.all(
                       color: kPrimaryColor,
                       width: 8,
                     ),
                     image: DecorationImage(
                       image: AssetImage(
                           'assets/clothing.jpg') ,
                       fit: BoxFit.cover,
                     ),
                     shape: BoxShape.rectangle,

                   ),
                   child: Align(
                       alignment: Alignment.bottomLeft , child: Text("Clothings ", style: TextStyle(fontSize: 40, backgroundColor: kPrimaryColor ))
                   ),
                 ),onTap:(){
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => ClothingStore())
                   );
                 }
                 ),

                 SizedBox(height: 40),
                 GestureDetector(
                     child: Container(
                       height: 250.0,
                       width: 500.0,
                       decoration: BoxDecoration(
                         border: Border.all(
                           color: kPrimaryColor,
                           width: 8,
                         ),
                         image: DecorationImage(
                           image: AssetImage(
                               'assets/grocery.jpg') ,
                           fit: BoxFit.cover,
                         ),
                         shape: BoxShape.rectangle,

                       ),
                       child: Align(
                           alignment: Alignment.bottomLeft ,  child: Text("Groceries ", style: TextStyle(fontSize: 40, backgroundColor: kPrimaryColor ))
                       ),
                     ),onTap:(){
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => GroceryStore())
                   );
                 }
                 ),
                 SizedBox(height: 40),
                 GestureDetector(
                     child: Container(
                       height: 250.0,
                       width: 500.0,
                       decoration: BoxDecoration(
                         border: Border.all(
                           color: kPrimaryColor,
                           width: 8,
                         ),
                         image: DecorationImage(
                           image: AssetImage(
                               'assets/Kitchen.jpg') ,
                           fit: BoxFit.cover,
                         ),
                         shape: BoxShape.rectangle,

                       ),
                       child: Align(
                           alignment: Alignment.bottomLeft ,child: Text("Kitchen ", style: TextStyle(fontSize: 40, backgroundColor: kPrimaryColor ))
                       ),
                     ),onTap:(){
                   Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => KitchenStore())
                   );
                 }
                 )
               ],
            ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(

        shape: const CircularNotchedRectangle(),
        color: Color(0xFF0C9869),
        elevation: 15,
        child: Container(
          height: 50,
        ),
      )
    );
  }}