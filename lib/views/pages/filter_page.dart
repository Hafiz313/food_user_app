import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_user/utils/app_color.dart';
import 'package:food_user/utils/app_constant.dart';
import 'package:food_user/utils/app_sizes.dart';
import 'package:food_user/utils/app_state.dart';
import 'package:food_user/views/pages/base_scaffold.dart';
import 'package:food_user/views/widgets/app_buttons.dart';
import 'package:food_user/views/widgets/app_text_styles.dart';

import 'home_page.dart';

class FilterPage extends StatefulWidget {
  static const id = "filter_page";

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  TypeSelectOrUnSelect selector = TypeSelectOrUnSelect.kUnSelect;
  String typeSelect = "";
  String categorySelect = "";
  var minController = TextEditingController();
  var mixController = TextEditingController();

  List<String> categoriesArray = [
    'All',
    'Burger',
    'Pizza',
    'Fish',
    'Patisserie',
    'Sushi',
    'Kabab'
  ];
  List<String> typeArray = [
    'All',
    'Vegan',
    'Vegetarian',
    'Diabetes',
  ];
  Map<int, bool> itemsSelectedValue = Map();
  Map<int, bool> itemsSelectedValue2 = Map();
  double minRange =0,mixRange= 1000;

  RangeValues _currentRangeValues =  RangeValues(0, 100);

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
                      kFilter,
                      style: textTitle(
                        color: kBlackColor,
                      ),
                    )),
                SizedBox(
                  height: AppSizes.appVerticalLg * 1,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                color: kWhiteColor,
                  borderRadius:
                  BorderRadius.circular(30)),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        "$kPriceRange (\$) ",
                        style: boldText(color: kBlackColor),
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                            showValueIndicator: ShowValueIndicator.always
                        ),
                        child: RangeSlider(
                          values: _currentRangeValues,
                          min: minRange,
                          max: mixRange,
                         // divisions: 9,
                          activeColor: kRedColor,
                          inactiveColor:kGrayColor ,
                          labels: RangeLabels(
                            _currentRangeValues.start.round().toString(),
                            _currentRangeValues.end.round().toString(),
                          ),
                          onChanged: (RangeValues values) {
                            setState(() {
                              _currentRangeValues = values;
                              minController.text = "${_currentRangeValues.start.round()}";
                              mixController.text = "${_currentRangeValues.end.round()}";
                            });
                          },
                        ),
                      ),
                      Container(
                        width: double.infinity,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: AppSizes.appHorizontalLg * 0.3 ),
                                    decoration: BoxDecoration(
                                        color: kGrayColor,
                                        borderRadius: BorderRadius.all(Radius.circular(20))),
                                    child: TextFormField(

                                      controller:  minController,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: AppSizes.appVerticalLg * .05,),

                                ],
                              ),
                            ),
                            Container(


                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.symmetric(horizontal: AppSizes.appVerticalLg * 0.2),
                              child:  Text("to",style: simpleText(color: kGrayText),),),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: AppSizes.appHorizontalLg * 0.3 ),
                                    decoration: BoxDecoration(
                                        color: kGrayColor,
                                        borderRadius: BorderRadius.all(Radius.circular(20))),
                                    child: TextFormField(
                                        textAlign: TextAlign.center,
                                      controller:  mixController,
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: AppSizes.appVerticalLg * .05,),

                                ],
                              ),
                            ),



                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppSizes.appVerticalLg * 0.2,
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Center(child: Text("${_currentRangeValues.start.round().toString()}",style: simpleText(color: kGrayText),)),
                            ),
                            Container(

                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.symmetric(horizontal: AppSizes.appVerticalLg * 0.2),
                              child:  Text("to",style: simpleText(color: kWhiteColor),),),

                            Expanded(
                              flex: 1,
                              child: Center(child: Text("${_currentRangeValues.end.round().toString()}",style: simpleText(color: kGrayText),)),
                            ),



                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppSizes.appVerticalLg * 0.4,
                      ),
                      Text(
                        kCategories,
                        style: boldText(color: kBlackColor),
                      ),
                      Container(
                        height: AppSizes.appVerticalLg * 1,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categoriesArray.length,
                          itemBuilder: (context, position) {
                            bool isCurrentIndexSelected =
                                itemsSelectedValue[position] == null
                                    ? false
                                    : itemsSelectedValue[position];

                            return Center(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    itemsSelectedValue[position] =
                                        !isCurrentIndexSelected;
                                    categorySelect = categoriesArray[position];
                                    /*  isCurrentIndexSelected= false;
                                    print("---------------${categoriesArray[position]}-------------------");

                                    if(selector==TypeSelectOrUnSelect.kSelect )
                                      selector = TypeSelectOrUnSelect.kUnSelect;
                                    else
                                      selector = TypeSelectOrUnSelect.kSelect;*/
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(
                                      AppSizes.appVerticalLg * 0.1),
                                  padding: EdgeInsets.all(
                                      AppSizes.appVerticalLg * 0.1),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: isCurrentIndexSelected
                                            ? kRedColor
                                            : kGrayText,
                                      ),
                                      color: kWhiteColor,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Text(
                                    categoriesArray[position],
                                    style: simpleText(
                                        color: isCurrentIndexSelected
                                            ? kRedColor
                                            : kGrayText,
                                        fontSize: 13),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Text(
                        kTypes,
                        style: boldText(color: kBlackColor),
                      ),
                      Container(
                        height: AppSizes.appVerticalLg * 1,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: typeArray.length,
                          itemBuilder: (context, position) {
                            bool isCurrentIndexSelected2 =
                                itemsSelectedValue2[position] == null
                                    ? false
                                    : itemsSelectedValue2[position];
                            //bool isCurrentIndexSelected = true;
                            return Center(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    typeSelect = typeArray[position];
                                    itemsSelectedValue2[position] =
                                        !isCurrentIndexSelected2;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(
                                      AppSizes.appVerticalLg * 0.1),
                                  padding: EdgeInsets.all(
                                      AppSizes.appVerticalLg * 0.1),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: isCurrentIndexSelected2
                                            ? kRedColor
                                            : kGrayText,
                                      ),
                                      color: kWhiteColor,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Text(
                                    typeArray[position],
                                    style: simpleText(
                                        color: isCurrentIndexSelected2
                                            ? kRedColor
                                            : kGrayText,
                                        fontSize: 13),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: AppSizes.appVerticalLg * 0.5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSizes.appVerticalLg * 0.5,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric( vertical: AppSizes.appVerticalLg * 0.2,horizontal: AppSizes.appHorizontalLg * 0.1),
                        decoration: new BoxDecoration(
                            border: Border.all(color: Colors.grey),

                            borderRadius: new BorderRadius.circular(30)
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child:Icon(FontAwesomeIcons.times,color:kRedColor ,),),
                            Expanded(
                                flex: 2,
                                child: Text(kClearFilter,style: simpleText(color:kBlackColor ),))

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: AppSizes.appVerticalLg * 0.2,),
                    Expanded(
                      flex: 2,
                      child: Container(

                          child: roundRectangleBtn(txt:"Next",bgColor: kRedColor,onPressed: (){
                            Navigator.pushNamed(context, HomePage.id);
                          })),
                    ),
                  ],
                ),
              ]),
            );
          },
        ));
  }
}
