import 'package:flutter/material.dart';
import 'package:tasks/SignUp.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  bool IsNotVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(15, 248, 224, 84),
        leading: const Padding(
          padding: EdgeInsets.all(5),
          child: Text('9:41'),
        ),
        actions: const [
          Icon(Icons.signal_cellular_alt),
          Icon(Icons.wifi),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.battery_std_rounded),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Hello !',
                style: TextStyle(fontSize: 25, color: Colors.black54),
              ),
              const Text(
                'WELCOME BACK',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  label: Text('Email'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                obscureText: IsNotVisible,
                keyboardType: const TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          IsNotVisible = !IsNotVisible;
                        });
                      },
                      icon: Icon((!IsNotVisible)
                          ? Icons.remove_red_eye
                          : Icons.visibility_off)),
                  label: const Text('Password'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  'Forget Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: 500,
                  height: 50,
                  decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) => const Color(0x00ffffff))),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) =>SignUp()));
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              
              ),
              const SizedBox(height: 40,),
              const Center(child: Text('SIGN UP'))
              
            ],
          ),
        ),
      ),
    );
  }
}
