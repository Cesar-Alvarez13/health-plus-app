import 'package:diet_recipe_app/core/app_export.dart';import 'package:diet_recipe_app/presentation/feedback_screen/models/feedback_model.dart';import 'package:flutter/material.dart';/// A controller class for the FeedbackScreen.
///
/// This class manages the state of the FeedbackScreen, including the
/// current feedbackModelObj
class FeedbackController extends GetxController {TextEditingController feedbackinputController = TextEditingController();

Rx<FeedbackModel> feedbackModelObj = FeedbackModel().obs;

@override void onClose() { super.onClose(); feedbackinputController.dispose(); } 
 }
