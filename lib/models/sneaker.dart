import 'package:equatable/equatable.dart';

class Sneaker extends Equatable {
  final String name;
  final String price;
  final String image;
  final String type;

  const Sneaker({
    required this.name,
    required this.price,
    required this.image,
    required this.type,
  });

  @override
  List<Object> get props => [name, price, image, type];
}
