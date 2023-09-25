import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hero_games_case_2/constants/image_strings.dart';
import 'package:hero_games_case_2/constants/text_strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
        title: const Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(tImage1),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tWelcomeText1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                Text(
                  tWelcomeText2,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 231, 237, 240),
              ),
              height: 95,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildInfo(FontAwesomeIcons.heart, tHearthRateText1,
                      tHearthRateText2, tHearthRateText3),
                  _buildVerticalDivider(),
                  _buildInfo(FontAwesomeIcons.listCheck, tTodoText1, tTodoText2,
                      tTodoText3),
                  _buildVerticalDivider(),
                  _buildInfo(FontAwesomeIcons.fire, tCaloText1, tCaloText2,
                      tCaloText3),
                ],
              ),
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Text(
                      tWorkoutPrograms1,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  controller: tabController,
                  isScrollable: true,
                  labelColor: const Color.fromARGB(255, 25, 99, 160),
                  labelPadding: const EdgeInsets.only(left: 26, right: 30),
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(text: tWorkoutPrograms2),
                    Tab(text: tWorkoutPrograms3),
                    Tab(text: tWorkoutPrograms4),
                    Tab(text: tWorkoutPrograms5),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.maxFinite,
                height: 467,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 26.0),
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color.fromARGB(255, 228, 243, 248),
                            ),
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        alignment: Alignment.center,
                                        height: 30,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white),
                                        child: const Text(tPageBuilderText4)),
                                    const SizedBox(height: 20.0),
                                    const Text(
                                      tPageBuilderText1,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 20.0),
                                    const Text(
                                      tPageBuilderText2,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.watch_later_outlined,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          tPageBuilderText3,
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 50),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 26.0),
                                        width: 100,
                                        height: 100,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(tImage2),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 26.0),
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color.fromARGB(255, 228, 243, 248),
                            ),
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        alignment: Alignment.center,
                                        height: 30,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white),
                                        child: const Text(tPageBuilderText8)),
                                    const SizedBox(height: 20.0),
                                    const Text(
                                      tPageBuilderText5,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 20.0),
                                    const Text(
                                      tPageBuilderText6,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                    const SizedBox(height: 20.0),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.watch_later_outlined,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          tPageBuilderText3,
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 10),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 26.0),
                                        width: 107,
                                        height: 100,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(tImage3),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 26.0),
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color.fromARGB(255, 228, 243, 248),
                            ),
                            padding: const EdgeInsets.all(16.0),
                          ),
                        ],
                      ),
                    ),
                    const Text("data1"),
                    const Text("data2"),
                    const Text("data3"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_outward, color: Colors.black),
            label: 'Routine',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined, color: Colors.black),
            label: 'Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, color: Colors.black),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}

Widget _buildInfo(IconData icon, String text1, String text2, String text3) {
  return Row(
    children: [
      Icon(
        icon,
        size: 15,
        color: const Color.fromARGB(255, 142, 197, 241),
      ),
      const SizedBox(
        width: 10,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: const TextStyle(fontSize: 15),
          ),
          Row(
            children: [
              Text(
                text2,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                text3,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Widget _buildVerticalDivider() {
  return const SizedBox(
    width: 1,
    child: VerticalDivider(
      indent: 15,
      endIndent: 15,
      color: Color.fromARGB(255, 211, 208, 208),
      thickness: 1,
      width: 20,
    ),
  );
}
