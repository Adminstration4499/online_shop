import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/Pages/constants.dart';

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryProducts(
            press: () {},
            image: 'assets/category/categoryMan.png',
            text: 'Mens',
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: 'assets/category/categoryWoman.png',
            text: 'Womens',
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: 'assets/category/categoryBag.png',
            text: 'Back Packs',
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: 'assets/category/categoryWatch.png',
            text: 'Watchs',
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: 'assets/category/categoryShoes.png',
            text: 'Shoes',
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
            backgroundColor: kPrimaryColor,
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
