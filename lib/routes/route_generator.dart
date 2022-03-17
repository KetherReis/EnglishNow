import 'package:englishnow/pages/profile/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:englishnow/pages/call/audio/dial_screen.dart';
import 'package:englishnow/pages/call/video/audio_call_with_image_screen.dart';
import 'package:englishnow/pages/contact/contact_detail_page.dart';
import 'package:englishnow/pages/contact/my_contact_page.dart';

import '../pages/booking/filter/filter_page.dart';
import '../pages/booking/step1/health_concern_page.dart';
import '../pages/booking/step2/choose_doctor_page.dart';
import '../pages/booking/step3/time_slot_page.dart';
import '../pages/booking/step4/patient_details_page.dart';
import '../pages/booking/step5/appointment_booked_page.dart';
import '../pages/friend/friend_profile_page.dart';
import '../pages/friend/my_friend_list_page.dart';
import '../pages/forgot/forgot_password_page.dart';
import '../pages/home/home.dart';
import '../pages/language/change_laguage_page.dart';
import '../pages/login/login_page.dart';
import '../pages/messages/messages_detail_page.dart';
import '../pages/notifications/notification_settings_page.dart';
import '../pages/notifications/notifications_page.dart';
import '../pages/description/description_detail_page.dart';
import '../pages/profile/edit_profile_page.dart';
import '../pages/signup/signup_page.dart';
import '../pages/splash_page.dart';
import '../pages/visit/visit_detail_page.dart';
import 'routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;

    switch (settings.name) {
      case Routes.splash:
        return CupertinoPageRoute(builder: (_) => SplashPage());

      case Routes.login:
        return CupertinoPageRoute(builder: (_) => LoginPage());

      case Routes.signup:
        return CupertinoPageRoute(builder: (_) => SignupPage());

      case Routes.forgotPassword:
        return CupertinoPageRoute(builder: (_) => ForgotPasswordPage());

      case Routes.home:
        return CupertinoPageRoute(builder: (_) => Home());

      case Routes.filter:
        return CupertinoPageRoute(
          builder: (_) => FilterPage(),
          fullscreenDialog: true,
        );

      case Routes.bookingStep1:
        return CupertinoPageRoute(
          builder: (_) => HealthConcernPage(),
          fullscreenDialog: true,
        );

      case Routes.bookingStep2:
        return CupertinoPageRoute(builder: (_) => ChooseDoctorPage());

      case Routes.bookingStep3:
        return CupertinoPageRoute(builder: (_) => TimeSlotPage());

      case Routes.bookingStep4:
        return CupertinoPageRoute(builder: (_) => PatientDetailsPage());

      case Routes.bookingStep5:
        return CupertinoPageRoute(builder: (_) => AppointmentBookedPage());

      case Routes.appointmentDetail:
        return CupertinoPageRoute(builder: (_) => ContactDetailPage());

      case Routes.visitDetail:
        return CupertinoPageRoute(builder: (_) => VisitDetailPage());

      case Routes.prescriptionDetail:
        return CupertinoPageRoute(builder: (_) => DescriptionDetailPage());

      case Routes.chatDetail:
        return CupertinoPageRoute(builder: (_) => MessagesDetailPage());

      case Routes.doctorProfile:
        return CupertinoPageRoute(builder: (_) => FriendProfilePage());

      case Routes.editProfile:
        return CupertinoPageRoute(builder: (_) => EditProfilePage());

      case Routes.changeLanguage:
        return CupertinoPageRoute(builder: (_) => ChangeLanguagePage());

      case Routes.notificationSettings:
        return CupertinoPageRoute(builder: (_) => NotificationSettingsPage());

      case Routes.myDoctors:
        return CupertinoPageRoute(builder: (_) => MyFriendListPage());

      case Routes.myAppointments:
        return CupertinoPageRoute(builder: (_) => MyContactPage());

      case Routes.dialScreen:
        return CupertinoPageRoute(builder: (_) => DialScreen());

      case Routes.profilePage:
        return CupertinoPageRoute(builder: (_) => ProfilePage());

      case Routes.videoCall:
        return CupertinoPageRoute(builder: (_) => AudioCallWithImage());

      case Routes.notifications:
        return CupertinoPageRoute(
          builder: (_) => NotificationsPage(),
          fullscreenDialog: true,
          maintainState: true,
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return CupertinoPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
