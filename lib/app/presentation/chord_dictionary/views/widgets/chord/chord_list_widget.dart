import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../../../data/models/chord_model.dart';
import 'chord_item_widget.dart';

class ChordListWidget extends StatelessWidget {
  const ChordListWidget({
    Key? key,
    required this.chord,
  }) : super(key: key);
  final List<ChordModel> chord;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => ChordItemWidget(
        title: (chord[index].name!.isNotEmpty)
            ? '${chord[index].name} / ${chord[index].fullName}'
            : chord[index].fullName,
        cipher: chord[index].cipher,
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: SizedBox(
                height: 300,
                child: Center(
                  child: Image.network(
                    chord[index].image,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      separatorBuilder: (context, index) => const Space.x4(),
      itemCount: chord.length,
    );
  }
}
