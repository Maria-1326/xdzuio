import 'package:flutter/material.dart';
import 'package:xdzuio_app/View/Auth/splash.dart';


class AppRoutes {
  static const String splashScreen = '/SplashScreen';
  // static const String selectionsScreen = '/SelectionsScreen';
  // static const String docLogin = '/DocLogin';
  // static const String docSignup = '/DocSignup';
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
        // selectionsScreen: (_) => SelectionsScreen(),
        // docLogin: (_) => DocLogin(),
        // docSignup: (_) => DocSignup(),
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
