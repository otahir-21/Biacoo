
import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/lab/SelectService.dart';
import 'package:biacoo/src/view/pharmacy/VerifyOrder.dart';
import 'package:flutter/material.dart';
class SelectCategoryMoreDetail extends StatefulWidget {
  @override
  SelectCategoryMoreDetailState createState() => new SelectCategoryMoreDetailState();
}

class SelectCategoryMoreDetailState extends State<SelectCategoryMoreDetail> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
  CheckBoxListTileModel.getCategoryList();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:SafeArea(
          bottom: false,
          left: false,
          right: false,
          top: true,
          child: SingleChildScrollView(
            child:Column(
                children: <Widget>[
                  SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
                  Padding(padding: EdgeInsets.all(1*SizeConfig.heightMultiplier!),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          Images.bHome,
                          width:7.0 * SizeConfig.imageSizeMultiplier!,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute( builder: (BuildContext context){
                                    return ProfileDetailScreen();
                                  },),
                                );
                              },
                              child: Container(

                                  padding: EdgeInsets.all(0.2*SizeConfig.heightMultiplier!),

                                  width: 12*SizeConfig.widthMultiplier!,
                                  height: 4.5*SizeConfig.heightMultiplier!,
                                  decoration: BoxDecoration(
                                      color:Colors.grey,
                                      shape: BoxShape.circle
                                  ),

                                  child:Stack(
                                    children: [
                                      CircleAvatar(
                                        radius: 30.0,
                                        backgroundImage:NetworkImage('https://png.pngtree.com/png-clipart/20190924/original/pngtree-businessman-user-avatar-free-vector-png-image_4827807.jpg'),
                                        backgroundColor: Colors.red,
                                      ),
                                      Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child:  Container(
                                            padding: EdgeInsets.all(2.0),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white
                                            ),
                                            child: Icon(Icons.edit,
                                              color: Colors.black,
                                              size: 10.0,),
                                          ))
                                    ],
                                  )
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute( builder: (BuildContext context){
                                    return VerifyOrder();
                                  },),
                                );
                              },
                              child: Container(

                                padding: EdgeInsets.all(0.2*SizeConfig.heightMultiplier!),

                                width: 12*SizeConfig.widthMultiplier!,
                                height: 4.5*SizeConfig.heightMultiplier!,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.grey),
                                    // color:Colors.white,
                                    shape: BoxShape.circle
                                ),

                                child:CircleAvatar(
                                  radius: 30.0,
                                  backgroundColor: Colors.transparent,
                                  child: Icon(Icons.shopping_cart,color: Colors.grey,),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                            child: InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child:  Icon(Icons.arrow_back ,size: 7*SizeConfig.imageSizeMultiplier!, color: Colors.black,),
                            ),
                          )
                      ),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                            child: Text("Electrolytes",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                          )
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                            child: InkWell(
                              onTap: (){

                                // Navigator.of(context).pushReplacement(
                                //   MaterialPageRoute( builder: (BuildContext context){
                                //     return WelcomeScreen();
                                //   },),
                                // );
                              },
                              child:  Icon(Icons.filter_list ,size: 7*SizeConfig.imageSizeMultiplier!, color: Colors.white,),
                            ),
                          )
                      ),


                    ],
                  ),
                  SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
                  Container(
                    height: 60*SizeConfig.heightMultiplier!,
                    child:  new ListView.builder(
                        itemCount: checkBoxListTileModel.length,
                        itemBuilder: (BuildContext context, int index) {
                          return new Card(
                            child: new Container(
                              padding: new EdgeInsets.all(10.0),
                              child: Column(
                                children: <Widget>[
                                  new CheckboxListTile(
                                      activeColor: Colors.grey,
                                      controlAffinity: ListTileControlAffinity.leading,
                                      value: checkBoxListTileModel[index].isCheck,
                                      dense: true,
                                      //font change
                                      title: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          new Text(
                                            checkBoxListTileModel[index].title!,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.5),
                                          ),

                                        ],
                                      ),


                                      onChanged: (val) {
                                        itemChange(val!, index);
                                      })
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 40.0 * SizeConfig.widthMultiplier!,
                      height: 5.0 * SizeConfig.heightMultiplier!,
                      margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ,bottom: 1.0*SizeConfig.heightMultiplier!),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [Color(0xffC1272D), Color(0xffC1272D), Color(0xff7D1A6D), Color(0xff28225E)]
                        ),
                      ),
                      child: TextButton(
                        child: Text('Next', style: TextStyle(fontSize: 2.0 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute( builder: (BuildContext context){
                              return SelectService();
                            },),
                          );
                        },
                      ),
                    ),
                  ),
                ]
            ),

          ),
        )
    );
  }
  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
    print( checkBoxListTileModel[index].id);
  }

}
class CheckBoxListTileModel {
  int? id;
  String? title;
  bool? isCheck;

  CheckBoxListTileModel({this.id, this.title,  this.isCheck});

  static List<CheckBoxListTileModel> getCategoryList() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          id: 1,
          title: "Sodium",
          isCheck: true),
      CheckBoxListTileModel(
          id: 2,
          title: "Potassium",
          isCheck: false),
      CheckBoxListTileModel(
          id: 3,
          title: "Chloride ",
          isCheck: true),
      CheckBoxListTileModel(
          id: 4,
          title: "Bicarbonate",
          isCheck: false),




    ];
  }


}
