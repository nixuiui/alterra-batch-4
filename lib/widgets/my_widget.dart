import 'package:flutter/material.dart';

class AlterraWidget extends StatelessWidget {
  
  final int batch;
  final String? name;
  final Function()? onClick;
  final Function(int)? onClick2;
  
  const AlterraWidget({
    super.key,
    required this.batch,
    this.name,
    this.onClick,
    this.onClick2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Hallooo ${name ?? '-'}'),
        GestureDetector(
          onTap: () {
            onClick2?.call(batch);
          },
          child: Text('Alterra Batch $batch')
        ),
        GestureDetector(
          onTap: () {
            onClick?.call();
          },
          child: const Text('Klik Disini')
        ),
      ],
    );
  }
}