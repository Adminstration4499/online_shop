import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/Pages/constants.dart';

class RecentProducts extends StatelessWidget {
  final productList = [
    {
      'name': 'white shirt',
      'image': 'assets/products/man/men1.png',
      'price': 50,
      'disc': 'Material: Georgette; Comfortable and Breathable to Wear',
    },
    {
      'name': 'white shirt',
      'image': 'assets/products/man/men2.png',
      'price': 50,
      'disc': 'Material: Georgette; Comfortable and Breathable to Wear',
    },
    {
      'name': 'white shirt',
      'image': 'assets/products/man/men3.png',
      'price': 50,
      'disc': 'Material: Georgette; Comfortable and Breathable to Wear',
    },
    {
      'name': 'white shirt',
      'image': 'assets/products/man/men4.png',
      'price': 50,
      'disc': 'Material: Georgette; Comfortable and Breathable to Wear',
    },
    {
      'name': 'white shirt',
      'image': 'assets/products/man/men5.png',
      'price': 50,
      'disc': 'Material: Georgette; Comfortable and Breathable to Wear',
    },
    {
      'name': 'white shirt',
      'image': 'assets/products/man/men6.png',
      'price': 50,
      'disc': 'Material: Georgette; Comfortable and Breathable to Wear',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 0.70),
        itemBuilder: (BuildContext context, int index) {
          return RecentSignleProduct(
            recent_signle_prod_disc: productList[index]['disc'],
            recent_signle_prod_image: productList[index]['image'],
            recent_signle_prod_price: productList[index]['price'],
            recent_signle_prod_name: productList[index]['name'],
          );
        });
  }
}

class RecentSignleProduct extends StatefulWidget {
  final recent_signle_prod_name;
  final recent_signle_prod_image;
  final recent_signle_prod_price;
  final recent_signle_prod_disc;

  RecentSignleProduct({
    this.recent_signle_prod_name,
    this.recent_signle_prod_image,
    this.recent_signle_prod_price,
    this.recent_signle_prod_disc,
  });

  @override
  State<RecentSignleProduct> createState() => _RecentSignleProductState();
}

class _RecentSignleProductState extends State<RecentSignleProduct> {
  bool isLike = false;
  final Color inactiveColor = Colors.black38;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: kPrimaryColor,
          ),
          child: Image.asset(widget.recent_signle_prod_image),
        ),
        ListTile(
          title: Text(widget.recent_signle_prod_name),
          subtitle: Text('\$${widget.recent_signle_prod_price}'),
          trailing: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),
            child: IconButton(
              icon: Icon(
                isLike ? Icons.favorite : Icons.favorite_border_outlined,
                size: 15,
                color: isLike? Colors.red:inactiveColor,
              ),
              onPressed: () {
                setState(() {
                  isLike = !isLike;
                });
              },
            ),
          ),
        )
      ],
    );
  }
}
