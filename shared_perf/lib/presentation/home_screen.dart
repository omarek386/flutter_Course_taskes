import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_perf/constants/keys.dart';
import 'package:shared_perf/helper/cache_helper.dart';
import 'package:shared_perf/helper/spacing.dart';
import 'package:shared_perf/presentation/widgets/app_text_form_field.dart';
import 'package:shared_perf/presentation/widgets/custom_button.dart';
import 'package:shared_perf/presentation/widgets/show_my_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Save Objects in SharedPreferences',
          style: TextStyle(
            color: Colors.white,
            // fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20.h,
          children: [
            verticalSpace(20),
            textFields(),
            actionButtons(),
            showData(),
          ],
        ),
      ),
    );
  }

  Column showData() {
    return Column(
      spacing: 20.h,
      children: [
        ShowMyData(
          type: 'Name',
          myKey: nameKey,
        ),
        ShowMyData(
          type: 'Age',
          myKey: ageKey,
        ),
        ShowMyData(
          type: 'Country',
          myKey: countryKey,
        ),
      ],
    );
  }

  Column textFields() {
    return Column(
      spacing: 20.h,
      children: [
        AppTextFormField(
          hintText: 'Name',
          controller: nameController,
        ),
        AppTextFormField(
          hintText: 'Age',
          controller: ageController,
        ),
        AppTextFormField(
          hintText: 'Country',
          controller: countryController,
        ),
      ],
    );
  }

  Row actionButtons() {
    return Row(
      spacing: 20.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          text: 'Save',
          onPressed: () {
            CacheHelper.saveData(
              key: nameKey,
              value: nameController.text,
            );
            CacheHelper.saveData(
              key: ageKey,
              value: ageController.text,
            );
            CacheHelper.saveData(
              key: countryKey,
              value: countryController.text,
            );
            messenger(message: 'Data Saved Successfully');
          },
        ),
        CustomButton(
          text: 'Load',
          onPressed: () {
            setState(() {});
            messenger(message: 'Data Loaded Successfully');
          },
        ),
        CustomButton(
          text: 'Clear',
          onPressed: () {
            CacheHelper.clearData();
            setState(() {});
            messenger(message: 'Data Cleared Successfully');
          },
        ),
      ],
    );
  }

  ScaffoldFeatureController messenger({required String message}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        content: Text(message, style: TextStyle(fontSize: 16.sp)),
      ),
    );
  }
}
