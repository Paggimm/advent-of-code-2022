import 'package:day3/helper.dart';

class Backpack {
  final String _compartment1;
  final String _compartment2;

  Backpack(this._compartment1, this._compartment2);

  int getErrorPriority() {
    var errorItem = _GetErrorItem();
    var itemList = createItemList();

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

  /// returns the whole content of both compartments
  String get content {
    return _compartment1+_compartment2;
  }
}

class BackpackGroup {
  late final List<Backpack> _members;
  late final String _badge;

  BackpackGroup(List<Backpack>members) {
    if(members.length != 3) {
      throw Exception("list does not have length of 3");
    }
    _badge = _evaluateBadge(members);
    _members = members;
  }

  /// determine the group badge
  String _evaluateBadge(List<Backpack>members) {
    var pivotContent = members[0].content;
    for(int i = 0; i<pivotContent.length; i++) {
      var possibleBadge = pivotContent[i];

      if(members[1].content.contains(possibleBadge) && members[2].content.contains(possibleBadge)) {
        return possibleBadge;
      }
    }

    throw Exception("no common badge for this group!");
  }

  int getBadgeValue() {
    var itemList = createItemList();

    for(int i = 0; i<itemList.length; i++) {
      if(_badge == itemList.elementAt(i)) {
        // return with +1 because priority starts at 1
        return i+1;
      }
    }

    throw Exception("Badge not found in itemList");
  }
}