import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mantap/Models/Destination.dart';
import 'package:mantap/shared/theme.dart';
import 'package:mantap/view/pages/DetailPage.dart';

class DestinationCard extends StatelessWidget{
  final DestinationModel model;

  DestinationCard({required this.model});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(model: model,)));
      },
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 323,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: defaultMargin),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 180,
                    height: 220,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                            image: NetworkImage(model.imageUrl),
                            fit: BoxFit.fill)),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 55,
                        height: 30,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(18))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(bottom: 4.0, right: 4),
                              child: Icon(
                                FontAwesomeIcons.solidStar,
                                color: Colors.amber,
                                size: 18,
                              ),
                            ),
                            Text(
                              model.rating.toString(),
                              style:
                              blackTextStyle.copyWith(fontWeight: medium),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.name,
                          style: blackTextStyle.copyWith(
                              fontWeight: medium, fontSize: 18),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          model.city,
                          style: blackTextStyle.copyWith(
                              fontWeight: light, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}