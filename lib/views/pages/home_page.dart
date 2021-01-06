import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/views/pages/base_scaffold.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';

class HomePage extends StatefulWidget {
  static const id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imagesArray = [
    'icon',
    'icon_1',
    'icon_2',
    'icon_3',
    'icon_4',
    'icon_5'
  ];
  List<String>  categoriesArray= [
    'Burger',
    'Pizza',
    'Fish',
    'Patisserie',
    'Sushi',
    'Kabab'
  ];
  List<String>  categoryImages= [
    'buger.jpg',
    'pizza.jpeg',
    'fish.jpeg',
    'lazania.jpeg',
    'sushi.jpg',
    'kabab.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      drawer: true,
        body: Builder(
          builder: (BuildContext context) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                FontAwesomeIcons.search,
                                size: AppSizes.appVerticalLg * 0.3,
                                color: kIconColor,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(
                              left: AppSizes.appHorizontalLg * 0.5),
                          child: InkWell(
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                              },
                              child: Icon(FontAwesomeIcons.ellipsisV))),
                    ],
                  ),
                  SizedBox(
                    height: AppSizes.appVerticalLg * 0.8,
                  ),
                  /* Container(
              child: Text(
            kSearch,
            style: textTitle(
              color: kBlackColor,
            ),
          )),
          SizedBox(
            height: AppSizes.appVerticalLg * 0.8,
          ),
          Text(
            kLOCATION,
            style: simpleText(color: kGrayTextColor),
          ),
          SizedBox(
            height: AppSizes.appVerticalLg * 0.2,
          ),
          SizedBox(
            height: AppSizes.appVerticalLg * 0.5,
          ),*/
                  Text(
                    kCategories,
                    style: simpleText(color: kBlackColor, fontSize: 20),
                  ),
                  SizedBox(
                    height: AppSizes.appVerticalLg * 0.2,
                  ),
                  Container(
                    height: AppSizes.appVerticalLg * 3,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, position) {
                        return Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration:  BoxDecoration(
                                      color: kWhiteColor,
                                      borderRadius:
                                           BorderRadius.circular(30)),
                                  width: AppSizes.appVerticalLg * 1.5,
                                  child: Image(
                                    image: AssetImage(
                                        "images/${imagesArray[position]}.png"),
                                  )),
                            ),
                            SizedBox(
                              height: AppSizes.appVerticalLg * 0.1,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "${categoriesArray[position]}",
                                  style: simpleText(
                                      color: kBlackColor, fontSize: 13),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: imagesArray.length,
                    ),
                  ),
                  SizedBox(
                    height: AppSizes.appVerticalLg * 0.2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        kPopularRestaurants,
                        style: simpleText(color: kBlackColor, fontSize: 20),
                      ),
                      InkWell(
                          onTap: () {
                            print("---------------$kSEE_ALL-----------------");
                          },
                          child: Text(
                            kSEE_ALL,
                            style: simpleText(color: kGrayTextColor),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: AppSizes.appVerticalLg * 0.2,
                  ),
                  Container(
                    height: AppSizes.appVerticalLg * 4,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, position) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              decoration: new BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: new BorderRadius.circular(30)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image(
                                    image: AssetImage("images/${categoryImages[position]}"),
                                    fit: BoxFit.fill,
                                    width: AppSizes.appVerticalLg * 2.5,
                                    height: AppSizes.appVerticalLg * 2.5,
                                  )),
                            ),
                            Text(
                              "${categoriesArray[position]}",
                              style:
                                  simpleText(color: kBlackColor, fontSize: 15),
                            ),
                            Text(
                              "York, Toronto",
                              style: simpleText(color: kGrayTextColor),
                            ),
                            SizedBox(
                              height: AppSizes.appVerticalLg * 0.1,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: AppSizes.appVerticalLg * 0.1,
                                      horizontal:
                                          AppSizes.appHorizontalLg * 0.2),
                                  decoration: new BoxDecoration(
                                      color: kRedColor,
                                      borderRadius:
                                          new BorderRadius.circular(30)),
                                  child: Text(
                                    "4.5",
                                    style: simpleText(color: kWhiteColor),
                                  ),
                                ),
                                SizedBox(
                                  width: AppSizes.appVerticalLg * 0.1,
                                ),
                                Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: new BoxDecoration(
                                        color: kWhiteColor,
                                        borderRadius:
                                            new BorderRadius.circular(30)),
                                    width: AppSizes.appVerticalLg * 0.4,
                                    child: Image(
                                      image: AssetImage(
                                          "images/${imagesArray[position]}.png"),
                                    )),
                                SizedBox(
                                  width: AppSizes.appVerticalLg * 0.1,
                                ),
                                Icon(
                                  FontAwesomeIcons.star,
                                  size: AppSizes.appVerticalLg * 0.3,
                                  color: Colors.grey,
                                )
                              ],
                            )
                          ],
                        );
                      },
                      itemCount: imagesArray.length,
                    ),
                  ),
                  SizedBox(
                    height: AppSizes.appVerticalLg * 0.2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        kRestaurants,
                        style: simpleText(color: kBlackColor, fontSize: 20),
                      ),
                      InkWell(
                          onTap: () {
                            print("---------------$kSEE_ALL-----------------");
                          },
                          child: Text(
                            kSEE_ALL,
                            style: simpleText(color: kGrayTextColor),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: AppSizes.appVerticalLg * 0.2,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: imagesArray.length,
                    itemBuilder: (context, position) {
                      return Stack(children: [
                        Container(
                          width: double.infinity,
                          height: AppSizes.appVerticalLg * 2.4,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: new BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images/${categoryImages[position]}"),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: AppSizes.appVerticalLg * 2.4,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.black45, Colors.transparent]),
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: AppSizes.appVerticalLg * 0.3,
                              horizontal: AppSizes.appVerticalLg * 0.3,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "${categoriesArray[position]}",
                                  style: simpleText(
                                      color: kWhiteColor, fontSize: 20),
                                ),
                                Text(
                                  "York, Toronto",
                                  style: simpleText(color: kWhiteColor),
                                ),
                                SizedBox(
                                  height: AppSizes.appVerticalLg * 0.3,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical:
                                              AppSizes.appVerticalLg * 0.1,
                                          horizontal:
                                              AppSizes.appHorizontalLg * 0.2),
                                      decoration: new BoxDecoration(
                                          color: kRedColor,
                                          borderRadius:
                                              new BorderRadius.circular(30)),
                                      child: Text(
                                        "4.5",
                                        style: simpleText(color: kWhiteColor),
                                      ),
                                    ),
                                    SizedBox(
                                      width: AppSizes.appVerticalLg * 0.1,
                                    ),
                                    Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: new BoxDecoration(
                                            color: kWhiteColor,
                                            borderRadius:
                                                new BorderRadius.circular(30)),
                                        width: AppSizes.appVerticalLg * 0.4,
                                        child: Image(
                                          image: AssetImage(
                                              "images/${imagesArray[position]}.png"),
                                        )),
                                    SizedBox(
                                      width: AppSizes.appVerticalLg * 0.1,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.star,
                                      size: AppSizes.appVerticalLg * 0.3,
                                      color: Colors.grey,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ]);
                    },
                  ),
                ]);
          },
        ));
  }
}
