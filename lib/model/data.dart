import 'dart:math';

List archive = [];
List names = ["Nargiz", "Guli", "Maftuna", "Mehangiz", "Madina", "Maftuna"];
List times = ["15:52", "17:05", "11:30", "22:08", "20:20", "15:45"];
final List<Model> users = List.generate(
    8 + 2,
    (index) => Model(
        name: names[Random().nextInt(names.length)],
        subtitle: message[Random().nextInt(message.length)],
        time: times[Random().nextInt(times.length)]));
List message = [
  "salom😉",
  "Assalomu alaykum😇",
  "Yaxshimisiz",
  "Nima qilyabsiz",
  "Qaydasiz",
  "nega yozmaysiz"
];

class Model {
  String name;
  String subtitle;
  String time;

  Model({required this.name, required this.subtitle, required this.time});
}
