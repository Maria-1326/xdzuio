import 'package:flutter/material.dart';
import 'package:xdzuio_app/View/Auth/signin.dart';
import 'package:xdzuio_app/View/Auth/signup.dart';
import 'package:xdzuio_app/View/Auth/splash.dart';
import 'package:xdzuio_app/View/Home/productpreview.dart';

class AppRoutes {
  static const String splashScreen = '/SplashScreen';
  static const String signin = '/SignIn';
  static const String signup = '/SingUp';
   static const String productpreview = '/ProductPreview';
  // static const String docSuccess = '/DocSuccess';
  // static const String docDashboard = '/DocDashboard';
  // static const String doctorBottomAppbar = '/DoctorBottomAppbar';
  // static const String docAppointment = '/DocAppointment';
  // static const String docProfile = '/DocProfile';
  // static const String docNotifications = '/DocNotifications';
  // static const String manageApp = '/ManageApp';
  // static const String patientBottomAppbar = '/PatientBottomAppbar';
  // static const String homeScreen = '/HomeScreen';
  // static const String docDetails = '/DocDetails';
  // static const String notifications = '/Notifications';
  // static const String profileScreen = '/ProfileScreen';
  // static const String appointmentsScreen = '/AppointmentsScreen';
  // static const String searchScreen = '/SearchScreen';
  // static const String updateSlots = '/UpdateSlots';
  // static const String scheduleAppointment = '/ScheduleAppointment';
  // static const String adminApproval = '/AdminApproval';
  //  static const String scheduleAppointment = '/ScheduleAppointment';
  //  static const String scheduleAppointment = '/ScheduleAppointment';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: (_) => SplashScreen(), //(),
        signin: (_) => SignIn(),
        signup: (_) => SignUp(),
         productpreview: (_) => ProductPreview(),
        // docSuccess: (_) => DocSuccess(),
        // docDashboard: (_) => DocDashboard(),
        // doctorBottomAppbar: (_) => DoctorBottomAppbar(),
        // docAppointment: (_) => DocAppointment(),
        // docProfile: (_) => DocProfile(),
        // docNotifications: (_) => DocNotifications(),
        // updateSlots: (_) => UpdateSlots(),
        // freeWhileEstatePlan: (_) => FreeWhileEstatePlan(),
        // patientBottomAppbar: (_) => PatientBottomAppbar(),
        // homeScreen: (_) => HomeScreen(),
        // docDetails: (_) => DocDetails(),
        // notifications: (_) => NotificationsScreen(),
        // profileScreen: (_) => ProfileScreen(),
        // appointmentsScreen: (_) => AppointmentsScreen(),
        // searchScreen: (_) => SearchScreen(),
        // scheduleAppointment: (_) => ScheduleAppointment(),
        // adminApproval: (_) => AdminApproval(),
        //  scheduleAppointment: (_) => ScheduleAppointment(),
        //  scheduleAppointment: (_) => ScheduleAppointment(),
      };
}
