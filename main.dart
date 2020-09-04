import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'docker app',
      home: MainPage(),
    )
  );
}

var webdata,webdata1,webdata2,webdata3,webdata4,webdata5,webdata6,webdata7,webdata8;

String cmd,value,cmd2;

void backToMainPage(context) {
    Navigator.pop(context);
  }

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        title: Text('DOCKER APP'),
        backgroundColor: Colors.blueAccent.shade700,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.deepPurpleAccent.withOpacity(1),
        spreadRadius: 30,
        blurRadius: 20,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
          ),
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(40),
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Choose required operation',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
              RaisedButton(
                padding: EdgeInsets.all(1),
                color: Colors.blue,
                textColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
                  child: Text('ANY COMMAND',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  navigateToanycmd(context);
                },
              ),
              RaisedButton(
                padding: EdgeInsets.all(1),
                color: Colors.blue,
                textColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
                  child: Text('LAUNCH CONTAINER',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  navigateTolaunch(context);
                },
              ),
              RaisedButton(
                padding: EdgeInsets.all(1),
                color: Colors.blue,
                textColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
                  child: Text('DELETE CONTAINER',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  navigateTodeleteContainer(context);
                },
              ),
              RaisedButton(
                padding: EdgeInsets.all(1),
                color: Colors.blue,
                textColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
                  child: Text('PULL IMAGE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  navigateTopullImage(context);
                },
              ),
              RaisedButton(
                padding: EdgeInsets.all(1),
                color: Colors.blue,
                textColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
                  child: Text('START/STOP CONTAINER',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  navigateToContainerOps(context);
                },
              ),
              RaisedButton(
                padding: EdgeInsets.all(1),
                color: Colors.blue,
                textColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
                  child: Text('DELETE IMAGE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  navigateToDeleteImg(context);
                },
              ),
              RaisedButton(
                padding: EdgeInsets.all(1),
                color: Colors.blue,
                textColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
                  child: Text('CREATE IMAGE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  navigateToCreateImg(context);
                },
              ),
              RaisedButton(
                padding: EdgeInsets.all(1),
                color: Colors.blue,
                textColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
                  child: Text('INSPECT CONTAINER',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  navigateToInspectContainer(context);
                },
              ),
              RaisedButton(
                padding: EdgeInsets.all(1),
                color: Colors.blue,
                textColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
                  child: Text('EXECUTE CONTAINER',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  navigateToExecuteContainer(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Future navigateToanycmd(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => anyCmd()));
  }


Future navigateTolaunch(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => launchCont()));
  }

Future navigateTodeleteContainer(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => deleteCont()));
  }

Future navigateTopullImage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => pull()));
  }

Future navigateToContainerOps(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => opsCont()));
  }

Future navigateToDeleteImg(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => delImage()));
  }

Future navigateToCreateImg(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => createImage()));
  }

Future navigateToInspectContainer(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => inspectCont()));
  }

Future navigateToExecuteContainer(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => execute()));
  }


class anyCmd extends StatefulWidget {
  @override
  _anyCmdState createState() => _anyCmdState();
}

