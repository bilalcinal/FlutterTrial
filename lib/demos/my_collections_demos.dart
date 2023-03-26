import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: _items.length,
          padding: PaddingUtility().paddingHorizantal,
          itemBuilder: (context, index) {
            return _CardCollection(model: _items[index]);
          },
        ));
  }
}

class _CardCollection extends StatelessWidget {
  const _CardCollection({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [
              Expanded(
                  child: Image.asset(
                _model.imagePath,
                fit: BoxFit.cover,
              )),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(_model.title), Text('${_model.price} eth')],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 20);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingHorizantal = const EdgeInsets.symmetric(horizontal: 20);
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Abstract Art',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Abstract Art 2',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Abstract Art 3',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Abstract Art 4',
          price: 3.4)
    ];
  }
}

class ProjectImage {
  static const imageCollection = 'assets/png/image_collection.png';
}
