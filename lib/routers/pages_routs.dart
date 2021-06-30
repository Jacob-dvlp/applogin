part of 'names_of_pages.dart';

class PagesRouts {
  static const INICIAL = NamesOfPages.HOME;
  static final routs = [
    GetPage(
        name: NamesOfPages.HOME,
        page: () => Welcome(),
        transition: Transition.zoom),
    GetPage(
        name: NamesOfPages.LOGIN,
        page: () => Login(),
        transition: Transition.zoom,
        title: "Login"),
    GetPage(
        name: NamesOfPages.RESGISTER,
        page: () => Register(),
        transition: Transition.zoom),
  ];
}
