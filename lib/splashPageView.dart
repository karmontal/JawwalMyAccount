import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'main.dart';

class SplashPageView extends MyHomePageState {
  @override
Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children:[  
      Scaffold(
        body: Container(
          decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/mipmap-xxxhdpi-v4/jawwal_splash.jpg"), fit: BoxFit.cover),
              ),
            child: 
              Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(""),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/mipmap-xxxhdpi-v4/splash_logo_1.png"),
                          width: 100,
                        ),
                        Text(""),
                        GestureDetector(
                          onTap: (){
                            //Toast.show("تم الضغط على اكتشف جوال حسابي",this.context,duration: Toast.LENGTH_SHORT , gravity: Toast.BOTTOM);
                            return _simpleDialog();
                          },
                          child:
                            Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              backgroundBlendMode: BlendMode.softLight,
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(25))),
                              child: 
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(Icons.arrow_back, color: Colors.white,),
                                    Text("اكتشف جوال حسابي",style: TextStyle(fontFamily: "jawwal", color: Colors.white),)
                                  ],
                                ),
                            ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                          onTap: (){
                            Toast.show("التطبيق عبارة عن تجربة للواجهات فقط",context,duration: Toast.LENGTH_SHORT , gravity: Toast.BOTTOM);
                          },
                          child:
                            Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(color: Colors.green, width: 0),
                              borderRadius: BorderRadius.all(Radius.circular(25))),
                              child: 
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text("تسجيل الدخول",style: TextStyle(fontFamily: "jawwal", color: Colors.white),)
                                  ],
                                ),
                            ),
                        ),
                        Text(""),
                        GestureDetector(
                          onTap: (){
                            Toast.show("التطبيق عبارة عن تجربة للواجهات فقط",this.context,duration: Toast.LENGTH_SHORT , gravity: Toast.BOTTOM);
                          },
                          child:
                            Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white, width: 0),
                              borderRadius: BorderRadius.all(Radius.circular(25))),
                              child: 
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text("انشاء حساب جديد",style: TextStyle(fontFamily: "jawwal", color: Colors.blue),)
                                  ],
                                ),
                            ),
                        )
                  ],
                )
              ],
            ),
        ),
      ),
      Banner(
        location: BannerLocation.topStart,
        message: "تطبيق نسخة",
      ),
    ]
  );
  }

  Widget _simpleDialog(){
    return SimpleDialog(
      title: Text("تسجيل الدخول"),
      children: <Widget>[
        Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 7,
              maxLengthEnforced: true,
            )
          ],
        )
      ],
    );
    
  }
}