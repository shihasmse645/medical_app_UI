import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Image icon;
  final String categoryname;
  const CategoryCard({super.key, required this.icon, required this.categoryname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            icon,
            Text(categoryname),
          ],
        ),
      ),
    );
  }
}
