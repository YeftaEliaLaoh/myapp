import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "My Apps",
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Apps"),
      ),
      body: const SingleChildScrollView(
        child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla turpis lorem, molestie quis nibh vel, varius rhoncus felis. Donec eget imperdiet turpis. Fusce sed tortor dictum, vehicula lorem quis, facilisis quam. Vestibulum massa nunc, fringilla sed tempor imperdiet, varius ac leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec et elit feugiat, maximus nisi et, imperdiet odio. Suspendisse potenti. Pellentesque ante justo, semper eu blandit a, laoreet a nisl. Nam eget sem accumsan, convallis tortor faucibus, vulputate urna. Integer consequat ante vitae pharetra dignissim. Proin in tortor lacinia, malesuada nulla egestas, dignissim orci. Donec eget dui sed lorem porttitor mattis ut vitae felis. Fusce molestie vel dolor eu fringilla. Curabitur id risus felis. Donec fringilla mi ac nisl porttitor, vel gravida sapien vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tempus bibendum massa, sit amet interdum dolor semper non. Vivamus sed vestibulum urna. Maecenas lorem est, tristique a ex eu, rutrum ultricies nisl. Integer id lectus id nisl ornare iaculis. Praesent ornare ante a neque congue, sit amet suscipit metus rutrum. Praesent placerat elit nec metus blandit tempor. Fusce vitae lectus viverra, venenatis sapien sed, varius metus. Curabitur eu leo at lectus accumsan varius ac vel mauris. Sed tempor urna ac odio pharetra volutpat. Fusce sollicitudin vulputate mauris quis gravida. Praesent hendrerit neque nisl, id posuere libero egestas porttitor. Phasellus scelerisque tortor vulputate libero molestie, id pellentesque lorem sagittis. Morbi suscipit, erat quis molestie rhoncus, ante sem rhoncus urna, ac mollis sapien elit vitae felis. Sed in nibh malesuada, efficitur risus ac, accumsan arcu. Donec nisl odio, vulputate sit amet orci vel, faucibus eleifend ex. Morbi maximus lectus at neque pellentesque aliquam. Vivamus mi risus, condimentum vitae blandit at, dignissim at risus. Maecenas ullamcorper ipsum ut convallis auctor. Mauris fermentum erat vel tortor luctus, ut hendrerit nisl elementum. Nulla nec massa eleifend, fringilla tellus quis, rhoncus sapien. Phasellus non neque laoreet, tincidunt est eu, venenatis sapien. Quisque gravida bibendum ante, eget sodales metus aliquam ultrices. Fusce malesuada purus ut dui rhoncus, sit amet semper augue sollicitudin. Nulla facilisi. Nunc in quam et nisl pellentesque feugiat. Cras dignissim dolor magna, a ultricies lorem hendrerit sed. Fusce vitae augue a enim imperdiet euismod quis in sem. Ut blandit tempus efficitur. Duis sollicitudin dictum vulputate. Donec diam elit, porttitor eget nunc a, faucibus maximus mauris. Nulla dolor ligula, aliquam sed iaculis et, condimentum egestas tellus. Proin condimentum placerat purus in gravida. Fusce condimentum ut metus eget lacinia. Curabitur cursus cursus tellus ut varius. Nulla id condimentum turpis. Etiam sed risus interdum, gravida sapien non, tristique urna. Aenean tincidunt diam sem, ac posuere erat efficitur eget. Etiam rhoncus urna eget nisl posuere, eu facilisis libero pellentesque. Ut volutpat turpis id sem dapibus vestibulum. Nam efficitur aliquet urna quis volutpat. Sed id tempus diam. Sed vitae aliquam tellus. Aenean cursus velit sit amet finibus efficitur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ipsum ligula, ullamcorper id sollicitudin eu, pretium vel ipsum."),
      ),
    );
  }
}
