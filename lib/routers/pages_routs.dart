part of 'names_of_pages.dart';

class PagesRouts {
  static const INICIAL = NamesOfPages.HOME;
  static final routs = [
    GetPage(
      name: NamesOfPages.HOME,
      page: () => WelcomePage(),
      transition: Transition.zoom,
      title: "Welcome",
    ),
    GetPage(
        name: NamesOfPages.LOGIN,
        page: () => LoginPage(),
        transition: Transition.zoom,
        title: "Login"),
    GetPage(
      name: NamesOfPages.RESGISTER,
      page: () => RegisterPage(),
      transition: Transition.zoom,
      title: "Resgiter",
    ),
    GetPage(
      name: NamesOfPages.PASSWORDD,
      page: () => EmailChange(),
      transition: Transition.zoom,
      title: "Password",
    ),
    GetPage(
      name: NamesOfPages.CHECKEMAIL,
      page: () => EmailPage(),
      transition: Transition.zoom,
      title: "Email",
    ),
    GetPage(
      name: NamesOfPages.PROGRESS,
      page: () => ProgressEmail(),
      transition: Transition.zoom,
      title: "Loanding",
    ),
    GetPage(
      name: NamesOfPages.CODEPASSWORD,
      page: () => CodePage(),
      transition: Transition.zoom,
      title: "code",
    ),
    GetPage(
      name: NamesOfPages.CREATPASSWORD,
      page: () => CreatPassword(),
      transition: Transition.zoom,
      title: "creat",
    ),
    GetPage(
        name: NamesOfPages.SUCCESS,
        page: () => Success(),
        transition: Transition.zoom,
        title: "success"),
    GetPage(
        name: NamesOfPages.PROGRESSUCCESS,
        page: () => ProgressSuccess(),
        transition: Transition.zoom,
        title: "success")
  ];
}
