import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_profile/core/providers/home_page_provider.dart';
import 'package:user_profile/core/views/jsonFileView/json_home.dart';
import 'package:user_profile/core/views/user_profile_view.dart';
import 'package:user_profile/utils/theme/base.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> HomePageProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: BaseTheme.lightTheme,
        darkTheme: BaseTheme.darkTheme,
        home: JsonHome(),
      ),
    );
  }
}
