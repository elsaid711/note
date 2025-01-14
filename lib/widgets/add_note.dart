
import 'package:flutter/material.dart';
import 'package:note/widgets/custom_buttom_sheet.dart';
import 'package:note/widgets/custom_text_field.dart';
class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Padding(
        padding:  EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom,right: 16,left: 16),
        child: AddNoteForm(),
      ),
    );
  }
}

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