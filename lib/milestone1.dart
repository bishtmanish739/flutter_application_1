// import 'dart:ffi';
import 'dart:io';
import 'dart:collection';
import 'dart:math';
import 'package:collection/collection.dart';
// import 'package:flutter/foundation.dart';
int fibonacci(int n) {
  // The first two numbers in the sequence are 0 and 1
  if (n == 0 || n == 1) {
    return n;
  }

  // The nth number in the sequence is the sum of the (n - 1)th and (n - 2)th numbers
  return fibonacci(n - 1) + fibonacci(n - 2);
}

 num celsiusTokelvin( num c)
{
  return (c + 273.15); 
}
num celsiusToFahrenheit( num N)
{
    return ((N * 9.0 / 5.0) + 32.0);
}

printdiamond(int n){
  int star=0;
  int space=0;
  for(int i=1;i<=5;i++){
    star=(2*i)-1;
    space=(5-i);
    for(int j=0;j<space;j++){
     stdout.write(' ');
    }
     for(int j=0;j<star;j++){
     stdout.write('*');
    }
    stdout.writeln();
    // stdout.write('/n');
  }
  for(int i=4;i>=0;i--){
    star=(2*i)-1;
    space=(5-i);
    for(int j=0;j<space;j++){
     stdout.write(' ');
    }
     for(int j=0;j<star;j++){
     stdout.write('*');
    }
    stdout.writeln();
  }


}

void wordFreq(String sentence){
  String word="";
  HashMap map = HashMap<String, int>();
  for(int i=0;i<sentence.length;i++){
      if(sentence[i]==' '){
        if(map.containsKey(word)){
          map[word]++;
        }
        else{
          map[word]=1;
        }
        word="";
      }
      else{
        word+=sentence[i];
      }
  }
  print('$map');
}

class Circle1{
  double radius=0;
  Circle1(this.radius);
  double getCircumference(){
    return 2*(22/7)*radius;
  }
  double getArea(){
    return (22/7)*radius*radius;
  }


}
int maxx=0;
int lcs(String s1,String s2,int i,int j){
  if(i>=s1.length || j>=s2.length){
    return 0;
  }
  if(s1[i]==s2[j]){
    return 1+lcs(s1, s2, i+1, j+1);
  }
  else{
   int a= lcs(s1, s2, i+1, j);
   int b= lcs(s1, s2, i, j+1);
   int c=lcs(s1,s2,i+1,j+1);
   return max(c,max(a,b));

  }
  
}
//Question 11
void birthdayCalculator(){
  print('ender your date of birth');
  String? s=stdin.readLineSync();
  var parsedDate = DateTime.parse(s!);
  var nextYear = DateTime(DateTime.now().year+1, parsedDate.month, parsedDate.day);
 var remaining=(nextYear.difference(DateTime.now()).inDays);
  print("number of days remaining $remaining ");

}

//Question 12
Future<String> downloading() async {
  for(int i=0;i<5;i++){
   await Future.delayed(Duration(seconds: 1),(){
        print('downloading file $i');
         
    });
  }
  return "done";
 
}
bool anagrams(String word1, String word2){
  if(word1.length!=word2.length){
    return false;
  }
  HashMap map=HashMap<Object,int>();
  HashMap map2=HashMap<Object,int>();
  for(int i=0;i<word1.length;i++){
    if(map.containsKey(word1[i])){
      map[word1[i]]++;
    }
    else{
      map[word1[i]]=1;
    }
  }
  for(int i=0;i<word2.length;i++){
 if(map2.containsKey(word2[i])){
      map2[word2[i]]++;
    }
    else{
      map2[word2[i]]=1;
    }
  }
  print('$map,$map2');
  if(DeepCollectionEquality().equals(map, map2)) {
  return true;
} 

return false;
}
void main(List<String> arg) async {

// Question 1
  // for (int i = 0; i < 10; i++) {
  //   print(fibonacci(i));
  // }

// Question 2
  // print(celsiusTokelvin(12));
  // print(celsiusToFahrenheit(12));


// Question 3
  //  printdiamond(5);

  //Question -4
  // wordFreq("I love to code in dart and I love to solve problems");

  //Question =5
    // print(anagrams( "listen", "silent" ));

  //Question => 6
  // print(lcs("abcdefg","xyzabcdwpq",0,0));

  //Question=7
    // Circle1 c=Circle1(5);
    // print(c.getArea());
    // print(c.getCircumference());

  //Question => 8
  // Car c=Car(4, "Suzuki", "Swift", "2018");
  // c.display();
  // MoterCycle m=MoterCycle(true, "Bajaj", "Platina", "2022");
  // m.display();


  // Question =9 
  // Circle c=Circle(5.0);
  // print(c.calculateArea());
  // Tringle t=Tringle(5,4);
  // print(t.calculateArea());
  // Shape s=Rectangle(5,4);
  // print(s.calculateArea());


  // Question =10 
// MusicPlayer mp=new MusicPlayer(10, true);
// mp.play();
// mp.stop();
// mp.adjustEqualizer();
// mp.visualizeAudio();


// Question =11 birthday remaining days calculator
 birthdayCalculator();


//Question 12
// print('before downloading');
// var a= downloading();
// a.then((value) => print(value));
// print(' downloading in background moving  to next task ');


}

//Question 8
class Vehicle{
  String make="";
  String model="";
  String year="";
  Vehicle(this.make,this.model,this.year);
  void display(){
    print("vehicle $make model $model year $year");
  }
}
class Car extends Vehicle{
  int  numdoor=0;
  Car(this.numdoor,make,model,year) : super(make, model, year);
  void display(){
    print("vehicle $make model $model year $year numdoor $numdoor");
  }

}
class MoterCycle extends Vehicle{
 bool hasSider=false;
   MoterCycle(this.hasSider,make,model,year) : super(make, model, year);
  void display(){
   print("vehicle $make model $model year $year hasSider  $hasSider");
  }
}


//Question 9
class Shape{
  calculateArea(){

  }
}
class Circle extends Shape{
  double radius=0;
  Circle(this.radius);
@override
  calculateArea() {
    // TODO: implement calculateArea
    
    
    return (22/7)*radius*radius;
  
  }


}

class Tringle extends Shape{
  double height=0;
   double base=0;
  Tringle(this.height,this.base);
@override
  calculateArea() {
    // TODO: implement calculateArea
    
    
    return (1/2)*height*base;
  
  }


}

class Rectangle  extends Shape{
  double length=0;
   double width=0;
  Rectangle (this.length,this.width);
@override
  calculateArea() {
    // TODO: implement calculateArea
    
    
    return length*width;
  
  }


}


//Question 10
class AudioPlayer{
  double volume=0;
  bool isplaying=false;
  AudioPlayer(this.volume,this.isplaying);
  void play(){
    print('music is played');
  }
   void stop(){
    print('music is stopped');
  }
   void pause(){
    print('music is paused');
  }

}

class Visualizer{
  void visualizeAudio(){
    
  }
}

class Equalizer{
  adjustEqualizer(){
    
  }
}
class MusicPlayer extends AudioPlayer implements Visualizer,Equalizer{
  MusicPlayer(super.volume, super.isplaying);

  void playMusic(){
      play();
  }
  void stopMusic(){
    stop();
  }
  void adujustAudio(){
    adjustEqualizer();
  }
  void showVisualization(){
    visualizeAudio();
  }
  
  @override
  adjustEqualizer() {
    // TODO: implement adjustEqualizer
   print('adjusting Audio Equalizer settings ');
  }
  
  @override
  void visualizeAudio() {
    // TODO: implement visualizeAudio
    print('Audio is being visualized');
  }
}