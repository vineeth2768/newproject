import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:newproject/const/const_height.dart';
import 'package:newproject/pages/coupones.dart';
import 'package:newproject/pages/offers.dart';
import 'package:newproject/pages/raffle_draw.dart';
import 'package:newproject/pages/scratch_card.dart';
import 'package:newproject/screens/qr/screen_qrcode.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xff124076),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.email)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          ],
          title: const CupertinoSearchTextField(
            backgroundColor: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 230,
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
                    Image.asset(
                      "assets/banners/banner1.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/banners/banner2.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/banners/banner3.jpg",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Top Deals",
                    style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View All",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                width: double.infinity,
                child: CarouselSlider(options: CarouselOptions(), items: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/deals/deal1.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/deals/deal3.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/deals/deal4.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recent Offers",
                    style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View All",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                width: double.infinity,
                child: CarouselSlider(options: CarouselOptions(), items: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/deals/deal1.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/deals/deal3.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/deals/deal2.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ]),
              ),
            ),
            height10,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                   Text(
                    "Quick Buttons",
                    style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            height10,
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Offers()));
                            },
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/icons/offer.png'),
                                  
                                ),
                              ),
                            ),
                          ),
                          height10,
                          const Text('Offers'),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Coupones()));
                            },
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/icons/coupones.png'),
                                ),
                              ),
                            ),
                          ),
                          height10,
                          const Text('My coupones')
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const RaffleDraw()));
                            },
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/icons/raffledraw.png'),
                                ),
                              ),
                            ),
                          ),
                          height10,
                          const Text('Raffle Draw')
                        ],
                      )
                    ],
                  ),
                  height20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage('assets/icons/wallet.png'),
                              ),
                            ),
                          ),
                          height10,
                          const Text('My Walet')
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ScanQRPage()));
                            },
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/icons/QrCode.png'),
                                ),
                              ),
                            ),
                          ),
                          height10,
                          const Text('QR scaner')
                        ],
                      ),
                      Column(
                        children: [
                         InkWell(
                           onTap: (){
                             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ScratchCard()));
                           },
                           child: Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/icons/categories.png'),
                                ),
                              ),
                            ),
                         ),
                          height10,
                          const Text('Scartch cards')
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Text("shop Name: $data"),
          ]),
        ));
  }
}
