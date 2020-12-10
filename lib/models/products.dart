class Product {
  final int id, price;
  final String title, description, image;

  Product({this.id, this.price, this.title, this.description, this.image});
}

List<Product> products = [
  Product(
    id: 1,
    price: 56,
    title: 'clasicc leather arm chair',
    image: 'assets/images/Item_1.png',
    description: 'Lorem ipsum dolor sit amet',
  ),
  Product(
    id: 2,
    price: 68,
    title: 'clasicc leather arm chair',
    image: 'assets/images/Item_2.png',
    description: 'Lorem ipsum dolor sit amet',
  ),
  Product(
    id: 3,
    price: 39,
    title: 'clasicc leather arm chair',
    image: 'assets/images/Item_3.png',
    description: 'Lorem ipsum dolor sit amet',
  )
];
