part of 'names_of_pages.dart';

class PagesRouts {
  static const INICIAL = NamesOfPages.HOME;
  static final routs = [
    GetPage(
      name: NamesOfPages.HOME,
      page: () => Welcome(),
      transition: Transition.zoom,
      title: "Welcome",
    ),
    GetPage(
        name: NamesOfPages.LOGIN,
        page: () => Login(),
        transition: Transition.zoom,
        title: "Login"),
    GetPage(
      name: NamesOfPages.RESGISTER,
      page: () => Register(),
      transition: Transition.zoom,
      title: "Resgiter",
    ),
    GetPage(
      name: NamesOfPages.PASSWORDD,
      page: () => PassWord(),
      transition: Transition.zoom,
      title: "Password",
    ),
  ];
}
