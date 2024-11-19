import '../onboarding_two_screen/widgets/vegetableoil_item_widget.dart';import 'controller/onboarding_two_controller.dart';import 'models/vegetableoil_item_model.dart';import 'package:carousel_slider/carousel_slider.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:diet_recipe_app/core/app_export.dart';import 'package:diet_recipe_app/widgets/custom_elevated_button.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';class OnboardingTwoScreen extends GetWidget<OnboardingTwoController> {const OnboardingTwoScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimaryContainer, body: SizedBox(height: getVerticalSize(879), width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: SizedBox(height: getVerticalSize(571), width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgFlatlaycompos571x428, height: getVerticalSize(571), width: getHorizontalSize(428), alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Container(padding: getPadding(left: 20, top: 19, right: 20, bottom: 19), decoration: AppDecoration.gradientBlackToOnPrimary, child: GestureDetector(onTap: () {onTapTxtSkip();}, child: Text("lbl_skip".tr, style: CustomTextStyles.bodyLargeOnPrimaryContainer))))]))), Align(alignment: Alignment.bottomCenter, child: Container(padding: getPadding(left: 20, top: 39, right: 20, bottom: 39), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgFrameOnprimarycontainer), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 26, right: 26), child: Obx(() => CarouselSlider.builder(options: CarouselOptions(height: getVerticalSize(102), initialPage: 0, autoPlay: true, viewportFraction: 1.0, enableInfiniteScroll: false, scrollDirection: Axis.horizontal, onPageChanged: (index, reason) {controller.sliderIndex.value = index;}), itemCount: controller.onboardingTwoModelObj.value.vegetableoilItemList.value.length, itemBuilder: (context, index, realIndex) {VegetableoilItemModel model = controller.onboardingTwoModelObj.value.vegetableoilItemList.value[index]; return VegetableoilItemWidget(model);}))), Obx(() => Container(height: getVerticalSize(8), margin: getMargin(top: 49), child: AnimatedSmoothIndicator(activeIndex: controller.sliderIndex.value, count: controller.onboardingTwoModelObj.value.vegetableoilItemList.value.length, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 8, activeDotColor: theme.colorScheme.primary, dotColor: appTheme.blueGray100, dotHeight: getVerticalSize(8), dotWidth: getHorizontalSize(8))))), CustomElevatedButton(text: "lbl_next".tr, margin: getMargin(top: 49), onTap: () {onTapNext();})])))])))); } 
/// Navigates to the loginScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the loginScreen.
onTapTxtSkip() { Get.toNamed(AppRoutes.loginScreen, ); } 
/// Navigates to the onboardingThreeScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the onboardingThreeScreen.
onTapNext() { Get.toNamed(AppRoutes.onboardingThreeScreen, ); } 
 }