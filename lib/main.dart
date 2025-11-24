import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning/features/history/view/history_screen.dart';
import 'package:learning/features/home/provider/home_provider.dart';
import 'package:learning/features/home/view/home_screen.dart';
import 'package:learning/features/profile/view/profile_screen.dart';
import 'package:learning/features/read.dart';
import 'package:learning/features/routes/app_routes.dart';
import 'package:learning/features/splash/view/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  final router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(path: '/splash', builder: (context, state) => SplashScreen()),
      ShellRoute(
        builder: (context, state, child) => MainShell(child: child),
        routes: [
          GoRoute(
            path: '/home',
            builder: (context, state) => HomeScreen(),
            routes: [
              GoRoute(path: 'read', builder: (context, state) => Read()),
            ],
          ),
          GoRoute(
            path: '/history',
            builder: (context, state) => HistoryScreen(),
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => ProfileScreen(),
          ),
        ],
      ),
    ],
  );

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=> HomeProvider()),
     
    ]
    ,child: MyApp(router: router)));
}

class MyApp extends StatelessWidget {
  final GoRouter router;
  const MyApp({super.key, required this.router});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routerConfig: router,
    );
  }
}
