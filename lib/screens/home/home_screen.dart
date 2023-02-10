import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color:Colors.black),
        title: Text("Home", style: TextStyle(color: Colors.black, fontSize: 17),),
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
              icon: Icon(
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
              child: CircleAvatar(
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
    );
  }
}
