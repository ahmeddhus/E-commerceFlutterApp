class ItemModel{

  String itemName;
  String itemImg;
  String itemDesc;
  String itemCost;
  String itemColor;
  String itemQty;
  String itemSize;
  bool isItemFav;

  ItemModel(this.itemName, this.itemImg, this.itemDesc, this.itemCost,
      this.itemColor, this.itemQty, this.itemSize);

  ItemModel.bestSelling(this.itemName, this.itemImg, this.itemDesc, this.itemCost, this.isItemFav);

  ItemModel.recentlyViewed(this.itemName, this.itemImg, this.itemCost);
}