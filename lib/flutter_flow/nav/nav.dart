import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/supabase/supabase.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.black,
                child: Center(
                  child: Image.asset(
                    'assets/images/e-lection-logo-beyaz.png',
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )
          : const AcilisWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.black,
                    child: Center(
                      child: Image.asset(
                        'assets/images/e-lection-logo-beyaz.png',
                        width: MediaQuery.sizeOf(context).width * 0.6,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )
              : const AcilisWidget(),
        ),
        FFRoute(
          name: 'Giris',
          path: '/giris',
          builder: (context, params) => const GirisWidget(),
        ),
        FFRoute(
          name: 'Anasayfa',
          path: '/anasayfa',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Anasayfa')
              : const NavBarPage(
                  initialPage: 'Anasayfa',
                  page: AnasayfaWidget(),
                ),
        ),
        FFRoute(
          name: 'Menu',
          path: '/menu',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Menu')
              : const NavBarPage(
                  initialPage: 'Menu',
                  page: MenuWidget(),
                ),
        ),
        FFRoute(
          name: 'OyIslemleri',
          path: '/oyIslemleri',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'OyIslemleri')
              : const OyIslemleriWidget(),
        ),
        FFRoute(
          name: 'Ayarlar',
          path: '/ayarlar',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: AyarlarWidget(),
          ),
        ),
        FFRoute(
          name: 'Profilim',
          path: '/profilim',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: ProfilimWidget(),
          ),
        ),
        FFRoute(
          name: 'BilgiGuncellemeP1',
          path: '/bilgiGuncellemeP1',
          builder: (context, params) => const BilgiGuncellemeP1Widget(),
        ),
        FFRoute(
          name: 'SifremiUnuttumP4',
          path: '/sifremiUnuttumP4',
          builder: (context, params) => const SifremiUnuttumP4Widget(),
        ),
        FFRoute(
          name: 'OyVer',
          path: '/oyVer',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: OyVerWidget(),
          ),
        ),
        FFRoute(
          name: 'OyKullanP1given',
          path: '/oyKullanP1given',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: OyKullanP1givenWidget(),
          ),
        ),
        FFRoute(
          name: 'OyKullanP1res',
          path: '/oyKullanP1res',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: OyKullanP1resWidget(),
          ),
        ),
        FFRoute(
          name: 'OyKullanP2devam',
          path: '/oyKullanP2devam',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: OyKullanP2devamWidget(),
          ),
        ),
        FFRoute(
          name: 'OyKullanP3devam',
          path: '/oyKullanP3devam',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: OyKullanP3devamWidget(),
          ),
        ),
        FFRoute(
          name: 'OyPaneli',
          path: '/oyPaneli',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: OyPaneliWidget(),
          ),
        ),
        FFRoute(
          name: 'OylamaOlusturP1',
          path: '/oylamaOlusturP1',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: OylamaOlusturP1Widget(),
          ),
        ),
        FFRoute(
          name: 'OylamaOlusturP2',
          path: '/oylamaOlusturP2',
          builder: (context, params) => const OylamaOlusturP2Widget(),
        ),
        FFRoute(
          name: 'OylamaOlusturP5',
          path: '/oylamaOlusturP5',
          builder: (context, params) => const OylamaOlusturP5Widget(),
        ),
        FFRoute(
          name: 'Secimler',
          path: '/secimler',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: SecimlerWidget(),
          ),
        ),
        FFRoute(
          name: 'OyKullanP4Pusula',
          path: '/oyKullanP4Pusula',
          builder: (context, params) => const OyKullanP4PusulaWidget(),
        ),
        FFRoute(
          name: 'OyKullanP5Pusula',
          path: '/oyKullanP5Pusula',
          builder: (context, params) => const OyKullanP5PusulaWidget(),
        ),
        FFRoute(
          name: 'OyKullanP6Final',
          path: '/oyKullanP6Final',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: OyKullanP6FinalWidget(),
          ),
        ),
        FFRoute(
          name: 'SifremiUnuttumP1',
          path: '/sifremiUnuttumP1',
          builder: (context, params) => const SifremiUnuttumP1Widget(),
        ),
        FFRoute(
          name: 'SifremiUnuttumP2',
          path: '/sifremiUnuttumP2',
          builder: (context, params) => const SifremiUnuttumP2Widget(),
        ),
        FFRoute(
          name: 'SifremiUnuttumP3',
          path: '/sifremiUnuttumP3',
          builder: (context, params) => const SifremiUnuttumP3Widget(),
        ),
        FFRoute(
          name: 'OyKullanP1notstarted',
          path: '/oyKullanP1notstarted',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: OyKullanP1notstartedWidget(
              deneme: params.getParam<ElectionsRow>(
                'deneme',
                ParamType.SupabaseRow,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'HowvotingWorksP1',
          path: '/howvotingWorksP1',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: HowvotingWorksP1Widget(),
          ),
        ),
        FFRoute(
          name: 'HowvotingWorksP2',
          path: '/howvotingWorksP2',
          builder: (context, params) => const HowvotingWorksP2Widget(),
        ),
        FFRoute(
          name: 'HowvotingWorksP3',
          path: '/howvotingWorksP3',
          builder: (context, params) => const HowvotingWorksP3Widget(),
        ),
        FFRoute(
          name: 'HowvotingWorksP4',
          path: '/howvotingWorksP4',
          builder: (context, params) => const HowvotingWorksP4Widget(),
        ),
        FFRoute(
          name: 'HowvotingWorksP5',
          path: '/howvotingWorksP5',
          builder: (context, params) => const HowvotingWorksP5Widget(),
        ),
        FFRoute(
          name: 'HowvotingWorksP6',
          path: '/howvotingWorksP6',
          builder: (context, params) => const HowvotingWorksP6Widget(),
        ),
        FFRoute(
          name: 'HowvotingWorksP7',
          path: '/howvotingWorksP7',
          builder: (context, params) => const HowvotingWorksP7Widget(),
        ),
        FFRoute(
          name: 'YardimMerkezi',
          path: '/yardimMerkezi',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: YardimMerkeziWidget(),
          ),
        ),
        FFRoute(
          name: 'ContactUs',
          path: '/contactUs',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: ContactUsWidget(),
          ),
        ),
        FFRoute(
          name: 'HowToVoteBallots',
          path: '/howToVoteBallots',
          builder: (context, params) => const HowToVoteBallotsWidget(),
        ),
        FFRoute(
          name: 'SifremiDegistir',
          path: '/sifremiDegistir',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: SifremiDegistirWidget(),
          ),
        ),
        FFRoute(
          name: 'Hakkimda',
          path: '/hakkimda',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: HakkimdaWidget(),
          ),
        ),
        FFRoute(
          name: 'OylamaAdaylar',
          path: '/oylamaAdaylar',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: OylamaAdaylarWidget(
              votedesc: params.getParam<ElectionsRow>(
                'votedesc',
                ParamType.SupabaseRow,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'OylamaAcklamasi',
          path: '/oylamaAcklamasi',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: OylamaAcklamasiWidget(
              votedesc: params.getParam<ElectionsRow>(
                'votedesc',
                ParamType.SupabaseRow,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'termsOfUse',
          path: '/termsOfUse',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: TermsOfUseWidget(),
          ),
        ),
        FFRoute(
          name: 'OylamaOlusturP3',
          path: '/oylamaOlusturP3',
          builder: (context, params) => const OylamaOlusturP3Widget(),
        ),
        FFRoute(
          name: 'FAQ',
          path: '/faq',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: FaqWidget(),
          ),
        ),
        FFRoute(
          name: 'OyKullan',
          path: '/oyKullan',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: OyKullanWidget(
              deneme: params.getParam<ElectionsRow>(
                'deneme',
                ParamType.SupabaseRow,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'dropdownDeneme',
          path: '/dropdownDeneme',
          builder: (context, params) => const DropdownDenemeWidget(),
        ),
        FFRoute(
          name: 'BilgiGuncellemeP2',
          path: '/bilgiGuncellemeP2',
          builder: (context, params) => const BilgiGuncellemeP2Widget(),
        ),
        FFRoute(
          name: 'OyKullanP1devam',
          path: '/oyKullanP1devam',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: OyKullanP1devamWidget(
              givevote: params.getParam<ElectionsRow>(
                'givevote',
                ParamType.SupabaseRow,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'Acilis',
          path: '/acilis',
          builder: (context, params) => const AcilisWidget(),
        ),
        FFRoute(
          name: 'OylamaOlusturP4',
          path: '/oylamaOlusturP4',
          builder: (context, params) => const OylamaOlusturP4Widget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
