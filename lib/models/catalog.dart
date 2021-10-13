class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "Iphone 12",
      desc: "Apple Iphone 12th",
      price: 999,
      color: "#33505a",
      image: "https://picsum.photos/seed/picsum/200/300"
    ),
  ];
}

class Item {

  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

}