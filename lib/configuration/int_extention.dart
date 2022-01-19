extension IntExt on int {
  String get moneyFormat {
    String price = toString();
    if (price.length > 3) {
      var value = price;
      value = value.replaceAll(RegExp(r'\D'), '');
      value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), '.');
      return value;
    } else {
      return price;
    }
  }
}
