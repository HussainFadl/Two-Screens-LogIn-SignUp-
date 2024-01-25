import 'package:flutter/material.dart';
import 'package:tasks/LogInView.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool IsNotVisible1 = true;
  bool IsNotVisible2 = true;

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
              const Text(
                'WELCOMME',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    'Name',
                    style: TextStyle(color: Colors.black26),
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    'Email',
                    style: TextStyle(color: Colors.black26),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text(
                    'Password',
                    style: TextStyle(color: Colors.black26),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          IsNotVisible1 = !IsNotVisible1;
                        });
                      },
                      icon: Icon((!IsNotVisible1)
                          ? Icons.remove_red_eye
                          : Icons.visibility_off)),
                ),
                keyboardType: TextInputType.number,
                obscureText: IsNotVisible1,
              ),
              TextFormField(
                decoration: InputDecoration(
                    label: Text('Confirm Password',
                        style: TextStyle(color: Colors.black26)),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            IsNotVisible2 = !IsNotVisible2;
                          });
                        },
                        icon: Icon((!IsNotVisible2)
                            ? Icons.remove_red_eye
                            : Icons.visibility_off))),
                keyboardType: TextInputType.number,
                obscureText: IsNotVisible2,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  color: Color(0xff), ),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInView()));
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black),
                    ),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              SizedBox(height: 40,),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Already have account?',
            style: TextStyle(color: Colors.black45,fontSize: 10),
            ),
            SizedBox(width: 10,),
            Text('SIGN IN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
            ),
          
          ],)  ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LogInView(),
              ));
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
