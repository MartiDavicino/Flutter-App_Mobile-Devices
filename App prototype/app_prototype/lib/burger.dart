class BurgerCatalog {
  List<Burger> burgers;

  BurgerCatalog({this.burgers});
}

class Burger {
  String name;
  String rarity;
  String img;
  int kalories;

  Burger({
    this.name = "Burger #3",
    this.rarity = "Common",
    this.img = "None",
    this.kalories = 234,
  });
}
