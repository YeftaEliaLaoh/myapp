import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman Utama",
    home: Halamancarousell(),
  ));
}

class Halamancarousell extends StatelessWidget {
  const Halamancarousell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Carousel"),
        ),
        body: CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            pauseAutoPlayOnTouch: true,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(color: Colors.amber),
                    child: Text(
                      'text $i',
                      style: const TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        ));
  }
}
