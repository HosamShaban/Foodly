import 'package:flutter/cupertino.dart';

class Slide {
  final Image imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: Image.asset('images/j1.png'),
    title: 'All your favorites',
    description: 'Order from the best local restaurants with\n easy, on-demand delivery.'
  ),
  Slide(
    imageUrl: Image.asset('images/j1.png'),
    title: 'Free delivery offers',
    description: 'Free delivery for new customers via Apple\n Pay and others payment methods.'
  ),
  Slide(
    imageUrl:Image.asset('images/j1.png'),
    title: 'Choose your food',
    description: 'Easily find your type of food craving and\n you’ll get delivery in wide range.'
  ),
];