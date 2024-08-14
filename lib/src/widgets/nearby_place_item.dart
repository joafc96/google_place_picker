import 'package:flutter/material.dart';
import 'package:google_place_picker/src/entities/index.dart';

class NearbyPlaceItem extends StatelessWidget {
  final NearbyPlace nearbyPlace;
  final VoidCallback onTap;
  final TextStyle? nearbyPlaceStyle;

  const NearbyPlaceItem({
    super.key,
    required this.nearbyPlace,
    required this.onTap,
    this.nearbyPlaceStyle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          children: <Widget>[
            Image.network(nearbyPlace.icon!, width: 16),
            const SizedBox(width: 24),
            Expanded(
              child: Text(
                "${nearbyPlace.name}",
                style: nearbyPlaceStyle ?? const TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
