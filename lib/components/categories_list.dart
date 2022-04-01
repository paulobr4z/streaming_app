import 'package:flutter/material.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({ Key? key }) : super(key: key);

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
    int selectedIndex = 0;
    List<String> categories = [
      'All',
      'Music',
      'Sports',
      'Just Chatting',
      'Software',
      'Science',
      'ASMR'
    ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      margin: const EdgeInsets.fromLTRB(0, 8, 0, 16),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          return ElevatedButton(
            onPressed: () => {
              setState(() {
                selectedIndex = index;
              })
            },
            style: ElevatedButton.styleFrom(
              primary: selectedIndex == index ? Colors.greenAccent : const Color(0xFF2a2939),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)
              )
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                color: selectedIndex == index ? const Color(0xFF2a2939) : Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          );
        },
      ),
    );
  }
}