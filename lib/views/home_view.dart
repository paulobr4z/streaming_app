import 'package:flutter/material.dart';
import 'package:streaming_app/components/categories_list.dart';
import 'package:streaming_app/components/live_list.dart';
import 'package:streaming_app/components/popular_streamers.dart';
import 'package:streaming_app/components/top_categories.dart';

class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF0f0f17),
      body: SafeArea(
        minimum: EdgeInsets.zero,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              backgroundColor: const Color(0xFF0f0f17),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => {},
                iconSize: 32,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: IconButton(
                    icon: const Icon(Icons.search),
                    iconSize: 32,
                    onPressed: () => {},
                  ),
                )
              ],
            )
          ],
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: size.width,
                    child: const Text(
                      'Your Favorite',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    width: size.width,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: const Text(
                      'Streams',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent
                      ),
                    ),
                  ),
                  const CategoriesList(),
                  const LiveList(
                    liveListTitle: "Followed channels"
                  ),
                  const PopularStreamers(),
                  const TopCategories(),
                ]
              )
            ),
          ),
        ),
      )
    );
  }
}