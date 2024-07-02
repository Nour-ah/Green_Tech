import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final IconData icon;

  const MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon,
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _confirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        validator: (data) {
          if (data!.isEmpty) {
            return "Field is required";
          }
        },
        controller: widget.controller,
        obscureText: widget.obscureText && !_confirmPasswordVisible,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.elliptical(15, 15),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(
            widget.icon,
            color: Color(0xff299C4D),
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _confirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Color(0xff299C4D),
                  ),
                  onPressed: () {
                    setState(() {
                      _confirmPasswordVisible = !_confirmPasswordVisible;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}

class ButtonReuse extends StatelessWidget {
  const ButtonReuse({super.key, required this.text, this.onTap, required this.hight, required this.width});
  final String text;
  final VoidCallback? onTap;
  final double hight,width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 228, 221, 12)//(0xFF86653B)
            , borderRadius: BorderRadius.circular(10)),
        width: width,
        height: hight,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Color.fromARGB(255, 25, 134, 60), fontSize: 18,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
