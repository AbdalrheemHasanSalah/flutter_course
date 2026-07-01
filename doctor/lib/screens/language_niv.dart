/*import 'package:dio/dio.dart';
import 'package:doctor/cache/cache_helper.dart';
import 'package:doctor/core/api/dio_consumer.dart';
import 'package:doctor/cubit/user_cubit.dart';
import 'package:doctor/repositories/user_repository.dart';
import 'package:doctor/screens/Home.dart';
import 'package:doctor/screens/List.dart';
import 'package:doctor/screens/Settings.dart';
import 'package:flutter/material.dart';
//import 'screens/Home.dart';
//import 'screens/List.dart';
//import 'screens/Settings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';*/
/*
/// GLOBAL THEME
final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: BlocProvider(
        create: (context) =>
            UserCubit(UserRepository(api: DioConsumer(dio: Dio()))),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode themeMode, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Doctor Panel".tr(),
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: themeMode,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          home: const MainPage(),
        );
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPageIndex = 0;

  final List<Widget> pages = const [
    MyHomePage(title: 'docotor panel'),
    Listpage(),
    Settingspage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color.fromARGB(158, 43, 185, 150),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
            icon: Icon(Icons.list),
            label: 'Medical Record',
          ),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
*/