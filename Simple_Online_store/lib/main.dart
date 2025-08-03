import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.indigo,
          title: Text(
            "Online Store",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Icon(Icons.store, color: Colors.white, size: 30),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.shopping_cart, color: Colors.white),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: 0,
          onDestinationSelected: (value) => print(value),
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.shopify), label: "Shopping"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
            NavigationDestination(icon: Icon(Icons.settings), label: "Setting"),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      "https://m.media-amazon.com/images/I/81DatISvilL._AC_SL1500_.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 100,

                      padding: EdgeInsets.all(10),
                      color: Color(0xFFeceef4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Gloves For Gym",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Icon(Icons.favorite_border),

                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            "12\$",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Expanded(
                            child: Text(
                              "ihuan Workout Gloves for Men Full-Finger: Weight Lifting for Men, Gym Full Hand Gloves for Weightlifting, Deadlift ",
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      "https://fuelled.in/cdn/shop/files/Fuelled-PlasticShakerBottle.jpg?v=1683942133",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 100,

                      padding: EdgeInsets.all(10),
                      color: Color(0xFFeceef4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Fuelled Shaker Bottle",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),

                              ),
                              Icon(Icons.favorite_border)
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            "10\$",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: Text(
                                "Meet the Fuelled Shaker Bottle. Made of BPA-free plastic, this shaker is perfect for making protein shakes. Whether at the gym or at home, stay fueled with this convenient and easy-to-use shaker bottle.",
                                softWrap: true,
                                overflow: TextOverflow.ellipsis
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      "https://drmohammedmahmoud.com/cdn/shop/files/removal.ai__tmp-646a52a9addda.png?v=1686073118&width=823",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 100,

                      padding: EdgeInsets.all(10),
                      color: Color(0xFFeceef4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Whey Protein",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                softWrap: true,

                              ),
                              Icon(Icons.favorite_border)
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            "25\$",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: Text(
                                "Meet the Fuelled Shaker Bottle. Made of BPA-free plastic, this shaker is perfect for making protein shakes. Whether at the gym or at home, stay fueled with this convenient and easy-to-use shaker bottle.",
                                softWrap: true,
                                overflow: TextOverflow.ellipsis
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
