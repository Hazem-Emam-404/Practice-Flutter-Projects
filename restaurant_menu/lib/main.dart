import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_menu/category.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
  // runApp(MyApp());
}

List<Category> categories = [
  Category(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR_aj4q61pWVHZXKjcxc_ffZ9sPG0D24f03A&s",
    title: "Appetizers",
    description:
        "Start your meal with a selection of light and flavorful dishes.",
  ),
  Category(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpt51FmFvqaOrx50pMj4ADF1MaJB-xxHBzgQ&s",
    title: "Main Courses",
    description:
        "Explore our diverse range of hearty and satisfying main dishes.",
  ),
  Category(
    image:
        "https://www.brit.co/media-library/3-ingredient-dessert-recipes.jpg?id=23305200&width=400&height=493",
    title: "Desserts",
    description: "Indulge in our sweet treats, perfect for ending your meal.",
  ),
  Category(
    image:
        "https://demitris.com/cdn/shop/articles/Untitled_design_-_2025-04-17T130659.845.png?v=1744916832",
    title: "Drinks",
    description:
        "Complement your meal with our selection of refreshing beverages.",
  ),
  Category(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZyukz4gg7god4Za_BwstWhBrcDteVCaWQIQ&s",
    title: "Pasta",
    description: "Start testing out pasta, it's so delicious.",
  ),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Menu App",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF211212), brightness: Brightness.dark),
        fontFamily: "Plus Jakarta Sans",
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF211212),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        textTheme: GoogleFonts.plusJakartaSansTextTheme(),
        scaffoldBackgroundColor: Color(0xFF211212),
      ),
      home: HomePage()
    );
  }
}

class Category_item extends StatelessWidget {
  Category cat;
  Category_item({required this.cat});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.cat.title ?? "",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  this.cat.description ?? "",
                  style: TextStyle(
                    color: Color(0xFFC79194),
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                  softWrap: true,
                ),
                SizedBox(height: 16),
                Container(
                  width: 84,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Color(0xFF472426),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "View",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 2),
                      Icon(Icons.arrow_forward, size: 18),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 2),
          Container(
            width: 130,
            height: 114,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(this.cat.image ?? ""),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int currentIndex = 4;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.menu), label: "Menu"),
          NavigationDestination(icon: Icon(Icons.settings), label: "Setting"),

        ],
        selectedIndex: currentIndex,
        onDestinationSelected: (int value){
          print("hello");
        },
      ),
      appBar: AppBar(
        title: Text("Menu"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_sharp, color: Colors.white, size: 24),
        backgroundColor: Color(0xFF211212),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 20,
              bottom: 12,
            ),
            child: Text(
              "Categories",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.separated(
            itemCount: categories.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Category_item(cat: categories[index]);
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Color(0xFF472426),
                thickness: 1,
                height: 1,
                indent: 16,
                endIndent: 16,
              );
            },
          ),
        ],
      ),
    );
  }
}