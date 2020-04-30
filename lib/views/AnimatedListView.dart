import 'package:flutter/material.dart';

class AnimatedListView extends StatefulWidget {
  @override
  _AnimatedListViewState createState() => _AnimatedListViewState();
}

class _AnimatedListViewState extends State<AnimatedListView> {
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  List<String> _items = ["Item 1", "Item 2", "Item 3", "Item 4"];

  Widget _buildItem(String item, Animation animation, int index) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        elevation: 2,
        child: ListTile(
          title: Text(
            item,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text("Lorem ipsum dolor sit..."),
          trailing: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.redAccent,
            ),
            onPressed: () {
              _removeItem(index);
            },
          ),
        ),
      ),
    );
  }

  void _removeItem(int index) {
    String _removedItem = _items.removeAt(index);
    AnimatedListRemovedItemBuilder _builder = (context, animation) {
      return _buildItem(_removedItem, animation, index);
    };
    return _key.currentState.removeItem(index, _builder);
  }

  void _addItem() {
    int _index = _items.length > 0 ? _items.length : 0;
    _items.insert(_index, "Item ${_items.length + 1}");
    _key.currentState.insertItem(_index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated List View")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addItem();
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 10),
        child: AnimatedList(
          key: _key,
          initialItemCount: _items.length,
          itemBuilder: (context, index, animation) {
            return _buildItem(_items[index], animation, index);
          },
        ),
      ),
    );
  }
}
