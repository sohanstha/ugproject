import 'package:fitness_gymapp/auth/register_controller.dart';
import 'package:fitness_gymapp/pages/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(RegisterController());
    // final _formkey = GlobalKey<FormState>();
    // ignore: prefer_const_declarations
    final appTitle = 'Register Account';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF92A3FD),
          title: Text(appTitle),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class Get {
  static put(RegisterController registerController) {}

  static find() {}
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  TextEditingController dateController = TextEditingController();
  void initState() {
    dateController.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return SingleChildScrollView(
      child: Form(
        // key: _formmKey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF92A3FD)),

                    //borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF92A3FD),
                    ),
                    //borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Enter your name',
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Color(0xFF92A3FD), //<-- SEE HERE
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xFF92A3FD),
                  ),
                  prefixIconColor: Color(0xFF92A3FD),
                  fillColor: Colors.white10,
                  filled: true,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF92A3FD)),

                    //borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF92A3FD),
                    ),
                    //borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Enter your phone number',
                  labelText: 'Phone',
                  labelStyle: TextStyle(
                    color: Color(0xFF92A3FD), //<-- SEE HERE
                  ),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Color(0xFF92A3FD),
                  ),
                  prefixIconColor: Color(0xFF92A3FD),
                  fillColor: Colors.white10,
                  filled: true,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF92A3FD)),

                    //borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF92A3FD),
                    ),
                    //borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Enter your email Id',
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Color(0xFF92A3FD), //<-- SEE HERE
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xFF92A3FD),
                  ),
                  prefixIconColor: Color(0xFF92A3FD),
                  fillColor: Colors.white10,
                  filled: true,
                ),
              ),
              // Container(
              //   height: 100,
              //   child: Center(
              //     child: TextField(
              //       controller:
              //           dateController, //editing controller of this TextField
              //       decoration: const InputDecoration(
              //         enabledBorder: OutlineInputBorder(
              //           borderSide: BorderSide(color: Color(0xFF92A3FD)),

              //           //borderRadius: BorderRadius.circular(20),
              //         ),
              //         focusedBorder: OutlineInputBorder(
              //           borderSide: BorderSide(
              //             color: Color(0xFF92A3FD),
              //           ),
              //           //borderRadius: BorderRadius.circular(12),
              //         ),
              //         hintText: 'Enter your DOB',
              //         labelText: 'DOB',
              //         labelStyle: TextStyle(
              //           color: Color(0xFF92A3FD), //<-- SEE HERE
              //         ),
              //         prefixIcon: Icon(
              //           Icons.calendar_today,
              //           color: Color(0xFF92A3FD),
              //         ),
              //         prefixIconColor: Color(0xFF92A3FD),
              //         fillColor: Colors.white10,
              //         filled: true,
              //       ),
              //       readOnly: true, // when true user cannot edit text
              //       onTap: () async {
              //         DateTime? pickedDate = await showDatePicker(
              //             context: context,
              //             initialDate: DateTime.now(), //get today's date
              //             firstDate: DateTime(
              //                 1980), //DateTime.now() - not to allow to choose before today.
              //             lastDate: DateTime(2100));

              //         if (pickedDate != null) {
              //         } else {
              //           print("Date is not selected");
              //         }
              //       },
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF92A3FD)),

                    //borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF92A3FD),
                    ),
                    //borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Enter your Password',
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Color(0xFF92A3FD), //<-- SEE HERE
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Color(0xFF92A3FD),
                  ),
                  prefixIconColor: Color(0xFF92A3FD),
                  fillColor: Colors.white10,
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF92A3FD)),

                    //borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF92A3FD),
                    ),
                    //borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Enter your password',
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(
                    color: Color(0xFF92A3FD), //<-- SEE HERE
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Color(0xFF92A3FD),
                  ),
                  prefixIconColor: Color(0xFF92A3FD),
                  fillColor: Colors.white10,
                  filled: true,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                  padding: const EdgeInsets.only(left: 110.0, top: 40.0),
                  // ignore: prefer_const_constructors
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Register',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF92A3FD)),
                    ),
                  )),
              const SizedBox(height: 20),
              // GestureDetector(
              //   onTap: (() => Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => const LoginPage()))),
              // ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => LoginPage()),
              //     );
              //   },
              //   child: Container(
              //     margin: const EdgeInsets.only(top: 10),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         Text("Already have an account? "),
              //         Text(
              //           "Login",
              //           style: TextStyle(
              //               fontWeight: FontWeight.w600,
              //               fontSize: 20,
              //               color: Color(0xFF92A3FD)),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
