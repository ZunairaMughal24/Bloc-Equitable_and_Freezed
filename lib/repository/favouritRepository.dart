import 'package:equitable/model/favModel.dart';

class Favouritrepository {
  Future<List<favModel>> fetchItems() async {
    await Future.delayed(Duration(seconds: 3));
    return List.of(_generateList(10));
  }

  List<favModel> _generateList(int length) {
    return List.generate(length,
        (index) => favModel(id: index.toString(), value: "item $index"));
  }
}
