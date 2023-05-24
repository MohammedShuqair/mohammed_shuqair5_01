import 'package:flutter/material.dart';
import 'package:mohammed_shuqair5_01/profile.dart';
import 'package:mohammed_shuqair5_01/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<Widget> screens = [
  const Profile(),
  const Search(),
  Center(
    child: Image.asset(
      'assets/images/meme.jpg',
      width: double.infinity,
      height: 300,
      alignment: Alignment.center,
    ),
  ),
];

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: screens[_currentIndex],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: p18),
              margin: const EdgeInsets.only(
                bottom: p18,
                left: p18,
                right: p18,
              ),
              decoration: BoxDecoration(
                  color: lightBC, borderRadius: BorderRadius.circular(r30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NavItem(
                    onTap: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    icon: Icons.person_3_outlined,
                    itemIndex: 0,
                    currentIndex: _currentIndex,
                  ),
                  NavItem(
                    onTap: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                    icon: Icons.search_rounded,
                    itemIndex: 1,
                    currentIndex: _currentIndex,
                  ),
                  NavItem(
                    onTap: () {
                      setState(() {
                        _currentIndex = 2;
                      });
                    },
                    icon: Icons.settings_outlined,
                    itemIndex: 2,
                    currentIndex: _currentIndex,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.onTap,
    required this.icon,
    required this.itemIndex,
    required this.currentIndex,
  });
  final VoidCallback onTap;
  final IconData icon;
  final int itemIndex;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    Color? color =
        itemIndex == currentIndex ? Colors.indigo[900] : Colors.grey[700];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            onPressed: onTap,
            icon: Column(
              children: [
                Icon(
                  icon,
                  color: color,
                ),
                if (itemIndex == currentIndex)
                  const CircleAvatar(
                    radius: 2,
                    backgroundColor: darkBC,
                  )
              ],
            )),
      ],
    );
  }
}
