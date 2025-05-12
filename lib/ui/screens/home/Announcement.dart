import 'dart:convert';
import 'package:chelnok_mob/app/app_colors.dart';
import 'package:chelnok_mob/ui/screens/home/announcement_detail_screen.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:http/http.dart' as http;

class Announcement {
  final int id;
  final String title;
  final String imageUrl;
  final String address;
  final int price;
  final String? description;

  Announcement({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.address,
    required this.price,
    this.description,
  });

  factory Announcement.fromJson(Map<String, dynamic> json) {
    return Announcement(
      id: json['id'],
      title: json['title'] ?? json['name'] ?? '',
      imageUrl: json['image'] ?? '',
      address: json['address'] ?? '',
      price: json['price'] ?? 0,
      description: json['description'],
    );
  }
}

class AnnouncementCard extends StatelessWidget {
  final Announcement announcement;
  final VoidCallback onTap;

  const AnnouncementCard({
    super.key,
    required this.announcement,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        clipBehavior: Clip.hardEdge,
        elevation: 2,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.3,
              child: Image.network(
                announcement.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                errorBuilder: (_, __, ___) => const Icon(Icons.image),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      announcement.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${announcement.price} сом',
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      announcement.address,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: double.infinity,
                        height: 27,
                        child: ElevatedButton(
                          onPressed: onTap,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          child: const Text(
                            "подробнее",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SewingWorkshopsScreen_Announcement extends HookWidget {
  const SewingWorkshopsScreen_Announcement({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final announcements = useState<List<Announcement>>([]);
    final isLoading = useState(false);
    final page = useState(1);
    final hasMore = useState(true);

    const int perPage = 12;

    Future<void> fetchAnnouncements({bool isRefresh = false}) async {
      if (isLoading.value || (!hasMore.value && !isRefresh)) return;

      isLoading.value = true;

      if (isRefresh) {
        page.value = 1;
        hasMore.value = true;
        announcements.value = [];
      }

      final response = await http.get(Uri.parse(
        'https://chelnok.kg/api/main?page=${page.value}&offset=$perPage',
      ));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<Announcement> newItems = (data['list'] as List)
            .map((e) => Announcement.fromJson(e))
            .toList();

        if (newItems.length < perPage) {
          hasMore.value = false;
        }

        announcements.value = [...announcements.value, ...newItems];
        page.value++;
      } else {
        print('Ошибка при загрузке: ${response.statusCode}');
      }

      isLoading.value = false;
    }

    useEffect(() {
      fetchAnnouncements();
      return;
    }, []);

    useEffect(() {
      scrollController.addListener(() {
        if (scrollController.position.pixels >=
                scrollController.position.maxScrollExtent - 200 &&
            !isLoading.value &&
            hasMore.value) {
          fetchAnnouncements();
        }
      });
      return null;
    }, [scrollController]);

    return SafeAreaWrapper(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Швейные цеха'),
        ),
        body: RefreshIndicator.adaptive(
          onRefresh: () async => fetchAnnouncements(isRefresh: true),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: announcements.value.isEmpty && isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : GridView.builder(
                    controller: scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount:
                        announcements.value.length + (hasMore.value ? 1 : 0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      if (index == announcements.value.length &&
                          hasMore.value) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }

                      final item = announcements.value[index];
                      return AnnouncementCard(
                        announcement: item,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => AnnouncementDetailScreen(
                                announcement: item,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
