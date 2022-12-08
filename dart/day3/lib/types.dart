import 'package:day3/helper.dart';

class Backpack {
  final String _compartment1;
  final String _compartment2;

  Backpack(this._compartment1, this._compartment2);

  int getErrorPriority() {
    var errorItem = _GetErrorItem();
    var itemList = createCharList();

    for(int i = 0; i<itemList.length; i++) {
      if(errorItem == itemList.elementAt(i)) {
        // return with +1 because priority starts at 1
        return i+1;
      }
    }

    throw Exception("item not found in itemList");
  }

  /// resolves which item is present in both compartments
  String _GetErrorItem() {
    // iterate over the first compartment
    for (int i = 0; i < _compartment1.length; i++) {
      var item1 = _compartment1[i];

      // check if char is also present in compartment2 and stop iterating
      for (int j = 0; j < _compartment2.length; j++) {
        var item2 = _compartment2[j];

        if (item1 == item2) {
          return item1;
        }
      }
    }

    throw Exception("there was no error present in this backpack");
  }
}