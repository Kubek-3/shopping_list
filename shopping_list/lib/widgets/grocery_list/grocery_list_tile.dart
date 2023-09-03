import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';

class GroceryListTile extends StatelessWidget {
  const GroceryListTile({
    super.key,
    required this.index,
    required this.groceryItems,
    //required this.onLongPress,
  });

  final int index;
  final List<GroceryItem> groceryItems;
  //void Function() onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
     // onLongPress: onLongPress,
      title: Text(groceryItems[index].name),
      leading: Container(
        width: 24,
        height: 24,
        color: groceryItems[index].category.color,
      ),
      trailing: Text(
        groceryItems[index].quantity.toString(),
      ),
    );
  }
}
