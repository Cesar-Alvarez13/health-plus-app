import 'package:diet_recipe_app/core/app_export.dart';
import 'package:diet_recipe_app/presentation/settings_screen/models/settings_model.dart';

/// A controller class for the SettingsScreen.
///
/// This class manages the state of the SettingsScreen, including the
/// current settingsModelObj
class SettingsController extends GetxController {
  Rx<SettingsModel> settingsModelObj = SettingsModel().obs;
}
