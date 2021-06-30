part of 'names_of_pages.dart';

class PagesRouts {
  static const INICIAL = NamesOfPages.HOME;
  static final routs = [
    GetPage(
        name: NamesOfPages.HOME,
        page: () => Welcome(),
        transition: Transition.topLevel),
    GetPage(
        name: NamesOfPages.LOGIN,
        page: () => Login(),
        transition: Transition.topLevel,
        title: "Login")
  ];
}
