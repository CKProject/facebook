import 'package:facebook/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 5,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            'asset/icons/logo.png',
            width: 120,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: const Color(0xFFF1F2F5),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset('asset/icons/plus.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: const Color(0xFFF1F2F5),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset('asset/icons/search.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: const Color(0xFFF1F2F5),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('asset/icons/messenger.png'),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            fit: StackFit.passthrough,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0xFFCACCD0), width: 0.7),
                  ),
                ),
              ),
              TabBar(
                tabs: const [
                  Tab(
                    icon: ImageIcon(
                      AssetImage(
                        'asset/icons/home.png',
                      ),
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage(
                        'asset/icons/watch.png',
                      ),
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage(
                        'asset/icons/user.png',
                      ),
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage(
                        'asset/icons/bell.png',
                      ),
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage(
                        'asset/icons/menu.png',
                      ),
                    ),
                  ),
                ],
                indicator: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                  ),
                ),
                controller: _tabController,
                unselectedLabelColor: Theme.of(context).colorScheme.secondary,
                labelColor: Theme.of(context).primaryColor,
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                HomePage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
