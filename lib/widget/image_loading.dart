import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageLoading extends StatelessWidget {
  String img;

  ImageLoading(String img) {
    this.img = img;
  }

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: img,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) {
        return Center(
          child: Icon(Icons.error, color: Colors.red),
        );
      },
      placeholder: (context, url) {
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
