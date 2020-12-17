import 'package:breaking_bad_api_mvvm_model/view/breaking_bad_detail.dart';
import 'package:breaking_bad_api_mvvm_model/view_model/breaking_bad_view_model.dart';
import 'package:breaking_bad_api_mvvm_model/widget/image_loading.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CharactersGrid extends StatelessWidget {
  final List<BreakingBadViewModel> badItem;

  CharactersGrid({this.badItem});

  @override
  Widget build(BuildContext context) {
    return SliverStaggeredGrid.countBuilder(
      crossAxisCount: 4,
      itemCount: badItem.length,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      itemBuilder: (context, index) {
        return buildCharactersTile(index, context);
      },
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 3 : 2),
    );
  }

  InkWell buildCharactersTile(int index, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    BreakingBadDetail(badItem[index])));
      },
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 8,
        child: Stack(
          children: [
            Positioned.fill(
              child: Hero(
                tag: badItem[index].nickname,
                child: ImageLoading(badItem[index].img),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    badItem[index].nickname,
                    style: TextStyle(
                        color: Colors.yellow[800], fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
