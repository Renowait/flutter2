import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPagetState();
}

class _ThirdPagetState extends State<ThirdPage> {
  String _str = '';
  final _ctrlEmail = TextEditingController();
  final _ctrlPwd = TextEditingController();
  final _ctrlName = TextEditingController();

  TextStyle textStyle() => const TextStyle(
    color: Colors.blueGrey,
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

    OutlineInputBorder outlineInputBorder() => const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.amber,
        width: 2
        )
    ); 


    void updatetext() => setState(() {
      _str = 'Email : ${_ctrlEmail.value.text}';
    });
    Widget TextFieldEmail() =>  TextField(
      controller: _ctrlEmail,
      decoration: InputDecoration(
        border: outlineInputBorder(),
        hintText: 'Email'
      ),
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(),
      onChanged: (text) => updatetext(),
    );


    
    Widget TextFieldPwd() =>  TextField(
      controller: _ctrlPwd,
      decoration: InputDecoration(
        border: outlineInputBorder(),
        hintText: 'Pwd'
      ),
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(),
      onChanged: (text) => updatetext(),
    );


   
    Widget TextFieldName() =>  TextField(
      controller: _ctrlName,
      decoration: InputDecoration(
        border: outlineInputBorder(),
        hintText: 'Name'
      ),
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(),
      onChanged: (text) => updatetext(),
    );
  @override
  Widget build(BuildContext context) =>  Scaffold(
    appBar: AppBar(title: const Text('random'),),
    body: const Center(
      child: SizedBox(
        width: 350,
        child: Column(
          children: [
            const SizedBox(height: 30,),
            TextFieldEmail(),
            const SizedBox(height: 30,),
            TextFieldPwd(),
            const SizedBox(height: 30,),
            TextFieldName(),
            const SizedBox(height: 30,),
            Text(_str),
          ],),),),
  );
  
}