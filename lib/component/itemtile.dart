import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabandeat/models/Item.dart';
import 'package:grabandeat/theme/colors.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({super.key, required this.item, required this.onTap});
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
          left: 25,
          right: 20,
        ),
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                //image
                Image.network(
                  item.imagePath,
                  height: 100,
                )
              ],
            ),
            Row(
              children: [
                //name
                Text(
                  item.name,
                  style: GoogleFonts.lato(
                      fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                //description
                SizedBox(
                  width: 120,
                  child: Text(
                    item.shortDescription,
                    style: GoogleFonts.lato(
                        fontSize: 10, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            Row(
              children: [
                //price
                Text('\$' + item.price)
              ],
            )
          ],
        ),
      ),
    );
  }
}
