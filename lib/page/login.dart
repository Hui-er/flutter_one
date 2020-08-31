import 'package:flutter/material.dart';
import 'package:flutter_one/common/language/default_localizations.dart';
import 'package:flutter_one/style/gsy_style.dart';
import 'package:flutter_one/weiget/animated_background.dart';
import 'package:flutter_one/weiget/gsy_flex_button.dart';
import 'package:flutter_one/weiget/gsy_input_widget.dart';
import 'package:flutter_one/weiget/particle/particle_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userController = new TextEditingController();

  final TextEditingController pwController = new TextEditingController();

  var _userName = "";

  var _password = "";

  loginIn() async {
    Fluttertoast.showToast(
        msg: "账号密码登陆的 API 将被 Github 弃用，建议使用尝试使用安全登陆。",
        gravity: ToastGravity.CENTER,
        toastLength: Toast.LENGTH_LONG);
    return;
  }

//  oauthLogin() async {
//    String code = await NavigatorUtils.goLoginWebView(context,
//        Address.getOAuthUrl(), "${GSYLocalizations.i18n(context).oauth_text}");
//
//    if (code != null && code.length > 0) {
//      ///通过 redux 去执行登陆流程
//      StoreProvider.of<GSYState>(context).dispatch(OAuthAction(context, code));
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        color: Theme.of(context).primaryColorLight,
        child: Stack(children: <Widget>[
          Positioned.fill(child: AnimatedBackground()),
          Positioned.fill(child: ParticlesWidget(30)),
          Center(
            ///防止overFlow的现象
            child: SafeArea(
              ///同时弹出键盘不遮挡
              child: SingleChildScrollView(
                child: new Card(
                  elevation: 5.0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  color: GSYColors.cardWhite,
                  margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: new Padding(
                    padding: new EdgeInsets.only(
                        left: 30.0, top: 40.0, right: 30.0, bottom: 0.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image(
                            image: new AssetImage(GSYICons.DEFAULT_USER_ICON),
                            width: 90.0,
                            height: 90.0),
                        new Padding(padding: new EdgeInsets.all(10.0)),
                        new GSYInputWidget(
                          hintText: "github用户名，清不要用邮箱",
                          iconData: GSYICons.LOGIN_USER,
                          onChanged: (String value) {
                            _userName = value;
                          },
                          controller: userController,
                        ),
                        new Padding(padding: new EdgeInsets.all(10.0)),
                        new GSYInputWidget(
                          hintText: "请输入密码",
                          iconData: GSYICons.LOGIN_PW,
                          obscureText: true,
                          onChanged: (String value) {
                            _password = value;
                          },
                          controller: pwController,
                        ),
                        new Padding(padding: new EdgeInsets.all(10.0)),
                        Container(
                          height: 50,
                          child: Row(
                            children: <Widget>[
                              new Expanded(
                                child: new GSYFlexButton(
                                  text:
                                      "账号登录",
                                  color: Theme.of(context).primaryColor,
                                  textColor: GSYColors.textWhite,
                                  fontSize: 16,
                                  onPress: loginIn,
                                ),
                              ),
                              new SizedBox(
                                width: 10,
                              ),
                              new Expanded(
                                child: new GSYFlexButton(
                                  text: "安全登陆",
                                  color: Theme.of(context).primaryColor,
                                  textColor: GSYColors.textWhite,
                                  fontSize: 16,
//                                  onPress: oauthLogin,
                                ),
                              ),
                            ],
                          ),
                        ),
                        new Padding(padding: new EdgeInsets.all(15.0)),
                        InkWell(
                          onTap: () {
//                            CommonUtils.showLanguageDialog(context);
                          },
                          child: Text(
                            "切换语言",
                            style: TextStyle(color: GSYColors.subTextColor),
                          ),
                        ),
                        new Padding(padding: new EdgeInsets.all(15.0)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
