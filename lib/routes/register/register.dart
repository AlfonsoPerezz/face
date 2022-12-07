import 'package:flutter/material.dart';
import 'package:red_social_flutter/routes/register/register_Controller.dart';

class RegisterPage extends StatefulWidget {
  static String id = 'register';
  static const routeName = '/register';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _controller = RegisterController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black, 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _userTextField(),
            SizedBox(
              height: 15,
            ),
            _mailTextField(),
            SizedBox(
              height: 15,
            ),
            _passworddTextField(),
            SizedBox(
              height: 20.0,
            ),
            _bottonLogin(),
          ],
        ),
      ),
    ));
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          controller: _nameController,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              icon: Icon(Icons.person_outline),
              hintText: 'nombre',
              labelText: 'Nombre'),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _mailTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'example@example.com',
              labelText: 'Correo electronico'),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passworddTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          controller: _passwordController,
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
              icon: Icon(Icons.lock),
              hintText: 'password',
              labelText: 'Contraseña'),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text(
              'Iniciar Sesión',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onPressed: () async {
            await _controller.register(_nameController.text,
                _emailController.text, _passwordController.text);
            Navigator.pop(context);
          });
    });
  }
}
