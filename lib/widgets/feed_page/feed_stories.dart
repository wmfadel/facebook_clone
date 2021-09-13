import 'dart:math';
import 'package:facebook_clone/models/connection.dart';
import 'package:facebook_clone/resources/images.dart';
import 'package:facebook_clone/widgets/feed_page/create_story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      color: kIsWeb ? Colors.transparent : Colors.white,
      margin: kIsWeb ? const EdgeInsets.symmetric(horizontal: 25) : null,
      child: ListView.builder(
        controller: ScrollController(),
        itemCount: 15,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          Color filterColor = Color((Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(0.9);
          if (index == 0) return const CreateStory();
          return Container(
            width: 90,
            height: 170,
            margin: const EdgeInsets.all(5),
            child: Material(
              color: Colors.white,
              elevation: 1,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                      color: filterColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      image: DecorationImage(
                        image: const AssetImage(
                          Images.mainUser,
                        ),
                        fit: BoxFit.cover,
                        colorFilter:
                            ColorFilter.mode(filterColor, BlendMode.dstATop),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.blue.withOpacity(0.5),
                          child: SvgPicture.asset(
                            Connection.connections[index].image,
                            width: 28,
                            height: 28,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Text(
                          Connection.connections[index].name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
