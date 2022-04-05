import 'package:flutter/material.dart';
import 'package:newproject/assets.dart';
import 'package:newproject/const/const_height.dart';
import 'package:newproject/pages/scratch_page.dart';

class ScratchCard extends StatefulWidget {
  const ScratchCard({Key? key}) : super(key: key);

  @override
  State<ScratchCard> createState() => _ScratchCardState();
}

class _ScratchCardState extends State<ScratchCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
            expandedHeight: 200,
            elevation: 0.2,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("₹ 547\nTotal Rewards"),
              titlePadding: const EdgeInsets.symmetric(horizontal: 45),
              background: Image.asset(Assets.topBar,fit: BoxFit.fill,),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  height10,
                  const Text(
                    "My Rewards",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GridView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        physics:const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent:
                              MediaQuery.of(context).size.width / 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          return cardItem();
                        }),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget cardItem() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ScratchPage()));
      },
      child: SizedBox(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(Assets.scratchImage))),
    );
  }
}
