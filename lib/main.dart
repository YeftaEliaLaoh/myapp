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
          items: [
            "https://via.placeholder.com/400/0000FF/808080",
            "https://via.placeholder.com/400/FF0000/FFFFFF",
            "https://via.placeholder.com/400/FFFF00/000000",
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image(
                      image: NetworkImage(i),
                    ));
              },
            );
          }).toList(),
        ));
  }
}
