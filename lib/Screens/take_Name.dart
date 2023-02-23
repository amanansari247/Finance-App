import 'package:flutter/material.dart';
import 'package:managment/Screens/home.dart';

class Take_name extends StatefulWidget {
  final TextEditingController textcontroller = TextEditingController();
  @override
  State<Take_name> createState() => _Take_name();
}
class _Take_name extends State<Take_name>{
    final _controller = TextEditingController();
    @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  String? get _errorText {

  final text = _controller.value.text;

  if (text.isEmpty) {
    return 'Can\'t be empty';
  }
 

  return null;
}
void _submit() {
  String? name  = _controller.text;
  if (_errorText == null) {
   
     Navigator.of(context).push(MaterialPageRoute( builder: (context) => Home(name)));
  }

}
var _text = '';
   @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
        children: [
          Container(
           child: Image.asset('image/entername.png',width: 300,height: 300,),
                
          ),
          Container(
            width: 270,
            margin: EdgeInsets.only(left: 70),
            
            child:  TextField (
              controller: _controller,
              
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                errorText: _errorText,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                labelText: 'Enter Your Name',
                labelStyle:
                    TextStyle(fontSize: 17, color: Colors.grey.shade500),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 2, color: Color(0xffC5C5C5))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        width: 2, color: Color.fromARGB(255, 0, 85, 231))),
                        
              ),
              onChanged: (text) => setState(() => _text),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40,left: 80),
            width: 200,
            height: 70,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 127, 254),
              ),
              child: Text(
                '➡',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              onPressed: _controller.value.text.isNotEmpty? _submit: null,
            ),
          )
        ]),
      ),
    );
  }
}
