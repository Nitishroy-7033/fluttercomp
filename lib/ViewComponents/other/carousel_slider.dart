import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(title: Text('Carousel Slider')),
      body: CarouselSlider(
        options: CarouselOptions(height: 200, autoPlay: true),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (context) => Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(child: Text('Slide $i', style: TextStyle(fontSize: 24, color: Colors.white))),
            ),
          );
        }).toList(),
      ),
    );
  }
}
