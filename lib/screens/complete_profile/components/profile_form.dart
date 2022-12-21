import 'package:ecommerce/components/custom_suffix_icon.dart';
import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/components/form_error.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({super.key});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  late String firstName = "", lastName = "", phoneNumber, address;
  List<String> errors = [];
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameForm(fieldName: "First Name"),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildNameForm(fieldName: "Last Name"),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneNumberForm(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressForm(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate() && errors.isEmpty) {
                // Go to OTP Screen
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildAddressForm() {
    return TextFormField(
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          setState(() {
            errors.remove(kAddressNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kAddressNullError);
          });
          return "";
        }
        return "";
      },
      keyboardType: TextInputType.streetAddress,
      decoration: const InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Location point.svg",
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPhoneNumberForm() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.add(kPhoneNumberNullError);
          });
          return "";
        }
        return "";
      },
      keyboardType: TextInputType.phone,
      decoration: const InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Phone.svg",
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildNameForm({required String fieldName}) {
    return TextFormField(
      onSaved: (newValue) {
        if (fieldName == "First Name") {
          firstName = newValue!;
        } else if (fieldName == "Last Name") {
          lastName = newValue!;
        }
      },
      onChanged: (value) {
        if (fieldName == "First Name") {
          firstName = value;
        } else if (fieldName == "Last Name") {
          lastName = value;
        }
        if (value.isNotEmpty && errors.contains(kNamelNullError) && firstName.isNotEmpty && lastName.isNotEmpty) {
          setState(() {
            errors.remove(kNamelNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kNamelNullError) && (firstName.isEmpty || lastName.isEmpty)) {
          setState(() {
            errors.add(kNamelNullError);
          });
          return "";
        }
        return "";
      },
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: fieldName,
        hintText: "Enter your ${fieldName.toLowerCase()}",
        suffixIcon: const CustomSuffixIcon(
          svgIcon: "assets/icons/User Icon.svg",
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
