import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class JsGridShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    
      child: Shimmer.fromColors(
        baseColor: Colors.grey[400],
        highlightColor: Colors.grey[100],
        child: GridView.count(
          shrinkWrap: true,

          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(15, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: double.infinity,
                    height: 8.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: double.infinity,
                    height: 8.0,
                    color: Colors.grey,
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
