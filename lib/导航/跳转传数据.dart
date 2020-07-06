import 'package:flutter/material.dart';

class Product {
  final String title; //标题
  final String description; //描述
  final String image; //描述
  Product(this.title, this.description,this.image);
}

void main(List<String> args) {
  runApp(MaterialApp(
    title: '',
    home: ProductList(
        products:
            List.generate(20, (index) => Product('标题 $index', '描述 $index','http://cc.cocimg.com/api/uploads/200623/81fcc4c8c9d7f59316b9bf7ed785f264.png'))),
  ));
}

class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key, @required this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('列表')),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index].title+products[index].description),
              leading: Image.network(products[index].image,width: 40.0,height: 40.0,alignment: Alignment.center,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (contex)=>ProductDetail(product: products[index])));
              },
            );
          },
        ));
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({Key key,@required this.product}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text(product.title)),
      body: Center(
        child:Text('${product.description}'),
      ),
    );
  }
}