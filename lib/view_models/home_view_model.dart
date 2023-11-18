

// class HomeViewModel extends ChangeNotifier {
//   bool isLoading = true;
//   final HomeService homeService = HomeService();

//   late List<HomeModel> homeList = [];

//   void fetchHome() async {
//     homeList = await homeService.getHome();
//     isLoading = false;
//     notifyListeners();
//   }
// }