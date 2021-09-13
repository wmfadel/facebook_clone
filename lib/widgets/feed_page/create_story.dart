import 'package:facebook_clone/resources/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateStory extends StatelessWidget {
  const CreateStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Column(
              children: [
                Flexible(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      Images.mainUser,
                      width: double.maxFinite,
                      height: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Create\nStory',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 38),
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
