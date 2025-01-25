import 'package:flutter/material.dart';

import 'custom_buttom_sheet.dart';
import 'custom_text_field.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });



  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title;
  String? content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        CustomTextField(
          onSaved: (value) {
            title = value;
          },
          'Title',
        ),
      const  SizedBox(
          height: 24,
        ),
        CustomTextField(
          onSaved: (value) {
            content = value;
          },
          'Content',
          maxLines: 5,
        ),
      const  SizedBox(height: 65,),
        CustomButtomSheet(
          onTap: () {
            if(formKey.currentState !.validate()){
              formKey.currentState!.save();
            }else{
              autovalidateMode = AutovalidateMode.always;
              setState(() {
                
              });
            }
          },
        ),
      const  SizedBox(height: 24,),
      ],
            ),
    );
  }
}