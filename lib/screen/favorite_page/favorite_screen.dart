import 'package:flutter/material.dart';
import 'package:ui_demo/screen/favorite_page/widget/matches_widget.dart';
import 'package:ui_demo/widgets/appbar_with_card_widget.dart';
import 'package:ui_demo/screen/favorite_page/widget/info_widget.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarWithCardWidget(
          isTabBar: true,
          cardCenterTitleText: "67'",
          cardCenterSubTitleText: "0-2",
        ),
        TabBar(
          isScrollable: true,
          controller: _tabController,
          labelColor: Theme.of(context).tabBarTheme.labelColor,
          tabs: const [
            Tab(
              child: Text("Info"),
            ),
            Tab(
              child: Text("Matches"),
            ),
            Tab(
              child: Text("Player"),
            ),
            Tab(
              child: Text("Result"),
            ),
            Tab(
              child: Text("Standing"),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: TabBarView(
              controller: _tabController,
              children: [
                const InfoWidget(),
                const MatchesWidget(),
                Center(
                  child: Text(
                    "Player",
                    style: TextStyle(
                      fontSize: 24,
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Result",
                    style: TextStyle(
                      fontSize: 24,
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Standing",
                    style: TextStyle(
                      fontSize: 24,
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
