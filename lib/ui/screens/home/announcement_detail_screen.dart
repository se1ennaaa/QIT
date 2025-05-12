import 'dart:convert';

import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:http/http.dart' as http;
import 'package:chelnok_mob/ui/screens/home/Announcement.dart';

class AnnouncementDetailScreen extends StatelessWidget {
  final Announcement announcement;

  const AnnouncementDetailScreen({super.key, required this.announcement});

  @override
  Widget build(BuildContext context) {
    return SafeAreaWrapper(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Объявление'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                announcement.imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFF6EFF7),
                border: Border.all(color: const Color(0xFFD091D9), width: 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Название',
                      style: TextStyle(color: Color(0xFF959595))),
                  const SizedBox(height: 4),
                  Text(
                    announcement.title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const Divider(color: Color(0xFFE8CCEC)),
                  const SizedBox(height: 10),
                  const Text('Адрес',
                      style: TextStyle(color: Color(0xFF959595))),
                  const SizedBox(height: 4),
                  Text(
                    announcement.address,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Divider(color: Color(0xFFE8CCEC)),
                  const SizedBox(height: 10),
                  const Text('Цена',
                      style: TextStyle(color: Color(0xFF959595))),
                  const SizedBox(height: 4),
                  Text(
                    '${announcement.price} сом',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Divider(color: Color(0xFFE8CCEC)),
                  const SizedBox(height: 10),
                  if (announcement.description != null) ...[
                    const Text('Описание',
                        style: TextStyle(color: Color(0xFF959595))),
                    const SizedBox(height: 4),
                    Text(
                      announcement.description!,
                      style: const TextStyle(fontSize: 16, height: 1.3),
                    ),
                  ]
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF34860D),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        // логика для чата
                      },
                      child: const Text('Написать'),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: SizedBox(
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF9605AC),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        // логика для звонка
                      },
                      child: const Text('Позвонить'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
