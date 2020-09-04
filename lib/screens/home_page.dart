import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecotesting/models/functionModel.dart';
import 'package:ecotesting/models/productCategoryModel.dart';
import 'package:ecotesting/models/productModel.dart';
import 'package:ecotesting/widgets/drawer.dart';
import 'package:ecotesting/widgets/functionality.dart';
import 'package:ecotesting/widgets/itemCard.dart';
import 'package:ecotesting/widgets/productCategoryCard.dart';
import 'package:flutter/material.dart';

import '../confiq.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "KENA KATA",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.message),
            tooltip: 'Add new entry',
            onPressed: () {/* ... */},
          ),
        ],
        bottom: PreferredSize(
            child: _searchBar(), preferredSize: Size.fromHeight(50)),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.shop),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: AppDrawer(),
      body: CustomScrollView(

        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red
              ),
            )
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          // _searchBar(),
          // _buildOfferContainer(),
          SliverToBoxAdapter(
            child: Container(
              height: 80,
              width: double.infinity,
              child: ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: functionality.length,
                itemBuilder: (context, index) => Functionality(
                  functionModel: functionality[index],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: GridView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: productCategoryModel.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // mainAxisSpacing: 10,
                  // crossAxisSpacing: 10,
                  childAspectRatio: 0.80,
                ),
                itemBuilder: (context, index) => ProductCategoryCard(
                  product: productCategoryModel[index],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                color: ColorMaterial.lightColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Just For You                                                                                  ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(

              child: GridView.builder(
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
//                    mainAxisSpacing: 20,
//                    crossAxisSpacing: 20,
                  childAspectRatio: 0.57,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: ColorMaterial.lightColor,
        height: 50,
        items: <Widget>[
          Icon(
            Icons.home,
            color: Colors.black,
            size: 20,
          ),
          Icon(
            Icons.sms,
            color: Colors.black,
            size: 20,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
            size: 20,
          ),
          Icon(
            Icons.person,
            color: Colors.black,
            size: 20,
          ),
        ],
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.search),
          Flexible(
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(5),
                hintText: "Search Product",
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }


}
