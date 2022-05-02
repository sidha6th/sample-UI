import 'package:mechintestui/extra/exports.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({required this.width, Key? key}) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle:const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark
      ),
      automaticallyImplyLeading: false,
      floating: true,
      elevation: 0,
      foregroundColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(
          top: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 45,
              width: width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    fontSize: 15,
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(93, 158, 158, 158),
                  hintText: 'Flipkart',
                  suffixIcon: const Icon(
                    Icons.search_rounded,
                    color: Color.fromARGB(255, 116, 115, 115),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                ),
              ),
            ),
            const Icon(
              Icons.tune,
            ),
          ],
        ),
      ),
    );
  }
}
