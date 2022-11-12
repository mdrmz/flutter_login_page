import 'package:flutter/material.dart';

void main(List<String> args) {}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String UserName = "";
  String Pass = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 234, 234),
      resizeToAvoidBottomInset: false,
      body: Form(
          child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              autovalidateMode: AutovalidateMode
                  .always, // kullancı adı girin diye uyarı veren yere bakıyor valdator içine gifer
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                labelText: "Kullancı adı",
                labelStyle: TextStyle(color: Color.fromARGB(255, 6, 6, 6)),
              ),
              validator: (value) {
                // kulancı adı yazan yere girilen degeri tutuyor
                if (value!.isEmpty) {
                  return "Kullanıcı Adı Gir";
                } else {
                  return null;
                }
              },
              onSaved: (value) {
                UserName = value!;
              },
            ),
            SizedBox(height: 10.0),
            TextFormField(
              autovalidateMode: AutovalidateMode
                  .always, // pass girin diye uyarı veren yere bakıyor valdator içine gifer
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                labelText: "Şifre",
                labelStyle: TextStyle(color: Color.fromARGB(255, 6, 6, 6)),
              ),
              validator: (value) {
                //pass yazan yere girilen degeri tutuyor
                if (value!.isEmpty) {
                  return "şifre Gir";
                } else {
                  return null;
                }
              },
              onSaved: (value) {
                Pass = value!;
              },
            ),
            Row(
              children: <Widget>[
                MaterialButton(child: Text(" Üye Ol"), onPressed: () {}),
                SizedBox(width: 200.0),
                MaterialButton(child: Text("Şifremi Unuttum"), onPressed: () {})
              ],
            )
          ],
        ),
      )),
    );
  }
}
