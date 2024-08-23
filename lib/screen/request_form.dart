import 'package:car_mechanic/widgets/app_bar.dart';
import 'package:car_mechanic/widgets/bottom_nav.dart';
import 'package:car_mechanic/widgets/custom_text_field.dart';
import 'package:car_mechanic/widgets/input_fields.dart';
import 'package:car_mechanic/widgets/request/request_box.dart';
import 'package:car_mechanic/widgets/success_dialog.dart';
import 'package:flutter/material.dart';

class RequestFormScreen extends StatefulWidget {
  const RequestFormScreen({super.key});

  @override
  State<RequestFormScreen> createState() => _RequestFormScreenState();
}

class _RequestFormScreenState extends State<RequestFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Icon(Icons.settings),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CustomTextForm(
                  label: 'Brands',
                  hintText: 'Enter brands',
                  borderColor: Colors.grey, // Custom border color
                  backgroundColor: Colors.transparent, // Transparent background
                  controller: TextEditingController(), // Optional controller
                ),
                SizedBox(height: 20.0),
                CustomTextForm(
                  label: 'Name',
                  hintText: 'Enter your name',
                  borderColor: Colors.grey, // Custom border color
                  backgroundColor: Colors.transparent, // Transparent background
                  controller: TextEditingController(), // Optional controller
                ),
                SizedBox(height: 20.0),
                CustomTextForm(
                  label: 'Email',
                  hintText: 'Enter your email',
                  borderColor: Colors.grey, // Custom border color
                  backgroundColor: Colors.transparent, // Transparent background
                  controller: TextEditingController(), // Optional controller
                ),
                SizedBox(height: 20.0),
                CustomTextForm(
                  label: 'Mobile',
                  hintText: 'Enter your mobile number',
                  borderColor: Colors.grey, // Custom border color
                  backgroundColor: Colors.transparent, // Transparent background
                  controller: TextEditingController(), // Optional controller
                ),
                SizedBox(height: 20.0),
                CustomTextForm(
                  label: 'WhatsApp Number',
                  hintText: 'Enter your WhatsApp number',
                  borderColor: Colors.grey, // Custom border color
                  backgroundColor: Colors.transparent, // Transparent background
                  controller: TextEditingController(), // Optional controller
                ),
                SizedBox(height: 20.0),
                CustomTextForm(
                  label: 'Location',
                  hintText: 'Enter your location',
                  borderColor: Colors.grey, // Custom border color
                  backgroundColor: Colors.transparent, // Transparent background
                  controller: TextEditingController(), // Optional controller
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SuccessDialog(
                          message:
                              'Your request has been sent for all mechanics in 5km radius.',
                        );
                      },
                    );
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
