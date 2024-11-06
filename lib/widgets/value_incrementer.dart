import 'package:blah/widgets/decorated_icon_button.dart';
import 'package:flutter/material.dart';

class ValueIncrementer extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback onTapMinus;
  final VoidCallback onTapPlus;

  const ValueIncrementer({
    super.key,
    required this.title,
    required this.value,
    required this.onTapMinus,
    required this.onTapPlus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      width: 175,
      height: 220,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              "$value",
              style: const TextStyle(fontSize: 72, fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIconButton(onTapMinus, Icons.remove),
                const SizedBox(width: 40),
                _buildIconButton(onTapPlus, Icons.add),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(VoidCallback onTap, IconData icon) {
    return DecoratedIconButton(
      size: 40,
      isSelected: true,
      onTap: onTap,
      icon: icon,
    );
  }
}
