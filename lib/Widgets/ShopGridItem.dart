import 'package:flutter/material.dart';
import 'Constant.dart';
import 'package:e_comshop/custom_color_scheme.dart';

class ShopGridItem extends StatelessWidget {
  final shopList;
  const ShopGridItem({Key key, this.shopList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('shop is tapped');
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(borderRadius)),
        margin: EdgeInsets.only(top: 10, bottom: 15, right: 15, left: 15),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: borderRadius, topRight: borderRadius,),
                  color: Color.fromRGBO(246, 246, 246, 1),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: borderRadius, topRight: borderRadius,),
                  child: Image.asset(
                    shopList.image,
                    height: 100,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                  left: 8,
                  top: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shopList.name,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      shopList.address,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
