import 'package:flutter/material.dart';

import 'Model.dart';

class CardWidget extends StatelessWidget {
  final Model model;

  const CardWidget({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: model.imageurl != null ? Image.network(
                      model.imageurl,
                      fit: BoxFit.cover,
                    ): Container(),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(model.name ?? ''),
                  SizedBox(width: 10),
                  Text(model.realname ?? ''),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(model.team ?? ''),
                  SizedBox(width: 10),
                  Text(model.firstappearance ?? ''),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(model.createdby ?? ''),
                  SizedBox(width: 10),
                  Text(model.publisher ?? ''),
                ],
              ),
              SizedBox(height: 10),
              Text(model.bio ?? ''),
            ],
          ),
        ),
      ),
    );
  }
}
