import 'package:mechintestui/extra/exports.dart';

class WholeLayout extends StatelessWidget {
  const WholeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        shrinkWrap: true,
        slivers: <Widget>[
          AppbarWidget(
            width: MediaQuery.of(context).size.width,
          ),
          const SliverToBoxAdapter(
            child: DataListPortion(),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
