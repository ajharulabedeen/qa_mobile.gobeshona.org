
import 'package:iQA/features/core/path/file_path.dart';


final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final LoginInfo _loginInfo = LoginInfo();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    _loginInfo.autoLogin();
    return ChangeNotifierProvider.value(
      value: _loginInfo,
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => AuthBloc(authRepository: AuthRepository()),
              ),
            ],
            child: MaterialApp.router(
              title: 'iQA',
              routerConfig: _router,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color.fromARGB(255, 15, 15, 15),
                ),
                useMaterial3: true,
              ),
            ),
          );
        },
      ),
    );
  }

  late final GoRouter _router = GoRouter(
    // navigatorKey: _shellNavigatorKey,
    initialLocation: '/login',
    routes: <GoRoute>[
      /*  GoRoute(
        path: '/signup',
        builder: (BuildContext context, GoRouterState state) =>
        const SignupPage(),
      ),
      GoRoute(
        path: '/signupotp1/:phone',
        name: '/signupotp1',
        builder: (BuildContext context, GoRouterState state) => SignupOtpPage1(
          phone: state.pathParameters["phone"] ?? "",
        ),
      ),*/
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) =>
            const LoginPage(),
      ),
    ],

    // redirect to the login page if the user is not logged in
    redirect: (BuildContext context, GoRouterState state) async {
      if (kDebugMode) {
        Logger().i("Matched Location: ${state.matchedLocation}");
      }
      final bool loggedIn = _loginInfo.loggedIn;
      final bool loggingIn = state.matchedLocation == '/login' ||
          state.matchedLocation == '/onboarding' ||
          state.matchedLocation == "/map-page";

      if (!loggedIn) {
        if (kDebugMode) {
          Logger().i("Not Logged in");
          Logger().i(state.matchedLocation);
        }
        /* if (state.matchedLocation == "/splash") {
          return '/splash';
        }*/
        /* if (state.matchedLocation == "/signup") {
          return '/signup';
        }
        if (state.matchedLocation.contains("/signupotp1")) {
          return state.matchedLocation;
        }*/
        if (state.matchedLocation == "/login") {
          return '/login';
        }
        if (state.matchedLocation == "/login") {
          return '/onboarding';
        }
        return null;
      }

      if (loggedIn) {
        if (kDebugMode) {
          Logger().i("Matched Location: ${state.matchedLocation}");
        }
        if (state.matchedLocation == "/onboarding") {
          return "/onboarding";
        }
        /* if (state.matchedLocation.contains("/one-to-one-chat")) {
          return state.matchedLocation;
        }*/
      }
      if (loggingIn) {
        if (kDebugMode) {
          Logger().i("logginIN: ${state.matchedLocation}");
        }
        return '/map-page'; //if login then go for default home page
      }
      return null;
    },

    // changes on the listenable will cause the router to refresh it's route
    refreshListenable: _loginInfo,
  );
}
