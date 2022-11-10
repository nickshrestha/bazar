// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unused_import, library_private_types_in_public_api

import 'package:bazar/HomePage.dart';
import 'package:bazar/Signup.dart';
import 'package:bazar/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with TickerProviderStateMixin {
  List<String>? checkboxGroupValues;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController?.dispose();
    passwordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              color: primaryColor,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Align(
                          alignment: AlignmentDirectional(-0.06, -0.09),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              'https://picsum.photos/seed/556/600',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          )),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                          child: TextFormField(
                            controller: emailController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintStyle: bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: primaryText,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: primaryText,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: tertiaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: tertiaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            style: bodyText1,
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.21),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                          child: TextFormField(
                            controller: passwordController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintStyle: bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: primaryText,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: primaryText,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: tertiaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: tertiaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            style: bodyText1,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.94, 0.51),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePageWidget()),
                                );
                              },
                              child: Text(
                                'Login',
                              )),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.63),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePageWidget()),
                              );
                            },
                            child: Text(
                              'Forget Password ?',
                              style: bodyText1,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.73),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                          child: Text(
                            'Don\'t have an account ?',
                            style: bodyText1,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.86),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupWidget()),
                            );
                          },
                          child: Text('Sign up !', style: bodyText1),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 50, 8, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF090F13),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0x3314181B),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF090F13),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0x3314181B),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: FaIcon(
                                FontAwesomeIcons.apple,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF090F13),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0x3314181B),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: FaIcon(
                                FontAwesomeIcons.facebookF,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF090F13),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0x3314181B),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: Icon(
                                Icons.phone_sharp,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
