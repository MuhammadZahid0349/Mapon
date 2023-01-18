import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mapon/Constants/ColorConstants.dart';

class CustomizedTextFormfield extends StatefulWidget {
  final TextEditingController myController;
  final String? hintText;
  final bool? isPassword;

  const CustomizedTextFormfield(
      {Key? key, required this.myController, this.hintText, this.isPassword})
      : super(key: key);

  @override
  State<CustomizedTextFormfield> createState() =>
      _CustomizedTextFormfieldState();
}

class _CustomizedTextFormfieldState extends State<CustomizedTextFormfield> {
  bool _isVisible = false;

  void _showPassword() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 297.w,
      height: 40.h,
      child: TextFormField(
        keyboardType: widget.isPassword!
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
        obscureText: _isVisible ? false : widget.isPassword!,

        controller: widget.myController,
        // validator: widget.isPassword!
        //     ? (value) {
        //         if (value == null || value.isEmpty) {
        //           return 'Please enter Password';
        //         }
        //         return null;
        //       }
        //     : (value) {
        //         if (value == null || value.isEmpty) {
        //           return 'Please enter Email';
        //         } else if (!value.contains('@')) {
        //           return 'Please enter Valid Email';
        //         } else if (!value.contains('.com')) {
        //           return 'Please enter Valid Email';
        //         }
        //         return null;
        //       },
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorConstants.CircleColor,
          contentPadding: EdgeInsets.all(10),
          // labelText: 'Email:',
          suffixIcon: widget.isPassword!
              ? IconButton(
                  icon: Icon(
                    _isVisible ? Icons.remove_red_eye : Icons.visibility_off,
                    color: Colors.grey[400],
                  ),
                  onPressed: () => _showPassword(),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.CircleColor, width: 3),
            borderRadius: BorderRadius.circular(15),
          ),
          ////////////////////////////////
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.CircleColor, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: widget.hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // errorText: _errorText,
        ),
      ),
    );
  }
}
