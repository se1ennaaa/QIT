import 'dart:convert';
import 'package:chelnok_mob/app/app_colors.dart';
import 'package:chelnok_mob/ui/screens/home/Announcement.dart';
import 'package:chelnok_mob/ui/screens/home/announcement_detail_screen.dart';
import 'package:chelnok_mob/ui/screens/home/promo_banner_widget.dart';
import 'package:chelnok_mob/ui/screens/home/row_list.dart';
import 'package:chelnok_mob/ui/screens/home/top_header_widget.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends HookWidget {
  final ScrollController scrollController;

  const HomeScreen({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final announcements = useState<List<Announcement>>([]);
    final page = useState(1);
    final isLoading = useState(false);

    Future<void> fetchAnnouncements() async {
      if (isLoading.value) return;
      isLoading.value = true;

      final response = await http.get(
        Uri.parse('https://chelnok.kg/api/main?page=${page.value}&offset=12'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<Announcement> newItems = (data['list'] as List)
            .map((e) => Announcement.fromJson(e))
            .toList();

        announcements.value = [...announcements.value, ...newItems];
        page.value++;
      }

      isLoading.value = false;
    }

    useEffect(() {
      fetchAnnouncements();
      return null;
    }, []);

    void _filter(String query) {
      debugPrint('Фильтрация по: $query');
    }

    return SafeAreaWrapper(
      child: Container(
        color: Colors.white,
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              elevation: 2,
              toolbarHeight: 70,
              flexibleSpace: SafeArea(
                bottom: false,
                child: TopHeaderWidget(onSearch: _filter),
              ),
            ),
            SliverToBoxAdapter(child: RowList()),
            const SliverToBoxAdapter(child: Gap(25)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Акции и новости",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SliverToBoxAdapter(child: Gap(5)),
            SliverToBoxAdapter(child: PromoBannerWidget()),
            const SliverToBoxAdapter(child: Gap(25)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Все объявления",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return AnnouncementCard(
                      announcement: announcements.value[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => AnnouncementDetailScreen(
                              announcement: announcements.value[index],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  childCount: announcements.value.length,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.7,
                ),
              ),
            ),
            if (isLoading.value)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(child: CircularProgressIndicator()),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
