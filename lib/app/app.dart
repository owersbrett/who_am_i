import 'package:flutter/material.dart';
import 'package:who_am_i/bloc/user_bloc.dart';
import 'package:who_am_i/model/user_quality_link.dart';
import 'package:who_am_i/repository/group_repository.dart';
import 'package:who_am_i/repository/mocks/mock_group_repository.dart';
import 'package:who_am_i/repository/mocks/mock_organization_repository.dart';
import 'package:who_am_i/repository/mocks/mock_quality_repository.dart';
import 'package:who_am_i/repository/mocks/mock_user_quality_link_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:who_am_i/repository/mocks/mock_user_repository.dart';
import 'package:who_am_i/repository/organization_repository.dart';
import 'package:who_am_i/repository/quality_repository.dart';
import 'package:who_am_i/repository/user_quality_link_repository.dart';
import 'package:who_am_i/repository/user_repository.dart';
import 'package:who_am_i/view/screen/home.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.useMocks}) : super(key: key);
  final bool useMocks;

  @override
  Widget build(BuildContext context) {
    late IGroupRepository groupRepository;
    late IOrganizationRepository organizationRepository;
    late IQualityRepository qualityRepository;
    late IUserQualityLinkRepository userQualityLinkRepository;
    late IUserRepository userRepository;
    if (useMocks) {
      groupRepository = MockGroupRepository();
      organizationRepository = MockOrganizationRepository();
      qualityRepository = MockQualityRepository();
      userQualityLinkRepository = MockUserQualityLinkRepository();
      userRepository = MockUserRepository();
    } else {}

    return AppWrapper(
      groupRepository: groupRepository,
      organizationRepository: organizationRepository,
      qualityRepository: qualityRepository,
      userQualityLinkRepository: userQualityLinkRepository,
      userRepository: userRepository,
    );
  }
}

class AppWrapper extends StatelessWidget {
  const AppWrapper(
      {Key? key,
      required this.groupRepository,
      required this.organizationRepository,
      required this.userRepository,
      required this.qualityRepository,
      required this.userQualityLinkRepository})
      : super(key: key);
  final IGroupRepository groupRepository;
  final IOrganizationRepository organizationRepository;
  final IQualityRepository qualityRepository;
  final IUserQualityLinkRepository userQualityLinkRepository;
  final IUserRepository userRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (ctx) => groupRepository),
        RepositoryProvider(create: (ctx) => organizationRepository),
        RepositoryProvider(create: (ctx) => qualityRepository),
        RepositoryProvider(create: (ctx) => userQualityLinkRepository),
        RepositoryProvider(create: (ctx) => userRepository),
      ],
      child: const WhoAmI(),
    );
  }
}

class WhoAmI extends StatefulWidget {
  const WhoAmI({Key? key}) : super(key: key);

  @override
  _WhoAmIState createState() => _WhoAmIState();
}

class _WhoAmIState extends State<WhoAmI> {
  late UserBloc userBloc;
  @override
  void initState() {
    super.initState();
    userBloc = UserBloc();
  }

  @override
  void dispose() {
    userBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => userBloc),
      ],
      child: const MaterialApp(
        // localizationsDelegates: L10nService.delegates,
        // supportedLocales: L10nService.locales,
        // locale: L10nService.defaultLocale,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Home(),
        // theme: ApplicationTheme.theme,
      ),
    );
  }
}
