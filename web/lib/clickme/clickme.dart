import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('click-me')
class ClickMe extends PolymerElement {  
  @published String Text;
  
  
  ClickMe.created() : super.created() {
     Text = "Click me!!!!";
  }
  
  void onData(MouseEvent event) {
    querySelector("#clickme").text = "Hi";
    /*var e = querySelector("#clickme");
    var txt = e.text;
    
    var buffer = new StringBuffer();
    for (var i=0;i<txt.length;i++)
      buffer.write(txt[txt.length-i]);
    
    e.text = buffer.toString();*/
  }
  
  void click() {
    var buffer = new StringBuffer();
    for (var i=0;i<Text.length;i++)
      buffer.write(Text[Text.length-i-1]);
    Text = buffer.toString();
    
    //Text = "Hi Hi";
  }
}