import 'package:flutter/material.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  UserFormState createState() { return UserFormState(); }
}

class UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _calendarController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: Column(
          children: [
            formRow(Icons.person, "Name", _nameController),
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            formRow(Icons.phone, "Phone", _phoneController),
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            formRow(Icons.calendar_month, "Date of Birth", _calendarController),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: MaterialButton(
                onPressed: () {
                  String snackBarText = "";

                  snackBarText += "${_nameController.text} | ";
                  snackBarText += "${_phoneController.text} | ";
                  snackBarText += _calendarController.text;

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(snackBarText)));
                },
                height: 60,
                minWidth: 300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                color: Colors.deepPurple[800],
                padding: EdgeInsets.all(5),
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }

  Row formRow(IconData icon, String hintText, TextEditingController controller) {
    return Row(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
        Icon(icon, size: 26.0),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
        Flexible(
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(hintText: hintText),
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
      ],
    );
  }
}
