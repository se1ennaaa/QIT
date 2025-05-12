import 'package:chelnok_mob/data/models/dordoi_container_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DordoiModelsListView extends StatelessWidget {
  const DordoiModelsListView({
    super.key,
    required this.models,
    this.onAddTap,
    required this.currentIndex,
    this.onModelChanged,
  });

  final List<ModelItemModel> models;
  final VoidCallback? onAddTap;
  final Function(int index)? onModelChanged;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Добавить модель',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(5),
                Text(
                  'Можно добавить\nдо 10-ти моделей',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6E6E6E),
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: onAddTap,
              child: Container(
                height: 23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0xFF34860D),
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 9),
                child: Text(
                  'Добавить модель',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            )
          ],
        ),
        Gap(28),
        SizedBox(
          height: 21,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => onModelChanged?.call(index),
                child: Container(
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == currentIndex
                        ? Color(0xFF383536)
                        : Color(0xFF969595),
                  ),
                  padding: EdgeInsets.only(bottom: 1),
                  alignment: Alignment.center,
                  child: Text(
                    'Модель ${index + 1}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => Gap(1),
            itemCount: models.length,
          ),
        ),
      ],
    );
  }
}
