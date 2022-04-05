import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:newproject/screens/screen_home.dart';

class ScreenScanedQr extends StatelessWidget {
  const ScreenScanedQr({Key? key, required this.data}) : super(key: key);
  final String data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        label: const Text("Next"),
        backgroundColor: const Color(0xff8acc47),
        icon: const Icon(Icons.arrow_forward),
        ),
        appBar: AppBar(
        title: const Text("TRENDS",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: const Color(0xff124076),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const  ScreenHome()));
          }, icon: const Icon(Icons.close,color: Colors.white,))
        ],
      ),
        body: SingleChildScrollView(
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 200,
            width: double.infinity,
            child: Carousel(
              indicatorBarColor: Colors.black.withOpacity(0.0),
              autoScrollDuration: const Duration(seconds: 2),
              animationPageDuration: const Duration(milliseconds: 500),
              activateIndicatorColor: Colors.black,
              animationPageCurve: Curves.bounceInOut,
              unActivatedIndicatorColor: Colors.white,
              stopAtEnd: true,
              autoScroll: true,
              items: [
                Image.asset("assets/banners/banner1.jpg",fit: BoxFit.cover,),
                Image.asset("assets/banners/banner2.jpg",fit: BoxFit.cover,),
                Image.asset("assets/banners/banner3.jpg",fit: BoxFit.cover,),
              ],
            ),
          ),
        ),      
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Top Deals",style: TextStyle(color:Colors.black,fontSize: 20),),
              TextButton(onPressed: (){}, child: const Text("View All",style: TextStyle(color: Colors.black),))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 200,
            width: double.infinity,
            child: CarouselSlider(
              options: CarouselOptions(),
              items: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration:  BoxDecoration(
                    image:const  DecorationImage(image: AssetImage("assets/deals/deal1.jpg"),
                    fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  ),
               Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration:  BoxDecoration(
                    image: const DecorationImage(image: AssetImage("assets/deals/deal3.jpg"),
                    fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  ),
                  
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration:  BoxDecoration(
                    image: const DecorationImage(image: AssetImage("assets/deals/deal4.jpg"),
                    fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  ),
              ]),
          ),
        ), 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Recent Offers",style: TextStyle(color:Colors.black,fontSize: 20),),
              TextButton(onPressed: (){}, child: const Text("View All",style: TextStyle(color: Colors.black),))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 200,
            width: double.infinity,
            child: CarouselSlider(
              options: CarouselOptions(),
              items: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration:  BoxDecoration(
                    image:const  DecorationImage(image: AssetImage("assets/deals/deal1.jpg"),
                    fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  ),
               Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration:  BoxDecoration(
                    image: const DecorationImage(image: AssetImage("assets/deals/deal3.jpg"),
                    fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  ),
                  
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration:  BoxDecoration(
                    image: const DecorationImage(image: AssetImage("assets/deals/deal2.jpg"),
                    fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  ),
              ]),
          ),
        ), 
        // Text("shop Name: $data"),
      ]),
    ));
  }
}
