import 'package:flutter/material.dart';
import 'package:grocery_app/grocery_app/colors.dart';

class HeaderPart extends StatefulWidget {
  const HeaderPart({super.key});

  @override
  State<HeaderPart> createState() => _HeaderPartState();
}

int selectIndex = 0;

class _HeaderPartState extends State<HeaderPart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topHeader(),
        SizedBox(height: 30),
        title(),
        SizedBox(height: 20),
        searchBar(),
        SizedBox(height: 18),
        categories(),
      ],
    );
  }

  SizedBox categories() {
    List list = ["All", "Fruits", "Vegetables", "Grocery"];
    return SizedBox(
      height: 35,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                selectIndex = index;
                setState(() {});
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  list[index],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: selectIndex == index ? FontWeight.bold : null,
                    color: selectIndex == index ? primaryColors: Colors.black26
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container searchBar() {
    return Container(
      height: 40,
      width: double.infinity,
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.green[50],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search food',
                hintStyle: TextStyle(color: Colors.black26),

                prefixIcon: Icon(Icons.search, color: primaryColors, size: 25),
              ),
            ),
          ),

          Material(
            color: primaryColors,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                child: Icon(
                  Icons.insert_emoticon_outlined,
                  size: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding title() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi Nabin',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: primaryColors,
            ),
          ),
          Text(
            'Find your food',
            style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Padding topHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          //for menu
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black12,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 35,
                width: 35,
                alignment: Alignment.center,
                child: Icon(Icons.menu_open_outlined, color: Colors.black),
              ),
            ),
          ),
          Spacer(),
          Icon(Icons.location_on, size: 20, color: primaryColors),
          Text(
            'SKT Pak',
            style: TextStyle(fontSize: 15, color: Colors.black38),
          ),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/image.png',
              height: 35,
              width: 37,
            ),
          ),
        ],
      ),
    );
  }
}
