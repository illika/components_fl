import 'package:flutter/material.dart';

import 'package:fl_componentes/widgtes/custom_input_field.dart';

class InputsPage extends StatelessWidget {
  const InputsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValue = {
      "firstName": "Illika",
      "lastName": "PV",
      "email": "illika@email.com",
      "password": "123456",
      "rol": "Admin",
    };

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Inputs"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              //autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: "Nombre",
                    hintText: "Nombre Usuario",
                    formProperty: 'firstName',
                    formValues: formValue,
                  ),
                  const SizedBox(height: 10),
                  CustomInputField(
                    labelText: "Apellido",
                    hintText: "Apellido Usuario",
                    formProperty: 'lastName',
                    formValues: formValue,
                  ),
                  const SizedBox(height: 10),
                  CustomInputField(
                    labelText: "Correo",
                    hintText: "Correo Usuario",
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValue,
                  ),
                  const SizedBox(height: 10),
                  CustomInputField(
                    labelText: "Contaseña",
                    hintText: "Contaseña Usuario",
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValue,
                  ),
                  const SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    validator: (value) {
                      if (value == null) return "Es requerido";
                    },
                    items: const [
                      DropdownMenuItem(value: "Admin", child: Text("Admin")),
                      DropdownMenuItem(
                          value: "Superuser", child: Text("Superuser")),
                      DropdownMenuItem(
                          value: "Developer", child: Text("Developer")),
                      DropdownMenuItem(
                          value: "Developerjunior", child: Text("DeveloperJr")),
                    ],
                    onChanged: (value) {
                      formValue["rol"] = value ?? "Admin";
                    },
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        //FocusScope.of(context).requestFocus(FocusNode());
                        FocusManager.instance.primaryFocus?.unfocus();
                        if (!myFormKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Ingrese valores a los campos"),
                                  duration: Duration(milliseconds: 1000)));
                          return;
                        }
                        formValue.forEach((key, value) {
                          debugPrint(value);
                        });
                      },
                      child: const Text("Guardar"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
