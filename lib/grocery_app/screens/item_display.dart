import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/grocery_app/colors.dart';
import 'package:grocery_app/grocery_app/model/model.dart';
import 'package:grocery_app/grocery_app/screens/detail_page.dart';

class ItemDisplay extends StatefulWidget {
  const ItemDisplay({super.key});

  @override
  State<ItemDisplay> createState() => _ItemDisplayState();
}

class _ItemDisplayState extends State<ItemDisplay> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: foodItem.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

        crossAxisCount: 2,
        mainAxisExtent: 265,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        foodDetail Food = foodItem[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage(food: Food,)));
          },
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey[100],
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25, left: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          Food.image,
                          height: 110,
                          width: 110,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        Food.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(children: [Text(Food.cookingTime,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black26
                          )
                      ),
                        Spacer(),
                        Icon(Icons.star,size: 18,color: Colors.amber,),
                        SizedBox(width: 4,),
                        Text('${Food.rate}',
                        style: TextStyle(color:Colors.black26),)
                      ]
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('\$${Food.price}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 126,top: 8),
                  child: Icon(Icons.favorite_border,size: 22,color: Colors.black26,),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Material(
                    color: primaryColors,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                       bottomRight: Radius.circular(20),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Icon(Icons.add,size: 23,color: Colors.white,),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
