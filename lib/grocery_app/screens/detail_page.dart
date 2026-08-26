import 'package:flutter/material.dart';
import 'package:grocery_app/grocery_app/colors.dart';
import 'package:grocery_app/grocery_app/model/model.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.food});
  final foodDetail food;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

int quantity = 1;

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColors,
      body: ListView(
        children: [
          SizedBox(height: 3),
          //for detail items header
          detailitemHeader(),
          //for image
          detailImage(),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.food.name,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\$${widget.food.price}',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: primaryColors,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Material(
                        color: primaryColors,
                        borderRadius: BorderRadius.circular(25),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                quantity -= 1;
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            Text(
                              '$quantity',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                quantity += 1;
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      //for rating
                      Icon(Icons.star, size: 18, color: Colors.amber),
                      SizedBox(width: 5),
                      Text(
                        '${widget.food.rate}',
                        style: TextStyle(color: Colors.black38),
                      ),
                      //for ckal
                      Spacer(),
                      Icon(
                        Icons.fiber_manual_record,
                        size: 18,
                        color: Colors.red,
                      ),
                      SizedBox(width: 3),
                      Text(
                        '${widget.food.kcal}kcal',
                        style: TextStyle(color: Colors.black),
                      ),
                      //for cooking time
                      Spacer(),

                      Icon(Icons.watch_later, size: 18, color: Colors.amber),
                      SizedBox(width: 5),
                      Text(
                        widget.food.cookingTime,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  //for description
                  SizedBox(height: 20),
                  Text(
                    widget.food.description,
                    style: TextStyle(fontSize: 18, color: Colors.black38),
                  ),
                  SizedBox(height: 48,),
                  //for add to cart button
                  Material(
                    color: primaryColors,
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text('Add to Cart',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox detailImage() {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(250),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green[400]!,
                    blurRadius: 15,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(250),
                child: Image.asset(
                  widget.food.image,
                  height: 190,
                  width: 190,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding detailitemHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Material(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(10),
            child: BackButton(color: Colors.white),
          ),
          Spacer(),
          Text(
            'Detail Food',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Spacer(),
          Material(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.favorite_border,
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
}
