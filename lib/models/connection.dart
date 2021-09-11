import 'package:facebook_clone/resources/images.dart';

class Connection {
  final String name;
  final String image;
  //...
  Connection(this.name, this.image);

  // this is only because chat is just UI clone
  static List<Connection> connections = [
    Connection('Mohamed Mansour', Images.randomAvatar()),
    Connection('Mohamed Sobhy', Images.randomAvatar()),
    Connection('Ahmed Fathi', Images.randomAvatar()),
    Connection('Fady Girgis', Images.randomAvatar()),
    Connection('Mahmoud Afify', Images.randomAvatar()),
    Connection('Remon Malak', Images.randomAvatar()),
    Connection('Ahmed Ali', Images.randomAvatar()),
    Connection('Mohamed Ahmed', Images.randomAvatar()),
    Connection('Mohamed Araby', Images.randomAvatar()),
    Connection('Eslam Amer', Images.randomAvatar()),
    Connection('Hady Salah', Images.randomAvatar()),
    Connection('Mostafa Zaky', Images.randomAvatar()),
    Connection('Mahmoud Zaky', Images.randomAvatar()),
    Connection('Eslam Elsarawy', Images.randomAvatar()),
    Connection('Mahmoud Telp', Images.randomAvatar()),
    Connection('Mohamed Mahmoud', Images.randomAvatar()),
    Connection('Sherif Eltony', Images.randomAvatar()),
    Connection('Mohamed Keed', Images.randomAvatar()),
    Connection('Mohamed Ahraf', Images.randomAvatar()),
    Connection('Mahmoud Rawy', Images.randomAvatar()),
    Connection('Eslam Shalan', Images.randomAvatar()),
    Connection('Eslam Emam', Images.randomAvatar()),
    Connection('Mohamed Zakaria', Images.randomAvatar()),
    Connection('Mohamed Gad', Images.randomAvatar()),
    Connection('Ayman Hamed', Images.randomAvatar()),
    Connection('Ahmed Khaled', Images.randomAvatar()),
    Connection('Ahmed Saber', Images.randomAvatar()),
    Connection('Mohamed Ashour', Images.randomAvatar()),
    Connection('Mahmoud Gemy', Images.randomAvatar()),
    Connection('Majid Shady', Images.randomAvatar()),
  ];
}
