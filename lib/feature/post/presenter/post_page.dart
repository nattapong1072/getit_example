import 'package:flutter/material.dart';
import 'package:getit_example/di/service_locator.dart';
import 'package:getit_example/feature/post/presenter/post_presenter.dart';
import 'package:getit_example/feature/post/presenter/post_widget.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  PostPresenter _postPresenter;

  @override
  void initState() {
    _postPresenter = locator<PostPresenter>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เดฟไปวันๆ"),
      ),
      body: SafeArea(
        child: Material(
          child: FutureBuilder(
            future: _postPresenter.getPostList(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              } else {
                return Container(
                  child: ListView.builder(
                    itemCount: snapshot.data.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return PostWidget(post: snapshot.data[index]);
                    },
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
