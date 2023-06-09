import 'package:mail_processor/ui/views/home/home_view.dart';
import 'package:mail_processor/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:mail_processor/services/file_picker_service.dart';
import 'package:mail_processor/services/email_service.dart';
import 'package:mail_processor/ui/views/settings/settings_view.dart';
import 'package:mail_processor/ui/views/main/main_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: SettingsView),
    MaterialRoute(page: MainView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: FilePickerService),
    LazySingleton(classType: EmailService),
    Singleton(classType: HomeViewModel),
// @stacked-service
  ],
)
class App {}
