import 'package:chelnok_mob/app/app_colors.dart';
import 'package:flutter/material.dart';

class CatalogItem extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final String? description;
  final double? containerHeight;
  final bool isSelected;
  final String? imagePath;

  const CatalogItem({
    super.key,
    this.onTap,
    required this.title,
    this.isSelected = false,
    this.description,
    this.containerHeight,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 60,
        margin: const EdgeInsets.only(right: 6),
        decoration: BoxDecoration(
          color: isSelected ? Colors.purple : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? Colors.purple : AppColors.primary,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath ?? 'assets/images/sewing_machine.png',
              width: 28,
              height: 28,
            ),
            const SizedBox(height: 4),
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 10,
                    color: isSelected ? Colors.white : AppColors.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bounceable/flutter_bounceable.dart';

// import 'package:gap/gap.dart';

// class CatalogItem extends StatelessWidget {
//   final Function()? onTap;
//   final String title;
//   final String? description;
//   final Color? backgroundColor;
//   final double? containerHeight;
//   final String? imagePath;

//   const CatalogItem({
//     super.key,
//     this.onTap,
//     required this.title,
//     this.description,
//     this.backgroundColor,
//     this.containerHeight,
//     this.imagePath,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final containerHeight = this.containerHeight ?? 180;

//     return Bounceable(
//       onTap: onTap,
//       child: Container(
//         height: containerHeight,
//         padding: EdgeInsets.only(
//           top: containerHeight <= 110
//               ? 15
//               : containerHeight <= 150
//                   ? 25
//                   : 25,
//           left: containerHeight <= 110
//               ? 10
//               : containerHeight <= 150
//                   ? 16
//                   : 16,
//         ),
//         clipBehavior: Clip.antiAlias,
//         decoration: BoxDecoration(
//           color: backgroundColor,
//           borderRadius: BorderRadius.all(Radius.circular(15)),
//         ),
//         child: Stack(
//           fit: StackFit.expand,
//           children: [
//             Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(right: 5),
//                   child: Text(
//                     title,
//                     style: TextStyle(
//                       height: 0.9,
//                       fontSize: containerHeight <= 110
//                           ? 13
//                           : containerHeight <= 150
//                               ? 20
//                               : 35,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                       shadows: CupertinoContextMenu.kEndBoxShadow,
//                     ),
//                     maxLines: 2,
//                     softWrap: true,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//                 if (description != null) ...[
//                   Gap(5),
//                   Text(
//                     description!,
//                     style: TextStyle(
//                       fontSize: containerHeight <= 110
//                           ? 11
//                           : containerHeight <= 150
//                               ? 12
//                               : 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                       shadows: CupertinoContextMenu.kEndBoxShadow,
//                     ),
//                     overflow: TextOverflow.visible,
//                   ),
//                 ],
//               ],
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: Image.asset(
//                 imagePath ?? 'assets/images/sewing_machine.png',
//                 height: containerHeight <= 110
//                     ? 60
//                     : containerHeight <= 150
//                         ? 80
//                         : null,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
