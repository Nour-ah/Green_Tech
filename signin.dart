import 'package:flutter/material.dart';
import 'package:green_tech/screens/login.dart';
import 'package:green_tech/widget/textfiled.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 23, 139, 60),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const CircleAvatar(
            radius: 115,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(
              'assets/images/لوجو.jpg',
            ),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "مستخدم جديد",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
                fontSize: 38,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        MyTextField(
          controller: emailController,
          hintText: 'الاسم',
          obscureText: false,
          icon: Icons.person,
        ),
        const SizedBox(
          height: 10,
        ),
        MyTextField(
          controller: passwordController,
          hintText: 'البريد الالكتروني',
          obscureText: false,
          icon: Icons.email,
        ),
        const SizedBox(
          height: 10,
        ),
        MyTextField(
          controller: passwordController,
          hintText: 'كلمة السر',
          obscureText: true,
          icon: Icons.key,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(80, 20, 80, 10),
          child: ButtonReuse(
            hight: 50,
            width: 125,
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) {
                    return LogInPage();
                  }),
                ),
              );
            },
            text: "تسجيل",
          ),
        ),
      ]),
    );
  }
}
