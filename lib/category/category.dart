import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryProducts(
            press: () {},
            image: 'assets/products/categoryMan.png',
            text: 'Mens',
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: 'assets/products/categoryMan.png',
            text: 'Mens',
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: 'assets/products/categoryMan.png',
            text: 'Mens',
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: 'assets/products/categoryMan.png',
            text: 'Mens',
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({
    Key? key,
    required this.image,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String image, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: press,
        child: Container(
          child: Chip(
              label: Row(
            children: [
              Text(text),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                image,
                height: 40,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
