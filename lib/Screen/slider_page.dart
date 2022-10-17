import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


import 'homePage.dart';
class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  CarouselController carouselController = CarouselController();
  int initialSliderPage = 0;



  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      backgroundColor: const Color(0xffA8A8A8),
      appBar: AppBar(
        title: Text("${gallery[args].pictureName}'s Photos"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                carouselController: carouselController,
                options: CarouselOptions(
                  initialPage: initialSliderPage,
                  onPageChanged: (val, _) {
                    setState(() {
                      initialSliderPage = val;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                  height: 500,
                  viewportFraction: 0.8,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.easeInOut,
                ),
                items: gallery[args].subPicture
                    .map(
                      (e) => Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('assets/images/$e'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
