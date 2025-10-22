import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/widget/sucess_modal.dart';

class GenericDialog{
 static showModal({required BuildContext context, required String successMessage}){
    return  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: SuccessModal(
            successMessage: successMessage,
          )
        );
      },
    );
  }
}