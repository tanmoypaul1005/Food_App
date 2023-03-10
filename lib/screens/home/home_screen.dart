import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "Home",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          backgroundColor: Color(0xffd6d382),
          actions: [
            CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xffd6d382),
              child: IconButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         Search(search: productProvider.gerAllProductSearch),
                  //   ),
                  // );
                },
                icon: const Icon(
                  Icons.search,
                  size: 17,
                  // color: textColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => ReviewCart(),
                  //   ),
                  // );
                },
                child: const CircleAvatar(
                  backgroundColor: Color(0xffd6d382),
                  radius: 15,
                  child: Icon(
                    Icons.shop,
                    size: 17,
                    // color: textColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi0Xg-k622Sbztlrb-L1o1CAla3zCbVc2lUw&usqp=CAU'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        // color: Colors.red,
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.only(right: 120, bottom: 10),
                            child: Container(
                                height: 50,
                                width: 100,
                                decoration: const BoxDecoration(
                                  color: Color(0xffd1ad17),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                  ),
                                ),
                                child: const Center(
                                    child: Text(
                                  "Vegi",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                            color: Colors.green,
                                            blurRadius: 10,
                                            offset: Offset(3, 3))
                                      ]),
                                ))),
                          ),
                          Text(
                            '30% Off',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.green[100],
                                fontWeight: FontWeight.bold),
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'On all vegetables products',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                      )),
                  Expanded(child: Container()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Herbs Seasonings"), Text("View All")],
              ),
            )
          ],
        ));
  }
}
