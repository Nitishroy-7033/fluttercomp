import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../Code/drawer/basic_drawer_code.dart';
import '../../Code/form/basic_form_code.dart';
import '../../Code/form/dynamic_form_code.dart';
import '../../Code/form/feed_back_form_code.dart';
import '../../Code/form/filtter_form_code.dart';
import '../../Code/form/image_upload_form_code.dart';
import '../../Code/form/login_form_code.dart';
import '../../Code/form/multi_step_form_code.dart';
import '../../Code/form/otp_pin_form_code.dart';
import '../../Code/form/provider_based_form_code.dart';
import '../../Code/form/realtime_validation_code.dart';
import '../../Code/form/servey_mcq_form_code.dart';
import '../../Code/form/sign_up_register_code.dart';
import '../../ViewComponents/drawer/basic_drawer.dart';
import '../../ViewComponents/form/basic_form.dart';
import '../../ViewComponents/form/dynamic_form.dart';
import '../../ViewComponents/form/feedback_form.dart';
import '../../ViewComponents/form/filtter_form.dart';
import '../../ViewComponents/form/image_upload_form.dart';
import '../../ViewComponents/form/login_form.dart';
import '../../ViewComponents/form/multi_step_form.dart';
import '../../ViewComponents/form/otp_type_pin_form.dart';
import '../../ViewComponents/form/provider_based_form.dart';
import '../../ViewComponents/form/realtime_validation_form.dart';
import '../../ViewComponents/form/sign_up_or_register_form.dart';
import '../../ViewComponents/form/survey_form_mcq.dart';

var FormList = [
  WidgetArea(
    code1Title: "Basic Form Code",
    code1: BasicFormCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: BasicForm(),
    ),
  ),

  WidgetArea(
    code1Title: "Login Form Code",
    code1: LoginFormCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: LoginForm(),
    ),
  ),

  WidgetArea(
    code1Title: "Signup/Register Form Code",
    code1: SignUpCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: SignupForm(),
    ),
  ),

  WidgetArea(
    code1Title: "Multi-Step Form Code",
    code1: MultiStepFormCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: MultiStepForm(),
    ),
  ),

  WidgetArea(
    code1Title: "Dynamic(Based on List) Form Code",
    code1: DynamicFormCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: DynamicForm(),
    ),
  ),

  WidgetArea(
    code1Title: "Filter Form Code",
    code1: FiltterFormCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: FilterForm(),
    ),
  ),

  WidgetArea(
    code1Title: "Image Upload Form Code",
    code1: ImageUploadFormCode,
    code2: ImageDependenciesCode,
    code2Title: 'Image Dependencies Code',
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: FileUploadForm(),
    ),
  ),

  WidgetArea(
    code1Title: "FeedBack Form Code",
    code1: FeedBackFormCode,

    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: FeedbackForm(),
    ),
  ),

  WidgetArea(
    code1Title: "Survey / MCQ Form Code",
    code1: ServeyFormCode,

    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: SurveyForm(),
    ),
  ),


  WidgetArea(
    code1Title: "Add Dependencies",
    code1: providerdep,
    code2: ProviderBasedFormCode,
    code2Title: "Provider Based Form Code",
    code3: FormProviderCode,
    code3Title: "Provider Form",
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: ProviderForm(),
    ),
  ),


  WidgetArea(
    code1Title: "OTP pin Form Code",
    code1: OtpPinFormCode,

    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: OTPForm(),
    ),
  ),  WidgetArea(
    code1Title: "Realtime Validation Form Code",
    code1: RealTimeValidationCode,

    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: RealTimeValidationForm(),
    ),
  ),

];
