import 'package:flutter/material.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 30,
                  decoration: const BoxDecoration(
                    boxShadow: [],
                    color: Color.fromARGB(255, 233, 87, 143),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Center(
                    child: Text("Fogo"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 235, 0, 90),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Center(child: Text("Fogo")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 4, 235),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Center(child: Text("Fogo")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 149, 235),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Center(child: Text("Fogo")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 235, 0, 90),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Center(child: Text("Fogo")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 156, 180, 19),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Center(child: Text("Fogo")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 235, 78),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Center(child: Text("Fogo")),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