class _anyCmdState extends State<anyCmd> {
  anyCommand(mycmd) async{
  var url = "http://192.168.1.10/cgi-bin/web.py?x=${mycmd}";
  var response = await http.get(url);
  setState(() {
    webdata=response.body;
  });
  print(response.body);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DESIRED COMMAND',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.blue.shade300.withOpacity(1),
        spreadRadius: 30,
        blurRadius: 20,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  onChanged: (value){
                    cmd = value;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "Write your desired command",
                    prefixIcon: Icon(Icons.arrow_forward)
                  ),
                ),
              FlatButton(
                  onPressed: (){
                    anyCommand(cmd);
                  },
                  child: Text('ENTER',style: TextStyle(fontSize: 20,),),
                  color: Colors.blue.shade50,
                ),
              Text(webdata ?? "output is coming",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),),
              RaisedButton(
                
                textColor: Colors.blueAccent.shade700,
                color: Colors.lightGreenAccent,
                child: Text('BACK TO MENU',style: TextStyle(fontSize: 25),),
                onPressed: () {
                  backToMainPage(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class launchCont extends StatefulWidget {
  @override
  _launchContState createState() => _launchContState();
}

class _launchContState extends State<launchCont> {
  launchContainer(osname,imagename) async{
  var url = "http://192.168.1.10/cgi-bin/launch.py?osname=${osname}&imagename=${imagename}";
  var response = await http.get(url);
  setState(() {
    webdata1=response.body;
  });
  print(response.body);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LAUNCH CONTAINER',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.blue.shade300.withOpacity(1),
        spreadRadius: 30,
        blurRadius: 20,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  onChanged: (value){
                    cmd = value;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "Container name",
                    prefixIcon: Icon(Icons.arrow_forward)
                  ),
                ),
                TextField(
                  onChanged: (value){
                    cmd2 = value;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "Image name",
                    prefixIcon: Icon(Icons.arrow_forward)
                  ),
                ),
              FlatButton(
                  onPressed: (){
                    launchContainer(cmd, cmd2);
                  },
                  child: Text('LAUNCH',style: TextStyle(fontSize: 20,),),
                  color: Colors.blue.shade50,
                ),
                Text(webdata1 ?? "output is coming",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),),
              RaisedButton(
                
                textColor: Colors.blueAccent.shade700,
                color: Colors.lightGreenAccent,
                child: Text('BACK TO MENU',style: TextStyle(fontSize: 25),),
                onPressed: () {
                  backToMainPage(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class deleteCont extends StatefulWidget {
  @override
  _deleteContState createState() => _deleteContState();
}

class _deleteContState extends State<deleteCont> {
  deleteContainer(osname) async{
  var url = "http://192.168.1.10/cgi-bin/rmCont.py?osname=${osname}";
  var response = await http.get(url);
  setState(() {
    webdata2=response.body;
  });
  print(response.body);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DELETE CONTAINER',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.blue.shade300.withOpacity(1),
        spreadRadius: 30,
        blurRadius: 20,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  onChanged: (value){
                    cmd = value;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "osname ",
                    prefixIcon: Icon(Icons.arrow_forward)
                  ),
                ),
              FlatButton(
                  onPressed: (){
                    deleteContainer(cmd);
                  },
                  child: Text('DELETE',style: TextStyle(fontSize: 20,),),
                  color: Colors.blue.shade50,
                ),
                Text(webdata2 ?? "output is coming",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),),
              RaisedButton(
                
                textColor: Colors.blueAccent.shade700,
                color: Colors.lightGreenAccent,
                child: Text('BACK TO MENU',style: TextStyle(fontSize: 25),),
                onPressed: () {
                  backToMainPage(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class pull extends StatefulWidget {
  @override
  _pullState createState() => _pullState();
}

class _pullState extends State<pull> {
  pullImage(imagename) async{
  var url = "http://192.168.1.10/cgi-bin/pull.py?imagename=${imagename}";
  var response = await http.get(url);
  setState(() {
    webdata3=response.body;
  });
  print(response.body);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DOWNLOAD IMAGE',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.blue.shade300.withOpacity(1),
        spreadRadius: 30,
        blurRadius: 20,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  onChanged: (value){
                    cmd = value;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "imagename ",
                    prefixIcon: Icon(Icons.arrow_forward)
                  ),
                ),
              FlatButton(
                  onPressed: (){
                    pullImage(cmd);
                  },
                  child: Text('DOWNLOAD',style: TextStyle(fontSize: 20,),),
                  color: Colors.blue.shade50,
                ),
                Text(webdata3 ?? "output is coming",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),),
              RaisedButton(
                
                textColor: Colors.blueAccent.shade700,
                color: Colors.lightGreenAccent,
                child: Text('BACK TO MENU',style: TextStyle(fontSize: 25),),
                onPressed: () {
                  backToMainPage(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class opsCont extends StatefulWidget {
  @override
  _opsContState createState() => _opsContState();
}

class _opsContState extends State<opsCont> {
  ops(ops,osname) async{
  var url = "http://192.168.1.10/cgi-bin/ops.py?ops=${ops}&osname=${osname}";
  var response = await http.get(url);
  setState(() {
    webdata4=response.body;
  });
  print(response.body);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('START/STOP CONTAINER',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.blue.shade300.withOpacity(1),
        spreadRadius: 30,
        blurRadius: 20,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  onChanged: (value){
                    cmd = value;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "start/stop ",
                    prefixIcon: Icon(Icons.arrow_forward)
                  ),
                ),
              TextField(
                  onChanged: (value){
                    cmd2 = value;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "osname ",
                    prefixIcon: Icon(Icons.arrow_forward)
                  ),
                ),
              FlatButton(
                  onPressed: (){
                    ops(cmd,cmd2);
                  },
                  child: Text('ENTER',style: TextStyle(fontSize: 20,),),
                  color: Colors.blue.shade50,
                ),
                Text(webdata4 ?? "output is coming",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),),
              RaisedButton(
                
                textColor: Colors.blueAccent.shade700,
                color: Colors.lightGreenAccent,
                child: Text('BACK TO MENU',style: TextStyle(fontSize: 25),),
                onPressed: () {
                  backToMainPage(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class delImage extends StatefulWidget {
  @override
  _delImageState createState() => _delImageState();
}

class _delImageState extends State<delImage> {
  delImg(imagename) async{
  var url = "http://192.168.1.10/cgi-bin/delImg.py?imagename=${imagename}";
  var response = await http.get(url);
  setState(() {
    webdata5=response.body;
  });
  print(response.body);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DELETE IMAGE',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.blue.shade300.withOpacity(1),
        spreadRadius: 30,
        blurRadius: 20,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  onChanged: (value){
                    cmd = value;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "image name ",
                    prefixIcon: Icon(Icons.arrow_forward)
                  ),
                ),
              FlatButton(
                  onPressed: (){
                    delImg(cmd);
                  },
                  child: Text('DELETE',style: TextStyle(fontSize: 20,),),
                  color: Colors.blue.shade50,
                ),
              Text(webdata5 ?? "output is coming",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),),
              RaisedButton(
                
                textColor: Colors.blueAccent.shade700,
                color: Colors.lightGreenAccent,
                child: Text('BACK TO MENU',style: TextStyle(fontSize: 25),),
                onPressed: () {
                  backToMainPage(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class createImage extends StatefulWidget {
  @override
  _createImageState createState() => _createImageState();
}

class _createImageState extends State<createImage> {
  createImg(osname,imagename) async{
  var url = "http://192.168.1.10/cgi-bin/commit.py?osname=${osname}&imagename=${imagename}";
  var response = await http.get(url);
  setState(() {
    webdata6=response.body;
  });
  print(response.body);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CREATE IMAGE',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.blue.shade300.withOpacity(1),
        spreadRadius: 30,
        blurRadius: 20,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  onChanged: (value){
                    cmd = value;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "Container name",
                    prefixIcon: Icon(Icons.arrow_forward)
                  ),
                ),
                TextField(
                  onChanged: (value){
                    cmd2 = value;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "Desired Image name",
                    prefixIcon: Icon(Icons.arrow_forward)
                  ),
                ),
              FlatButton(
                  onPressed: (){
                    createImg(cmd, cmd2);
                  },
                  child: Text('CREATE',style: TextStyle(fontSize: 20,),),
                  color: Colors.blue.shade50,
                ),
                Text(webdata6 ?? "output is coming",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),),
              RaisedButton(
                
                textColor: Colors.blueAccent.shade700,
                color: Colors.lightGreenAccent,
                child: Text('BACK TO MENU',style: TextStyle(fontSize: 25),),
                onPressed: () {
                  backToMainPage(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class inspectCont extends StatefulWidget {
  @override
  _inspectContState createState() => _inspectContState();
}

class _inspectContState extends State<inspectCont> {
  inspectContainer(osname) async{
  var url = "http://192.168.1.10/cgi-bin/inspect.py?osname=${osname}";
  var response = await http.get(url);
  setState(() {
    webdata7=response.body;
  });
  print(response.body);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INSPECT CONTAINER',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.blue.shade300.withOpacity(1),
        spreadRadius: 30,
        blurRadius: 20,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  onChanged: (value){
                    cmd = value;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "os name ",
                    prefixIcon: Icon(Icons.arrow_forward)
                  ),
                ),
              FlatButton(
                  onPressed: (){
                    inspectContainer(cmd);
                  },
                  child: Text('INSPECT',style: TextStyle(fontSize: 20,),),
                  color: Colors.blue.shade50,
                ),
              Text(webdata7 ?? "output is coming",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),),
              RaisedButton(
                
                textColor: Colors.blueAccent.shade700,
                color: Colors.lightGreenAccent,
                child: Text('BACK TO MENU',style: TextStyle(fontSize: 25),),
                onPressed: () {
                  backToMainPage(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class execute extends StatefulWidget {
  @override
  _executeState createState() => _executeState();
}

class _executeState extends State<execute> {
  executeCont(osname,command) async{
  var url = "http://192.168.1.10/cgi-bin/execute.py?osname=${osname}&command=${command}";
  var response = await http.get(url);
  setState(() {
    webdata8=response.body;
  });
  print(response.body);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EXECUTE CONTAINER',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.blue.shade300.withOpacity(1),
        spreadRadius: 30,
        blurRadius: 20,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  onChanged: (value){
                    cmd = value;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "Container name",
                    prefixIcon: Icon(Icons.arrow_forward)
                  ),
                ),
                TextField(
                  onChanged: (value){
                    cmd2 = value;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: "Desired command",
                    prefixIcon: Icon(Icons.arrow_forward)
                  ),
                ),
              FlatButton(
                  onPressed: (){
                    executeCont(cmd, cmd2);
                  },
                  child: Text('ENTER',style: TextStyle(fontSize: 20,),),
                  color: Colors.blue.shade50,
                ),
               Text(webdata8 ?? "output is coming",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),),
              RaisedButton(
                
                textColor: Colors.blueAccent.shade700,
                color: Colors.lightGreenAccent,
                child: Text('BACK TO MENU',style: TextStyle(fontSize: 25),),
                onPressed: () {
                  backToMainPage(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}