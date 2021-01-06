import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/utils/app_state.dart';
import 'package:food_user/views/pages/base_scaffold.dart';
import 'package:food_user/views/pages/filter_page.dart';
import 'package:food_user/views/widgets/app_buttons.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';

class SearchPage extends StatefulWidget {
  static const id = "search_page";

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TypeSelectOrUnSelect selector = TypeSelectOrUnSelect.kUnSelect;
  String typeSelect= "";
  String categorySelect= "";

  List<String>  categoriesArray= [
    'All',
    'Burger',
    'Pizza',
    'Fish',
    'Patisserie',
    'Sushi',
    'Kabab'
  ];
  List<String>  typeArray= [
    'All',
    'Vegan',
    'Vegetarian',
    'Diabetes',

  ];
  Map<int, bool> itemsSelectedValue = Map();
  Map<int, bool> itemsSelectedValue2 = Map();
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        leftIcon: true,
        menuIcon: true,
        body: Builder(
          builder: (BuildContext context) {
            return Container(
              child: Column(children: [
                Container(
                    margin: EdgeInsets.only(top: AppSizes.appVerticalLg * 1),
                    alignment: Alignment.topLeft,
                    child: Text(
                      kSearch,
                      style: textTitle(
                        color: kBlackColor,
                      ),
                    )),
                SizedBox(
                  height: AppSizes.appVerticalLg * 1,
                ),
                Container(
                  /*  decoration: BoxDecoration(
                //  color: kWhiteColor,
                  borderRadius:
                  BorderRadius.circular(30)),*/

                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            kLOCATION,
                            style: simpleText(color: kGrayTextColor),
                          ),
                          InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, FilterPage.id);
                              },
                              child: Image(image: AssetImage("images/filter_icon.png")))
                        ],
                      ),
                      SizedBox(
                        height: AppSizes.appVerticalLg * 0.2,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: kWhiteColor,
                            //   border: Border.all(color: Colors.grey,),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
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
                      Divider(
                        thickness: 1,
                        color: kGrayText,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: AppSizes.appVerticalLg * 0.1,),
                              Text(
                                kCATEGORIES,
                                style: simpleText(color: kGrayText),
                              ),
                              SizedBox(height: AppSizes.appVerticalLg * 0.25,),
                              Text(
                                "$categorySelect",
                                style: boldText(color: kBlackColor),
                              )
                            ],
                          )),
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: AppSizes.appHorizontalLg * 0.3
                            ),
                            height: AppSizes.appVerticalLg * 0.8,color: kGrayText,width: 2,),

                          Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SizedBox(height: AppSizes.appVerticalLg * 0.1,),
                              Text(
                                kTYPES,
                              style: simpleText(color: kGrayText),
                              ),
                              SizedBox(height: AppSizes.appVerticalLg * 0.25,),
                              Text(
                                "$typeSelect",
                                style: boldText(color: kBlackColor),
                              )
                            ],
                          )),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: kGrayText,
                      ),
                      SizedBox(height: AppSizes.appVerticalLg * 0.4,),
                      Text(kCategories,style: boldText(color: kBlackColor),),
                      Container(
                        height: AppSizes.appVerticalLg * 1,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categoriesArray.length,
                          itemBuilder: (context, position) {
                           bool isCurrentIndexSelected = itemsSelectedValue[position] == null ? false : itemsSelectedValue[position];

                            return Center(
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    itemsSelectedValue[position] = !isCurrentIndexSelected;
                                    categorySelect=categoriesArray[position];
                                  /*  isCurrentIndexSelected= false;
                                    print("---------------${categoriesArray[position]}-------------------");

                                    if(selector==TypeSelectOrUnSelect.kSelect )
                                      selector = TypeSelectOrUnSelect.kUnSelect;
                                    else
                                      selector = TypeSelectOrUnSelect.kSelect;*/
                                  });

                                },
                                child: Container(
                                  margin: EdgeInsets.all(AppSizes.appVerticalLg * 0.1),
                                  padding: EdgeInsets.all(AppSizes.appVerticalLg * 0.1),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: isCurrentIndexSelected ? kRedColor :kGrayText,),
                                      color: kWhiteColor,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Text(
                                    categoriesArray[position],
                                    style: simpleText(
                                        color:isCurrentIndexSelected ? kRedColor :kGrayText ,
                                        fontSize: 13),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            );
                          },

                        ),
                      ),
                      Text(kTypes,style: boldText(color: kBlackColor),),
                      Container(
                        height: AppSizes.appVerticalLg * 1,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: typeArray.length,
                          itemBuilder: (context, position) {
                             bool isCurrentIndexSelected2 = itemsSelectedValue2[position] == null ? false : itemsSelectedValue2[position];
                            //bool isCurrentIndexSelected = true;
                            return Center(
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    typeSelect=typeArray[position];
                                    itemsSelectedValue2[position] = !isCurrentIndexSelected2;

                                  });

                                },
                                child: Container(
                                  margin: EdgeInsets.all(AppSizes.appVerticalLg * 0.1),
                                  padding: EdgeInsets.all(AppSizes.appVerticalLg * 0.1),
                                  decoration: BoxDecoration(
                                      border: Border.all(color:  isCurrentIndexSelected2 ? kRedColor :kGrayText,),
                                      color: kWhiteColor,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Text(
                                    typeArray[position],
                                    style: simpleText(
                                        color:isCurrentIndexSelected2 ? kRedColor :kGrayText ,
                                        fontSize: 13),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            );
                          },

                        ),
                      ),
                      SizedBox(height: AppSizes.appVerticalLg * 0.5,),
                      Container(
                        width: double.infinity,
                          child: roundRectangleBtn(txt:kApply))
                    ],
                  ),
                ),
              ]),
            );
          },
        ));
  }
}
