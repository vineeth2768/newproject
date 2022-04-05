import 'package:flutter/material.dart';
import 'package:newproject/const/const_height.dart';

class Offers extends StatefulWidget {
  Offers({Key? key}) : super(key: key);

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  final items = [
    "Recommended",
    "What's New",
    "Popularity",
    "Better Discount",
    "Customer Rating"
  ];

  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff124076),
        title: const Text("Offers"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xff8acc47),
        onPressed: () {
          showModalBottomSheet(
            enableDrag: true,
            context: context,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
            builder: (context) => Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "FILTERS",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
                const Text("Sort the offers"),
                height20,
                Container(
                  width: 350,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                      value: value="Recommended",
                      isExpanded: true,
                      items: items.map(buildMenuItems).toList(),
                      onChanged: (value) => setState(() => this.value = value),
                    ),
                  ),
                ),
                height40,
                ElevatedButton(onPressed: () {}, child: const Text("Apply"))
              ],
            ),
          );
          
        },
        label: const Text("Fliter"),
        icon: const Icon(Icons.filter_list),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Best Offers",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      )),
    );
  }

  DropdownMenuItem<String> buildMenuItems(String items) => DropdownMenuItem(
        value: items,
        child: Text(
          items,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      );
}
