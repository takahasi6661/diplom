import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthenticationPage(title: 'Authentication'),
    );
  }
}

class AuthFormDate{
  final String login;
  final String password;

  AuthFormDate({ required this.login, required this.password});
  AuthFormDate copyWith({
    String? login,
    String? password,
}) {
    return AuthFormDate(
      login: login ?? this.login,
      password: password ?? this.password,
    );
}
}

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {

  AuthFormDate _formState=AuthFormDate(login: '', password: '');
  _submit(){
    print(_formState.login);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
      ),
      body: Center(
        child: Padding (padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Icon (Icons.account_circle, size: 80.0,),
          const Padding (padding: const EdgeInsets.only(top: 30.0),
            child:
             Text(
              'Авторизуйтесь в нашем приложении',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, ),
            ),),

                Container(margin: const EdgeInsets.only(top:80.0) , width:210.0, child: Column( mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Row( mainAxisAlignment: MainAxisAlignment.start,
                     children: const [
                    Text(
                      'Логин:',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, ),
                    ), ]),
                 TextField(
                  // decoration: InputDecoration(
                  //   label: Text('Login')
                  // ),
                   decoration: InputDecoration(
                     hintText: 'Enter your login',
                     // errorText: '',
                   ),
                  onChanged: (String value){
                    setState(() {
                      _formState = _formState.copyWith(login: value);
                    });
                  },
                ),
                  Padding (padding: const EdgeInsets.only(top: 10.0),
                           child: Row( mainAxisAlignment: MainAxisAlignment.start,
                               children: const [
                                 Text(
                                   'Пароль:',
                                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, ),
                                 ),
                               ]),
                  ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        // errorText: '',
                      ),
                      onChanged: (String value){
                        // setState(() {
                        //   _formState = _formState.copyWith(password: value);
                        // });
                      },
                    ),
                  Row( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding (padding: const EdgeInsets.only(top: 10.0),
                          child:
                        ElevatedButton(
                        onPressed: () {},
                            child: Container(height:20.0, width:50.0,  child: Text(
                        'Войти',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, ),
                      ),
                        )
                        ),
                        ),],
                  ),
                  ]),),


          ],
        ),
      ),
      ),
    );
  }
}
