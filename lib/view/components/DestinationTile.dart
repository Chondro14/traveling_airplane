import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mantap/Models/Destination.dart';
import 'package:mantap/shared/theme.dart';
import 'package:mantap/view/pages/DetailPage.dart';

class DestinationTile extends StatelessWidget {

  final DestinationModel model;

  DestinationTile({required this.model});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(model: model,)));},
      child: Container(
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(18)),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 16),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      image: NetworkImage(model.imageUrl),
                      fit: BoxFit.cover)),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style:
                        blackTextStyle.copyWith(fontWeight: medium, fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    model.city,
                    style:
                        blackTextStyle.copyWith(fontSize: 14, fontWeight: light),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(margin: EdgeInsets.only(right: 2,bottom: 4),
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                    size: 16,
                  ),
                ),
                Text(model.rating.toString(),style: blackTextStyle.copyWith(fontSize: 14,fontWeight: medium),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
