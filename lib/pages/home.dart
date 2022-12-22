// ignore: unused_import
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //Form
  final GlobalKey<FormState> _formkey = GlobalKey();

//TextField
  TextEditingController _text1 = TextEditingController();
  TextEditingController _text2 = TextEditingController();
  TextEditingController _text3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    int gender = 0;
    // ignore: non_constant_identifier_names
    bool Checkb = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Input"),
      ),
      body: Center(
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              const Text("TextFormfied #1"),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.account_box),
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username',
                ),
                controller: _text1,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const Text("TextFormfied #2"),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.lock),
                  labelText: 'Enter your Password',
                ),
                controller: _text2,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const Text("TextFormfied #3"),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.local_post_office),
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your Email',
                ),
                controller: _text3,
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              Text("Show input: ${_text1.text}"),
              Text("Show input: ${_text2.text}"),
              Text("Show input: ${_text3.text}"),

              const Text("Radio #1"),
                RadioListTile(
          title: Text("Male"),
          value: 1, 
          groupValue: gender, 
          onChanged: (value){
            setState(() {
                gender =value!;
            });
          },
      ),

      RadioListTile(
          title: Text("Female"),
          value: 2, 
          groupValue: gender, 
          onChanged: (value){
            setState(() {
                gender = value!;
            });
          },
      ),

      RadioListTile(
            title: Text("Other"),
            value: 3, 
            groupValue: gender, 
            onChanged: (value){
              setState(() {
                  gender = value!;
              });
            },
      ),

      
      CheckboxListTile(
            title: Text("CheckBox1"),
            value: Checkb, 
            onChanged: (value){
              setState(() {
                 Checkb = value!;
              });
            },
      ),

      

            ],
          ),
        ),
      ),
    );
  }
}
