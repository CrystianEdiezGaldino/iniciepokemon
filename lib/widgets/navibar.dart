import 'package:flutter/material.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({Key? key}) : super(key: key);

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(248, 255, 255, 255),
        ),
        child: BottomNavigationBar(
          //Menu inferior
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,

          selectedItemColor: const Color.fromRGBO(146, 180, 244, 1),
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 1,
          unselectedFontSize: 1,
          onTap: (value) {
            // Respond to item press.
          },
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Column(
                children: [
                  IconButton(
                    iconSize: 33,
                    icon: const Icon(
                      Icons.home_outlined,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    onPressed: () {},
                  ),
                  const Text("Home")
                ],
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Column(
                children: [
                  IconButton(
                    splashColor: Colors.red,
                    iconSize: 33,
                    icon: const Icon(
                      Icons.favorite_border_outlined,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    onPressed: () {},
                  ),
                  const Text("Favoritos")
                ],
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Column(
                children: [
                  IconButton(
                    iconSize: 33,
                    icon: const Icon(
                      Icons.account_circle_outlined,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    onPressed: () {},
                  ),
                  const Text("Minha Conta")
                ],
              ),
            ),
          ],
        ));
  }
}
