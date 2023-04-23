import 'package:route/screen/Categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  final myController = TextEditingController();
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Center(
        child: FormBuilder(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FormBuilderTextField(
                name: 'email',
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.email(context),
                ]),
              ),
              FormBuilderTextField(
                name: 'password',
                decoration: InputDecoration(
                  labelText: 'password',
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.minLength(context, 6),
                ]),
              ),
              FormBuilderTextField(
                name: 'name',
                decoration: InputDecoration(
                  labelText: 'name',
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.minLength(context, 1),
                ]),
              ),
              FormBuilderTextField(
                name: 'surname',
                decoration: InputDecoration(
                  labelText: 'surname',
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.minLength(context, 1),
                ]),
              ),
              FormBuilderTextField(
                name: 'Age',
                decoration: InputDecoration(
                  labelText: 'Age',
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.minLength(context, 1),
                ]),
              ),
              FormBuilderTextField(
                name: 'Sex',
                decoration: InputDecoration(
                  labelText: 'Sex',
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.minLength(context, 1),
                ]),
              ),
              FormBuilderTextField(
                name: 'Address',
                decoration: InputDecoration(
                  labelText: 'Address',
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.minLength(context, 1),
                ]),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.saveAndValidate()) {
                    print(_formKey.currentState!.value['email']);
                    print(_formKey.currentState!.value['password']);
                    print(_formKey.currentState!.value['name']);
                    print(_formKey.currentState!.value['surname']);
                    print(_formKey.currentState!.value['age']);
                    print(_formKey.currentState!.value['sex']);
                    print(_formKey.currentState!.value['address']);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Categories(name: myController.text)));
                  }
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}