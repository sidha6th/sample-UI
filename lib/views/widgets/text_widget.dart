import 'package:mechintestui/extra/exports.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {required this.title,
      this.size = 16,
      this.color = Colors.black,
      Key? key})
      : super(key: key);
  final String title;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size,
        color: color,
      ),
    );
  }
}
