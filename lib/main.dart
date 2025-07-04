import 'package:flutter/material.dart';
import 'package:module_5/main.dart';

void main()
{
    runApp(MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.green)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white54
          )
        )
      ),


        title: "Practice",
        debugShowCheckedModeBanner: false,
        home: Homescreen(),
    );
  }
}


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
            title: Align(
              alignment: Alignment.center,
              child: Text("Home Screen")),
        ),

        body: Center(
          child: Column(
            children: [
              Text("Hello",style: Theme.of(context).textTheme.bodyLarge,),
              Text("Hello",style: Theme.of(context).textTheme.bodyLarge,),
              Text("Hello",style: Theme.of(context).textTheme.bodyLarge,),
              Text("Hello"),
              Text("Hello"),
              Text("Hello"),
          
          
          
          
          
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SeconScreen()));
              }, 
              child: Text("second Screen")),
          
              SizedBox(height: 5,),
          
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SeconScreen()));
              }, 
              child: Text("second Screen")),
          
              SizedBox(height: 5,),
          
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SeconScreen()));
              }, 
              child: Text("second Screen")),

              SizedBox(height: 10,),

              CircleAvatar(
                backgroundColor: Colors.black54,
                radius: 40,
                backgroundImage: NetworkImage("https://scontent.fdac138-1.fna.fbcdn.net/v/t39.30808-6/455500123_807672808210237_6760134894964916096_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHTsA7l-9DQ_3QIHsEeTT5WKFLMMlmtzTgoUswyWa3NONtk-HWZt3Fzlb8_UjdW_sETIufQmHfR82ynKhvo_brq&_nc_ohc=EyvlhPfR1WIQ7kNvwF7Rbqk&_nc_oc=Admn_9xmW3qIQyNv3cT0JuGLLb8fFKLmp-HcRd2yiPZ70hb0_kjZRRufHzSI6JRzYtw&_nc_zt=23&_nc_ht=scontent.fdac138-1.fna&_nc_gid=Z7L2G0AbYSxd-kGPMJfdNQ&oh=00_AfPCZK6tHqBgVIUwKjX9ACdt0kGkps7YscPJXHU0JJ9obA&oe=685C82A0"),

              )
            ],
          ),
        ),
    );
  }
}


class SeconScreen extends StatelessWidget {
  const SeconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Align(
          alignment: Alignment.center,
          child: Text("Second Screen")),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 5,),
            ElevatedButton(onPressed: (){
               Navigator.pop(context);
              }, 
              child: Text("Previous screen")), 
              
              SizedBox(height: 30,),
              
              ElevatedButton(onPressed: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>thirdScreen()),);
              }, 
              child: Text("Third Screen")),


              Card(
              color: Colors.white,
              elevation: 6,
              margin: EdgeInsets.all(12),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Ashraful Islam"),
              subtitle: Text("CSE Student & Muslim Religious Scholar"),
              trailing: Icon(Icons.arrow_forward),

              
               ),
              )

          ],
        ),
      ),
    );
  }
}



class thirdScreen extends StatelessWidget {
  const thirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Align(
          alignment: Alignment.center,
          child: Text(" Teachers Information ")),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){}, child: Text(" 6th Semeter (3rd Year)")),
              ),
        
              Card(
                color: Colors.amberAccent,
                elevation: 6,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
        
                child: ListTile(
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_back),
                  title: Text("Dr. Ahmedul Kabir ,Assoc. Prof.,CSE,DIU"),
                  subtitle: Text("+8801875179981"),
                ),
              ),
        
        
              Card(
                color: Colors.blue,
                elevation: 6,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
        
                child: ListTile(
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_back),
                  title: Text("Md. Rakib mahmud,Lecturer,CSE,DIU"),
                  subtitle: Text("+88018432707"),
                ),
              ),
        
              Card(
        
                elevation: 6,
                color: Colors.blueGrey,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
        
                child: ListTile(
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_back),
                  title: Text("Mashrur Alam ,Lecturer,CSE,DIU"),
                  subtitle: Text("+8801732309535"),
        
                ),
        
        
              ),
        
              Card(
        
                elevation: 6,
                color: Colors.redAccent,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
        
                child: ListTile(
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_back),
                  title: Text("Md. Maruf Ahmed ,Lecturer,CSE,DIU"),
                  subtitle: Text("+8801732-309535"),
        
                ),
              ),
        
              Card(
        
                elevation: 6,
                color: Colors.purple,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
        
                child: ListTile(
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_back),
                  title: Text("Amrita Das Tipu,Lecturer,CSE,DIU"),
                  subtitle: Text("+8801902-995918"),
        
                ),
              ),
        
              Card(
                color: Colors.limeAccent,
                elevation: 6,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
        
                child: ListTile(
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_back),
                  title: Text("Md. Mustafijur Rahman ,Lecturer,CSE,DIU"),
                  subtitle: Text("+8801767-024422"),
                ),
              )
        
              
            ],
          ),
        ),
      ),

    );
  }
}