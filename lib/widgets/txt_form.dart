import 'package:flutter/material.dart';

class TextFormSeach extends StatefulWidget {
  const TextFormSeach({Key? key}) : super(key: key);

  @override
  State<TextFormSeach> createState() => _TextFormSeachState();
}

class _TextFormSeachState extends State<TextFormSeach> {
  bool sizeicon = true;
  double size = 25.0;

  butonChange() {
    () => setState(() {
          setState(
            () {
              if (sizeicon == true) {
                size = 30;
                sizeicon = false;
              } else {
                sizeicon = true;
                size = 25;
              }
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            SizedBox(
              width: 180,
              child: TextFormField(
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Color.fromARGB(136, 247, 75, 127),
                ),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(136, 247, 75, 127),
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(220, 247, 75, 127),
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(136, 247, 75, 127),
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                  ),
                  labelStyle: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 50,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-6, 5),
                    spreadRadius: -2,
                    blurRadius: 24,
                    color: Color.fromRGBO(239, 85, 107, 1),
                  ),
                ],
                color: Color.fromARGB(255, 233, 87, 143),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: InkWell(
                onTap: () {
                  butonChange();
                },
                child: Icon(
                  Icons.search,
                  size: size,
                  color: const Color.fromARGB(255, 248, 248, 248),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
