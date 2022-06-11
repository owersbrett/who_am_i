import 'package:flutter/material.dart';

import 'package:who_am_i/repository/mocks/mock_user_repository.dart';
import 'package:who_am_i/repository/quality_repository.dart';
import 'package:who_am_i/repository/user_repository.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.useMocks}) : super(key: key);
  final bool useMocks;

  @override
  Widget build(BuildContext context) {
    late IUserRepository userRepository;
    late IQualityRepository qualityRepository;
    late I
    if (useMocks) {
      userRepository = MockUserRepository();
    } else {}

    return AppWrapper(
      userRepository: userRepository,
    );
  }
}

class AppWrapper extends StatelessWidget {
  const AppWrapper({
    Key? key,
    required this.userRepository,
  }) : super(key: key);
  final IUserRepository userRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (ctx) => productRepository),
      ],
      child: WordsINeedToKnow(
        advertisementRepository: advertisementRepository,
      ),
    );
  }
}

UserB profileBloc;

class WordsINeedToKnow extends StatefulWidget {
  WordsINeedToKnow({
    @required this.authRepository,
  });
  final IAuthRepository authRepository;
  @override
  _WordsINeedToKnowState createState() => _WordsINeedToKnowState();
}

class _WordsINeedToKnowState extends State<WordsINeedToKnow> {
  AppBloc appBloc;
  @override
  void initState() {
    super.initState();
    bottomNavigationBloc = BottomNavigationBloc();
  }

  @override
  void dispose() {
    paymentBloc?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => interestsBloc),
      ],
      child: MaterialApp(
        // localizationsDelegates: L10nService.delegates,
        // supportedLocales: L10nService.locales,
        // locale: L10nService.defaultLocale,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: AuthPage(),
        // theme: ApplicationTheme.theme,
      ),
    );
  }
}
