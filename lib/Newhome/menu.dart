import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class Items{
  final String ? title;
  final String ? image;
  Items({this.title, this.image});
}

class _MenuState extends State<Menu> {
  final List<Items> _items = [
    Items(title: 'នំត្នោត',image: 'assets/images/food2.jpg'),
    Items(title: 'បុកល្ហុង',image: 'assets/images/food3.jpg'),
    Items(title: 'នំខ្មែរ',image: 'assets/images/food4.jpg'),
    Items(title: 'នំខ្មែរ',image: 'assets/images/food5.jpg'),
    Items(title: 'នំខ្មែរ',image: 'assets/images/food6.jpg'),
    Items(title: 'នំខ្មែរ',image: 'assets/images/drink.jpg'),
    Items(title: 'នំខ្មែរ',image: 'assets/images/food2.jpg'),
    Items(title: 'នំខ្មែរ',image: 'assets/images/food3.jpg'),
    Items(title: 'នំខ្មែរ',image: 'assets/images/food4.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Menu'),
      ),
      body: ListView(
        children:<Widget> [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Text(
              "Categories",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            margin: EdgeInsets.only(top: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _items.length,
              itemBuilder: (BuildContext context, int index) {
                return _categoryList(_items[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Text(
              "Featured Food",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 150,
            margin: EdgeInsets.only(top: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return _featuredProduct(context);
              },
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.grey.shade300,
            height: 60.0,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    "Recent Food",
                    style: Theme.of(context).textTheme.title,
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      print("hello");
                    },
                    child: Text("View all"),
                  ),
                ],
              ),
            ),
          ),
           SizedBox(height: 4.0),
          Column(
            children: this._items.map((e) =>  ProductItem(items: e,)).toList(),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
  Widget _categoryList(Items item) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
                image: DecorationImage(
                    image: AssetImage(item.image.toString()), fit: BoxFit.cover)),
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Text('${item.title.toString()}',style: TextStyle(
            fontSize: 20,
            color: Colors.red
          ),)
        ],
      ),
    );
  }
  Widget _featuredProduct(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage('assets/images/images.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 150,
            height: 150,
          ),
          Positioned(
            bottom: 0,
            left: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              color: Colors.blueGrey,
              child: Text(
                "Sofa Set",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}


class ProductItem extends StatelessWidget {
   final Function ? onPressed;
   final Items items;
   ProductItem({ required this.items, this.onPressed});
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: MaterialButton(
        padding: const EdgeInsets.all(0),
        elevation: 0.5,
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () => this.onPressed!(),
        child: Row(
          children: <Widget>[
            Ink(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('assets/images/food6.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text("Drawer Food"),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Rs. 8000",)
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {
                          print('tapped');
                        },
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
