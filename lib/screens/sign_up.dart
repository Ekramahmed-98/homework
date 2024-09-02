import 'package:flutter/material.dart';
import 'package:homework/constant/bottom.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  String email = '';

  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListView(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/up.png'),

                  const Padding(
                    padding: EdgeInsets.only(right: 270),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: TextFormField(
                          controller: emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'حقل البريد الالكتروني مطلوب';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            email = value;
                            print(value);
                          },
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            labelText: 'email ',
                            hintText: 'email ',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                )),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: TextFormField(
                          controller: passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'كلمة السر مطلوبة';
                            }

                            return null;
                          },
                          onChanged: (value) {
                            email = value;
                            print(value);
                          },
                          obscureText: showPassword,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                              child: Icon(
                                showPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                              ),
                            ),
                            labelText: 'Password ',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                )),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          // maxLength: 8,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.all(9.0),
                  //   child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //       backgroundColor: Colors.red,
                  //       padding: EdgeInsets.symmetric(vertical: 12.0),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(15.0),
                  //       ),
                  //     ),
                  //     onPressed: () {
                  //       Navigator.of(context).pushNamed('Profile');
                  //     },
                  //     child: Text(
                  //       'Sign up',
                  //       style: TextStyle(
                  //         fontSize: 18.0,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //
                  //   ),
                  // ),
                  CustomButton(
                      text: 'sign Up',
                      onTap: () {
                        Navigator.of(context).pushNamed('BaseScreen');
                      },
                      backgroundColor: Colors.red,
                      textColor: Colors.white),

                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      InkWell(
                          onTap: () {},
                          child: const Text(
                            ' Sign in',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.black,
                    indent: 15,
                    endIndent: 15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/Facebook.png'),
                      const SizedBox(
                        width: 25,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Image.asset('assets/images/Group.png')),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      'By signing up you agree with our T&C and privacy policy'),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
