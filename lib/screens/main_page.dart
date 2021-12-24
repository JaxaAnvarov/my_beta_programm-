import 'package:flutter/material.dart';
import 'package:my_beta_programm/core/constants/export.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> listOfPages = [];
  Widget? homePage, searchPage, tickedPage, personPage;
  @override
  void initState() {
    super.initState();
    listOfPages = [
      homePage = const HomePage(),
      searchPage = const SearchPage(),
      tickedPage = const TickedPage(),
      personPage = const PersonPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfPages[context.watch<BottomProvier>().currentIndex],
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
