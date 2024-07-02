import 'package:flutter/material.dart';
import 'package:green_tech/screens/basic.dart';
import 'package:green_tech/screens/forgottenpassword.dart';
import 'package:green_tech/screens/signin.dart';
import 'package:green_tech/widget/textfiled.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
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
              "أهلا بك",
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
          padding: const EdgeInsets.fromLTRB(110, 10, 20, 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ForgottenPassword();
                  },
                ),
              );
            },
            child: const Text(
              ' نسيت كلمة السر ؟',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 10, 8, 10),
              child: ButtonReuse(
                hight: 50,
                width: 125,
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return SignUp();
                      }),
                    ),
                  );
                },
                text: "مستخدم جديد",
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
              child: ButtonReuse(
                hight: 50,
                width: 125,
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return BasicPage();
                      }),
                    ),
                  );
                },
                text: "تسجيل دخول",
              ),
            ),
          ],
        )
      ]),
    );
  }
}
