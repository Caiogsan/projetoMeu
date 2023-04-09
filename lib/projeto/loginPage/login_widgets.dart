// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  bool obscureText;
  String hintText;
  TextEditingController controlador;
  TextFieldCustom({
    Key? key,
    required this.obscureText,
    required this.hintText,
    required this.controlador,
  }) : super(key: key);

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 2,
              color: const Color.fromARGB(255, 49, 219, 52),
            )),
        width: largura * 0.75,
        height: altura * 0.05,
        child: Padding(
          padding: EdgeInsets.only(left: largura * 0.03),
          child: TextField(
            controller: widget.controlador,
            textAlign: TextAlign.center,
            obscureText: widget.obscureText,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color.fromRGBO(181, 181, 181, 0.7)),
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      if (widget.hintText == 'Senha') {
                        setState(() {
                          widget.obscureText = !widget.obscureText;
                        });
                      }
                    },
                    icon: widget.hintText == 'Senha'
                        ? const Icon(Icons.remove_red_eye)
                        : Container()),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: widget.hintText,
                hintStyle: const TextStyle(
                    fontSize: 15, color: Color.fromRGBO(228, 216, 216, 0.7))),
          ),
        ));
  }
}
