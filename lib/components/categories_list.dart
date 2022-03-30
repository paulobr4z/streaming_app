import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      'All',
      'Music',
      'Sports',
      'Just Chatting',
      'Software',
      'Science',
      'ASMR'
    ];

    return Container(
      height: 32,
      margin: const EdgeInsets.fromLTRB(0, 8, 0, 16),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(100)
            ),
            child: Text(
              categories[index],
              style: const TextStyle(
                color: Color(0xFF0f0f17),
                fontWeight: FontWeight.bold
              ),
            ),
          );
        },
      ),
    );
  }
}