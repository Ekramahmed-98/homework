import 'package:flutter/material.dart';

import '../controller/firebase/auth_user_email.dart';
import '../controller/firebase/google_firebase.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  AuthUserFirebaseController firebaseSign=AuthUserFirebaseController();
  FirebaseGoogle firebaseGoogle=FirebaseGoogle();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String email = '';
  bool showPassword = true;
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 75),
          child: Form(
            child: ListView(
              children: [
                          Image.asset('assets/images/in.png'),
                    Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),

               //  ),
                const SizedBox(
                  height: 10,
                ),

                TextFormField(
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
                    labelText:'email' ,
                    labelStyle: TextStyle(color: Colors.grey),
                    hintText:'email' ,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.black,
                        )),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Password',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            showPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            showPassword ? 'Show' : 'Hide',
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                TextFormField(
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
                    fontSize: 11,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        )),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  maxLength: 8,
                ),

                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,activeColor: Colors.red,
                      value: isCheck,
                      onChanged: (value) {
                        setState(() {
                          isCheck = value!;
                        });
                      },
                    ),
                    const Text(
                      'Rememeber me',
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    const Text(
                      'Forgot password?',
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),


                    onPressed: () {
                      Navigator.pushNamed(context, 'SignUp');
                    },



                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),

                  ),
                ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Center(
                         child: Text(
                           ' Don’t have an account?',
                           style: TextStyle(fontSize: 12, color: Colors.black),
                         ),
                       ),
                       SizedBox(
                         width: 5,
                       ),
                       Text(
                         'Sign up',
                         style: TextStyle(fontSize: 12, color: Colors.red),
                       ),
                     ],
                  ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        height: 6,
                        color:Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Or login with',
                      style: TextStyle(fontSize: 12, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        height: 6,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Facebook.png'),
                    SizedBox(width:25 ,),
                    InkWell(

                        onTap: ()  async {
                          await firebaseGoogle.signInWithGoogle().then((value) {
                            Navigator.of(context).pushNamed('BaseScreen');
                          },);
                    },
                        child: Image.asset('assets/images/Group.png')),
                  ],
                )
           ]
    ),
    ),
      ),
    ),
          );
          }
          }

