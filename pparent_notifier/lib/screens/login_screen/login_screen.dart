import 'package:flutter/material.dart';
import 'package:pparent_notifier/components/custom_buttons.dart';
// ignore: unused_import
import '../../constants.dart';
import 'package:pparent_notifier/screens/home_screen/home_screen.dart';

late bool _passwordVisible;

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //validate our form now

  // ignore: unused_field
  final _formkey = GlobalKey<FormState>();

  //change current state
  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //when user taps anywhere keyboard hide
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: ListView(
          //divided body into two parts
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              //use mediaquery inorder to fill all screen sizes in same manner
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png',
                      height: 150, width: 150),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  // ignore: prefer_const_constructors
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Text('Hi',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w100,
                                  )),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        width: 5.0,
                      ),
                      // ignore: prefer_const_constructors
                      Text('Parents',
                          style: Theme.of(context).textTheme.bodySmall)
                    ],
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: kDefaultPadding / 6,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    'sign in to continue',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                // ignore: prefer_const_constructors
                borderRadius: BorderRadius.only(
                  // ignore: prefer_const_constructors
                  topLeft: Radius.circular(kDefaultPadding * 3),
                  // ignore: prefer_const_constructors
                  topRight: Radius.circular(kDefaultPadding * 3),
                ),
                color: kOtherColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          // ignore: prefer_const_constructors
                          sizedBox,
                          buildEmailField(),
                          // ignore: prefer_const_constructors
                          sizedBox,
                          buildPasswordField(),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          // ignore: sized_box_for_whitespace, prefer_const_constructors
                          DefaultButton(
                            onPress: () {
                              if (_formkey.currentState!.validate()) {
                                //go to next activity
                                Navigator.pushNamedAndRemoveUntil(context,
                                    HomeScreen.routeName, (route) => false);
                              }
                            },
                            title: 'SIGN IN',
                            iconData: Icons.arrow_forward_outlined,
                          ),
                          // ignore: prefer_const_constructors
                          Text(
                            'REGISTER',
                            textAlign: TextAlign.end,
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 15.0,
                            ),
                          ),

                          // ignore: prefer_const_constructors
                          sizedBox,
                          // ignore: prefer_const_constructors
                          Align(
                            alignment: Alignment.bottomRight,
                            // ignore: prefer_const_constructors
                            child: Text(
                              'Forgot Password',
                              textAlign: TextAlign.end,
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 15.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      // ignore: prefer_const_constructors
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 17.0,
        fontWeight: FontWeight.w300,
      ),
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
        labelText: 'Mobile number/Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),

      // ignore: body_might_complete_normally_nullable
      validator: (value) {
        //for validation
        RegExp regExp = RegExp(emailpattern);
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
          //if doesn't matches the pattern, like
          //itnot contain @
        } else if (!regExp.hasMatch(value)) {
          return 'Please enter Email/Mobile number';
        }
      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
        obscureText: _passwordVisible,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.visiblePassword,
        // ignore: prefer_const_constructors
        style: TextStyle(
          color: kTextBlackColor,
          fontSize: 17.0,
          fontWeight: FontWeight.w300,
        ),
        // ignore: prefer_const_constructors
        decoration: InputDecoration(
          labelText: 'Password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
            icon: Icon(_passwordVisible
                ? Icons.visibility_off_outlined
                : Icons.visibility_off_outlined),
            iconSize: kDefaultPadding,
          ),
        ),
        // ignore: body_might_complete_normally_nullable
        validator: (value) {
          if (value!.length < 8) {
            return 'Must be more than 8 character';
          }
        });
  }
}
