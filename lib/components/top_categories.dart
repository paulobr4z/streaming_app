import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/top_categories_model.dart';

class TopCategories extends StatefulWidget {
  const TopCategories({ Key? key }) : super(key: key);

  @override
  State<TopCategories> createState() => _TopCategoriesState();
}

class _TopCategoriesState extends State<TopCategories> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final topCategories = TopCategoriesModel.getTopCategoriesModel();

    return Container(
      width: size.width,
      margin: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: size.width,
            height: 32,
            child: const Text(
              'Top Categories',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(
            height: 160,
            child: ListView.separated(
              itemCount: topCategories.length,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 110,
                  child: Column(
                    children: [
                      ClipRRect(
                        child: CachedNetworkImage(
                          color: const Color(0xFF2a2939),
                          imageUrl: topCategories[index].imageUrl.toString(),
                          placeholder: (context, url) => const CircularProgressIndicator(),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}