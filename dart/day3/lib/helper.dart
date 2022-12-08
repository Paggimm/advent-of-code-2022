Iterable<String> _itemList = Iterable<String>.empty();

Iterable<String> createCharList() {
  if(_itemList.isEmpty) {
    var lowerLetterList = List.generate(26, (index) => String.fromCharCode(index+97));
    var upperLetterList = List.generate(26, (index) => String.fromCharCode(index+65));
    _itemList = List.from(lowerLetterList)..addAll(upperLetterList);
  }

  return _itemList;
}