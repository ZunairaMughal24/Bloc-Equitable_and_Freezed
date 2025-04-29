import 'package:equitable/bloc/image_picker/imageEvents.dart';
import 'package:equitable/bloc/image_picker/imageStates.dart';
import 'package:equitable/utils/image_picker_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class Imagebloc extends Bloc<ImagePickerEvents, ImagePickerStates> {
  final ImagePickerUtils imagePickerUtils;
  Imagebloc(this.imagePickerUtils) : super(ImagePickerStates()) {
    on<CameraCaptured>(cameraCaptured);
  }
  void cameraCaptured(
      CameraCaptured event, Emitter<ImagePickerStates> states) async {
    // Use the instance of ImagePickerUtils
    XFile? file = await imagePickerUtils.cameraCapture();
    emit(state.copyWith(file: file));
  }
}
