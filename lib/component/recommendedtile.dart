import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabandeat/models/Item.dart';
import 'package:grabandeat/theme/colors.dart';

class RecommendedTile extends StatelessWidget {
  const RecommendedTile({super.key, required this.item, required this.onTap});
  final void Function()? onTap;
  final Item item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(
          top: 10,
          left: 25,
          right: 20,
          bottom: 10,
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //image
                  Image.network(
                    item.imagePath,
                    height: 60,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        item.name,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.lato(fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        item.price,
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.local_fire_department_outlined,
                  color: Colors.red,
                  size: 28,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
