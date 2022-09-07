import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nucleio_panda_ecommerce_v2/compnents/restuarent.dart';
import 'package:nucleio_panda_ecommerce_v2/constats/color.dart';
import 'package:nucleio_panda_ecommerce_v2/constats/constants.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/home.dart';
import 'package:nucleio_panda_ecommerce_v2/model/panda_pick_model/pandaPickHelper.dart';
import 'package:nucleio_panda_ecommerce_v2/model/panda_pick_model/pandaPickItemModel.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Location'),
        actions: const [
          Icon(Icons.shopping_bag_outlined),
          SizedBox(
            width: 10,
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Expanded(
                    child: CupertinoTextField(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                  placeholder: "Seach for Grocery Food",
                  prefix: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.search,
                      color: Color(0xffffcc00),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xfff7f7f7),
                      borderRadius: BorderRadius.circular(50)),
                  style: TextStyle(
                      color: Color(0xff707070),
                      fontSize: 12,
                      fontFamily: Regular),
                )),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * .18,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffffcc00),
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image(
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                            image: NetworkImage(
                                'https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg')),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Green Grocery',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontFamily: Bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                      'Order from your favourite\ngroceries and supermarket',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          fontFamily: Medium,
                                          fontSize: 14)),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: MediaQuery.of(context).size.height * .25,
                        decoration: BoxDecoration(
                            color: Color(0xfffed271),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: const [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('assets/grocery.jpg'),
                              ),
                              Positioned(
                                  bottom: 15,
                                  left: 0,
                                  child: Text(
                                    'Fruits',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontFamily: Bold,
                                        fontSize: 18),
                                  )),
                              Positioned(
                                  bottom: 0,
                                  left: 0,
                                  child: Text('Farm Fresh Fruits',
                                      style: TextStyle(
                                          color: blackColor,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          fontFamily: Medium,
                                          fontSize: 14))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * .15,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xffef9fc4),
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('assets/food.jpg'))),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Vegetables',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontFamily: Bold,
                                        fontSize: 18),
                                  ),
                                  Text('Farm Fresh Vegetables',
                                      style: TextStyle(
                                          color: blackColor,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          fontFamily: Medium,
                                          fontSize: 14)),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            height: MediaQuery.of(context).size.height * .1,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xfffff9e5),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Meat',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontFamily: Bold,
                                        fontSize: 18),
                                  ),
                                  Text('High Quality Meat',
                                      style: TextStyle(
                                          color: blackColor,
                                          fontWeight: FontWeight.w500,
                                          height: 1,
                                          fontFamily: Medium,
                                          fontSize: 14)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Recommended Products',
                style: TextStyle(
                    color: Color(0xff323232), fontSize: 15, fontFamily: Bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * .278,
                  child: ListView.builder(
                      itemCount: PandaPickHelper.itemCount,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        PandaPickItemModel model =
                            PandaPickHelper.getStatusItem(index);
                        return RestuarentScreen(
                          name: model.name,
                          image: model.image,
                          remainingTime: model.remaingTime,
                          totalRating: model.totalRating,
                          subTitle: model.subTitle,
                          rating: model.ratting,
                          deliveryTime: model.remaingTime,
                          deliveryPrice: model.deliveryPrice,
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xfffff9e5),
              ),
              child: CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                    'https://media-exp1.licdn.com/dms/image/C5603AQFtuW78eNazIw/profile-displayphoto-shrink_800_800/0/1567442703746?e=2147483647&v=beta&t=N5dGxws3xJIhwPM8w_i4dlX8qLmxznmVykPCTccYHj8'),
              ),
            ),
            ListTile(
              title: const Text('Setting',
                  style: TextStyle(fontFamily: Medium, color: Colors.black)),
              leading: Icon(
                Icons.settings_outlined,
                color: Color(0xffffcc00),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Help center 2',
                  style: TextStyle(fontFamily: Medium, color: Colors.black)),
              leading: Icon(Icons.help_outline, color: Color(0xffffcc00)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('More',
                  style: TextStyle(fontFamily: Medium, color: Colors.black)),
              leading: Icon(Icons.more_horiz, color: Color(0xffffcc00)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sign up or Login in',
                  style: TextStyle(fontFamily: Medium, color: Colors.black)),
              leading: Icon(Icons.login_outlined, color: Color(0xffffcc00)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}