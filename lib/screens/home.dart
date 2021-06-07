import 'package:flutter/material.dart';
import 'package:magazine_luiza/models/product.dart';
import 'package:magazine_luiza/provider/products.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ofertas do Dia"),
        leading: Image.asset("assets/images/logo.jpg"),
      ),
      body:
      ListView.separated(
        itemBuilder: builder,
        separatorBuilder: (BuildContext context, int_) {
          return Divider();
        },
        itemCount: listOfProducts.length,
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    Product _product = listOfProducts.elementAt(index);
      return ListTile(
      leading: Image.asset(
        _product.photo,
      ),
      title: Column(
        children: [
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _product.name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            _product.description,
            style: TextStyle(
              height: 2.5,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            _product.value,
            style: TextStyle(
              height: 2,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _product.valueParcelated,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.lightBlue,
                ),
              ),
              IconButton(
                icon: Icon(
                  (_product.isFavorite)
                      ? Icons.favorite
                      : Icons.favorite_border,
                ),
                color: Colors.red,
                iconSize: 18,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
        ],
      ),
    );
  }
}
