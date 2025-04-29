import 'package:equatable/equatable.dart';

abstract class ImagePickerEvents extends Equatable {
 const ImagePickerEvents();
 @ override
List<Object> get props => [];
  }
class CameraCaptured extends ImagePickerEvents{}
class GalleryPicked extends ImagePickerEvents{}
