import 'package:facebook_clone/resources/images.dart';

class Connection {
  final String name;
  final String image;
  //...
  Connection(this.name, this.image);

  // this is only because chat is just UI clone
  static List<Connection> connections = [
    Connection('Mohamed Mansour', Images.avatar),
    Connection('Mohamed Sobhy', Images.avatar),
    Connection('Ahmed Fathi', Images.avatar),
    Connection('Fady Girgis', Images.avatar),
    Connection('Mahmoud Afify', Images.avatar),
    Connection('Remon Malak', Images.avatar),
    Connection('Ahmed Ali', Images.avatar),
    Connection('Mohamed Ahmed', Images.avatar),
    Connection('Mohamed Araby', Images.avatar),
    Connection('Eslam Amer', Images.avatar),
    Connection('Hady Salah', Images.avatar),
    Connection('Mostafa Zaky', Images.avatar),
    Connection('Mahmoud Zaky', Images.avatar),
    Connection('Eslam Elsarawy', Images.avatar),
    Connection('Mahmoud Telp', Images.avatar),
    Connection('Mohamed Mahmoud', Images.avatar),
    Connection('Sherif Eltony', Images.avatar),
    Connection('Mohamed Keed', Images.avatar),
    Connection('Mohamed Ahraf', Images.avatar),
    Connection('Mahmoud Rawy', Images.avatar),
    Connection('Eslam Shalan', Images.avatar),
    Connection('Eslam Emam', Images.avatar),
    Connection('Mohamed Zakaria', Images.avatar),
    Connection('Mohamed Gad', Images.avatar),
    Connection('Ayman Hamed', Images.avatar),
    Connection('Ahmed Khaled', Images.avatar),
    Connection('Ahmed Saber', Images.avatar),
    Connection('Mohamed Ashour', Images.avatar),
    Connection('Mahmoud Gemy', Images.avatar),
    Connection('Majid Shady', Images.avatar),
  ];
}
