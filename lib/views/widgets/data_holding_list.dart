import 'package:mechintestui/extra/exports.dart';

class DataListPortion extends StatelessWidget {
  const DataListPortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: scrollController,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemBuilder: (context, index) => ListTile(
        leading: Image.network(
          logoUrl,
          fit: BoxFit.fill,
          height: 30,
          width: 30,
        ),
        title: const TextWidget(
          title: title,
          size: 14,
          color: Colors.black,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            TextWidget(
              title: companyName,
              size: 12,
              color: Colors.grey,
            ),
            TextWidget(
              title: yearsOfExp,
              size: 12,
              color: Colors.grey,
            ),
          ],
        ),
        trailing: SizedBox(
          width: 80,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const <Widget>[
              Icon(
                Icons.calendar_today,
                color: Colors.red,
                size: 18,
              ),
              TextWidget(
                title: constantDateTime,
                size: 10,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: 20,
    );
  }
}
