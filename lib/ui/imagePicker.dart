import 'dart:io';

import 'package:equitable/bloc/image_picker/imageBloc.dart';
import 'package:equitable/bloc/image_picker/imageEvents.dart';
import 'package:equitable/bloc/image_picker/imageStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerScreen extends StatefulWidget {
  @override
  _ImagePickerScreenState createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Image Picker Example'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            child: Center(
              child: BlocBuilder<Imagebloc, ImagePickerStates>(
                builder: (context, state) {
                  if (state.file == null) {
                    return InkWell(
                      onTap: () {
                        context.read<Imagebloc>().add(CameraCaptured());
                      },
                      child: CircleAvatar(
                        child: Icon(Icons.camera),
                      ),
                    );
                  } else {
                    return Image.file(File(state.file!.path.toString()));
                  }
                },
              ),
            ),
          ),
        ));
  }
}
