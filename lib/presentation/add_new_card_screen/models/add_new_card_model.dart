import 'package:get/get.dart';
import 'package:diet_recipe_app/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [add_new_card_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddNewCardModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Debit Card",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Credit Card",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Master Card",
    )
  ]);
}
