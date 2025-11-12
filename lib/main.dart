// lib/main.dart
import 'core/local_storage/local_storage.dart';
import 'core/utils/shared_resources.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize LocalStorage
  await LocalStorage.init();

  /// Load .env and initialize Env class
  await dotenv.load(fileName: ".env");

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
