import 'package:flutter/material.dart';

class PostImages extends StatefulWidget {
  final List<String> images;
  const PostImages(this.images, {Key? key}) : super(key: key);

  @override
  State<PostImages> createState() => _PostImagesState();
}

class _PostImagesState extends State<PostImages> {
  int currentPage = 0;
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  moveToNext() {
    if (widget.images.length > currentPage) {
      setState(() {
        currentPage++;
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      });
    }
  }

  moveToPrevious() {
    if (currentPage > 0) {
      setState(() {
        currentPage--;
        pageController.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      width: double.maxFinite,
      child: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: widget.images.length,
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                widget.images[index],
                width: double.maxFinite,
                fit: BoxFit.cover,
              );
            },
            onPageChanged: (int newPage) {
              setState(() {
                currentPage = newPage;
              });
            },
          ),
          if (currentPage > 0)
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                      color: Colors.white.withOpacity(0.7),
                      onPressed: moveToPrevious,
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 30,
                      )),
                )),
          if (currentPage < widget.images.length - 1)
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                      color: Colors.white.withOpacity(0.7),
                      onPressed: moveToNext,
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 30,
                      )),
                )),
        ],
      ),
    );
  }
}
