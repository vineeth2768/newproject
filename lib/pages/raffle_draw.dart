import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newproject/const/const_height.dart';
import 'package:newproject/pages/raffle_details.dart';

class RaffleDraw extends StatefulWidget {
  const RaffleDraw({Key? key}) : super(key: key);

  @override
  State<RaffleDraw> createState() => _RaffleDrawState();
}

class _RaffleDrawState extends State<RaffleDraw> {
  late  bool _loading;
  late double _progressValue;
  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue=0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xff124076),
        title: const Text("Raffle Draws"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kheight,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Closing soon",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/raffle/watch.png"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text("Get a chance to"),
                                  Text(
                                    "𝙒𝙄𝙉:",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              const Text(
                                "Rollex classic Watch",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "502 sold out of 1500",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(blurRadius: 10.0),
                              ],
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    ),
                    
                    width10,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/raffle/cash.png"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text("Get a chance to"),
                                  Text(
                                    "𝙒𝙄𝙉:",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const Text(
                                "INR599.000 Cash",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Expanded(
                                  child: Text(
                                "704 sold out of 983",
                                overflow: TextOverflow.fade,
                                style: TextStyle(fontSize: 12),
                                softWrap: false,
                              ))
                            ],
                          ),
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(blurRadius: 10.0),
                            ],
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                    width10,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/raffle/car.png"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text("Get a chance to"),
                                  Text(
                                    "𝙒𝙄𝙉:",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              const Text(
                                "Audi A7 classic",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "307 sold out of 568",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(blurRadius: 10.0),
                              ],
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    ),
                    width10,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  "assets/raffle/bike.png",
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text("Get a chance to"),
                                  Text(
                                    "𝙒𝙄𝙉:",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              const Text(
                                "Yamaha R15 V3",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "498 sold out of 657",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(blurRadius: 10.0),
                              ],
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    ),
                  ],
                ),
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
            kheight,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Featured Draw",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              primary: false,
              shrinkWrap: true,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RaffleDetails()));
                  },
                  child: Container(
                    child: Stack( 
                      children: [
                        Positioned(
                          child: Stack(
                            children: const [
                              CircularProgressIndicator(
                                  strokeWidth: 5,
                                  backgroundColor: Colors.grey,
                                  valueColor:  AlwaysStoppedAnimation(
                                      Colors.yellow),
                                  value: 0.20),
                               Positioned(
                                top: 10,
                                bottom: 0,
                                left: 6,
                                right: 0,
                                child: Text(
                                  '20%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/raffle/bike.png",
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Get a chance to"),
                                Text(
                                  "𝙒𝙄𝙉:",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const Text(
                              "Yamaha R15 V3",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(
                                      0xff8acc47), // Background color
                                ),
                                onPressed: () {},
                                child: const Text("Scan QR")),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(blurRadius: 5.0),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RaffleDetails()));
                  },
                  child: Container(
                    child: Stack(
                      children: [
                        Positioned(
                          child: Stack(
                            children: const [
                              CircularProgressIndicator(
                                  strokeWidth: 5,
                                  backgroundColor: Colors.grey,
                                  valueColor:  AlwaysStoppedAnimation(
                                      Colors.green),
                                  value: 0.40),
                               Positioned(
                                top: 10,
                                bottom: 0,
                                left: 6,
                                right: 0,
                                child: Text(
                                  '42%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/raffle/car.png",
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Get a chance to"),
                                Text(
                                  "𝙒𝙄𝙉:",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const Text(
                              "Audi A7 Classic",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(
                                      0xff8acc47), // Background color
                                ),
                                onPressed: () {},
                                child: const Text("Scan QR")),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(blurRadius: 5.0),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                  ),
                ),
                
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RaffleDetails()));
                  },
                  child: Container(
                    child: Stack(
                      children: [
                        
                        Positioned(
                          child: Stack(
                            children: const [
                              CircularProgressIndicator(
                                  strokeWidth: 5,
                                  backgroundColor: Colors.grey,
                                  valueColor:  AlwaysStoppedAnimation(
                                      Colors.red),
                                  value: 0.9),
                               Positioned(
                                top: 10,
                                bottom: 0,
                                left: 6,
                                right: 0,
                                child: Text(
                                  '91%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/raffle/cash.png",
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Get a chance to"),
                                Text(
                                  "𝙒𝙄𝙉:",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const Text(
                              "INR 4999.000",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(
                                      0xff8acc47), // Background color
                                ),
                                onPressed: () {},
                                child: const Text("Scan QR")),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(blurRadius: 5.0),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RaffleDetails()));
                  },
                  child: Container(
                    child: Stack(
                      children: [
                       
                        Positioned(
                          child: Stack(
                            children: const [
                              CircularProgressIndicator(
                                  strokeWidth: 5,
                                  backgroundColor: Colors.grey,
                                  valueColor:  AlwaysStoppedAnimation(
                                      Colors.green),
                                  value: 0.4),
                               Positioned(
                                top: 10,
                                bottom: 0,
                                left: 6,
                                right: 0,
                                child: Text(
                                  '44%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/raffle/watch.png",
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Get a chance to"),
                                Text(
                                  "𝙒𝙄𝙉:",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const Text(
                              "Rollex Classic Watch",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(
                                      0xff8acc47), // Background color
                                ),
                                onPressed: () {},
                                child: const Text("Scan QR")),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(blurRadius: 5.0),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RaffleDetails()));
                  },
                  child: Container(
                    child: Stack(
                      children: [
                       
                        Positioned(
                          child: Stack(
                            children:const  [
                              CircularProgressIndicator(
                                  strokeWidth: 5,
                                  backgroundColor: Colors.grey,
                                  valueColor:  AlwaysStoppedAnimation(
                                      Colors.green),
                                  value: 0.7),
                               Positioned(
                                top: 10,
                                bottom: 0,
                                left: 6,
                                right: 0,
                                child: Text(
                                  '67%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/raffle/bike.png",
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Get a chance to"),
                                Text(
                                  "𝙒𝙄𝙉:",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const Text(
                              "Yamaha R15 V3",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(
                                      0xff8acc47), // Background color
                                ),
                                onPressed: () {},
                                child: const Text("Scan QR")),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(blurRadius: 5.0),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RaffleDetails()));
                  },
                  child: Container(
                    child: Stack(
                      children: [
                        
                        Positioned(
                          child: Stack(
                            children: const [
                              CircularProgressIndicator(
                                  strokeWidth: 5,
                                  backgroundColor: Colors.grey,
                                  valueColor:  AlwaysStoppedAnimation(
                                      Colors.red),
                                  value: 0.8),
                               Positioned(
                                top: 10,
                                bottom: 0,
                                left: 6,
                                right: 0,
                                child: Text(
                                  '76%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/raffle/bike.png",
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Get a chance to"),
                                Text(
                                  "𝙒𝙄𝙉:",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const Text(
                              "Yamaha R15 V3",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(
                                      0xff8acc47), // Background color
                                ),
                                onPressed: () {},
                                child: const Text("Scan QR")),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(blurRadius: 5.0),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RaffleDetails()));
                  },
                  child: Container(
                    child: Stack(
                      children: [
                        
                        Positioned(
                          child: Stack(
                            children: const [
                              CircularProgressIndicator(
                                  strokeWidth: 5,
                                  backgroundColor: Colors.grey,
                                  valueColor:  AlwaysStoppedAnimation(
                                      Colors.yellow),
                                  value: 0.2),
                               Positioned(
                                top: 10,
                                bottom: 0,
                                left: 6,
                                right: 0,
                                child: Text(
                                  '11%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/raffle/bike.png",
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Get a chance to"),
                                Text(
                                  "𝙒𝙄𝙉:",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const Text(
                              "Yamaha R15 V3",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(
                                      0xff8acc47), // Background color
                                ),
                                onPressed: () {},
                                child: const Text("Scan QR")),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(blurRadius: 5.0),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Expaired Draw",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              primary: false,
              shrinkWrap: true,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                InkWell(
                  // onTap: () {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //       builder: (context) => const RaffleDetails()));
                  // },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/raffle/bike.png",
                              height: 50,
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              left: 0,
                              child: Image.asset(
                                "assets/raffle/soldout.png",
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Get a chance to"),
                            Text(
                              "𝙒𝙄𝙉:",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const Text(
                          "Yamaha R15 V3",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black, // Background color
                            ),
                            onPressed: null,
                            child: const Text("Scan QR")),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(blurRadius: 5.0),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                  ),
                ),
                InkWell(
                  // onTap: () {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //       builder: (context) => const RaffleDetails()));
                  // },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/raffle/car.png",
                              height: 50,
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              left: 0,
                              child: Image.asset(
                                "assets/raffle/soldout.png",
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Get a chance to"),
                            Text(
                              "𝙒𝙄𝙉:",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const Text(
                          "Audi A7 Classic",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black, // Background color
                            ),
                            onPressed: null,
                            child: const Text("Scan QR")),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(blurRadius: 5.0),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                  ),
                ),
                InkWell(
                  // onTap: () {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //       builder: (context) => const RaffleDetails()));
                  // },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/raffle/cash.png",
                              height: 50,
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              left: 0,
                              child: Image.asset(
                                "assets/raffle/soldout.png",
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Get a chance to"),
                            Text(
                              "𝙒𝙄𝙉:",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const Text(
                          "INR 599.000 Cash",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black, // Background color
                            ),
                            onPressed: null,
                            child: const Text("Scan QR")),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 5.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
