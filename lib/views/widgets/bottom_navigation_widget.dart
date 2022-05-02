import 'package:mechintestui/extra/exports.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, buildIt) {
        return BottomNavigationBar(
          selectedLabelStyle: const TextStyle(
            color: Colors.red,
          ),
          selectedItemColor: Colors.red,
          unselectedLabelStyle: const TextStyle(
            color: Colors.grey,
          ),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (int index) {
            buildIt(() {
              currentIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.play_arrow_outlined,
              ),
              label: 'Practice',
              activeIcon: Icon(
                Icons.play_arrow_outlined,
                color: Colors.red,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.description_outlined,
              ),
              label: 'History',
              activeIcon: Icon(
                Icons.description_outlined,
                color: Colors.red,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border,
              ),
              label: 'Starred',
              activeIcon: Icon(
                Icons.star_border,
                color: Colors.red,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
              ),
              label: 'Profile',
              activeIcon: Icon(
                Icons.person_outlined,
                color: Colors.red,
              ),
            )
          ],
        );
      },
    );
  }
}
