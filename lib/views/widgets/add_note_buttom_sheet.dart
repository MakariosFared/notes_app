import 'package:flutter/material.dart';
import 'package:my_note_app/views/widgets/custom_button.dart';

import 'custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(height: 16,),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 100,),
            CustomButton(),
            SizedBox(height: 32,),

          ],
        ),
      ),
    );
  }
}
