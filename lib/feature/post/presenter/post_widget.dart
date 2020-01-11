import 'package:flutter/material.dart';
import 'package:getit_example/feature/post/domain/post.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
      child: Card(
        child: Column(
          children: <Widget>[
            Image.network(post.image),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        post.date,
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(post.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                    Text(post.detail),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
