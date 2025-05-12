import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/ui/screens/course/courses_screen.dart';
import 'package:chelnok_mob/ui/screens/dordoi_container/dordoi_containers_screen.dart';
import 'package:chelnok_mob/ui/screens/fulfilments/fulfilments_screen.dart';
import 'package:chelnok_mob/ui/screens/home/Announcement.dart';
import 'package:chelnok_mob/ui/screens/home/widgets/catalog_item.dart';
import 'package:chelnok_mob/ui/screens/home/widgets/market_selection_sheet.dart';
import 'package:chelnok_mob/ui/screens/home/widgets/marketplace_selection_sheet.dart';
import 'package:chelnok_mob/ui/screens/home_workers/home_workers_screen.dart';
import 'package:chelnok_mob/ui/screens/madina_market/madina_market_screen.dart';
import 'package:chelnok_mob/ui/screens/manager/managers_screen.dart';
import 'package:chelnok_mob/ui/screens/order/orders_screen.dart';
import 'package:chelnok_mob/ui/screens/real_estate/real_estate_screen.dart';
import 'package:chelnok_mob/ui/screens/service/services_screen.dart';
import 'package:chelnok_mob/ui/screens/sewing_equipment/sewing_equipment_screen.dart';
import 'package:chelnok_mob/ui/screens/work/work_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RowList extends StatelessWidget {
  const RowList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const Gap(8),
            CatalogItem(
              title: 'Швейные\nцеха',
              description: 'База швейных цехов\nКыргызстана',
              imagePath: 'assets/images/sewing_machine.png',
              containerHeight: 180,
              onTap: () {
                Navigator.push(context,
                    SlideRoute(screen: SewingWorkshopsScreen_Announcement()));
              },
            ),
            CatalogItem(
              title: 'Заказы',
              description: 'Список актуальных\nзаказов',
              imagePath: 'assets/images/box_of_coins.png',
              containerHeight: 180,
              onTap: () {
                Navigator.push(context, SlideRoute(screen: OrdersScreen()));
              },
            ),
            CatalogItem(
              title: 'Рынки',
              description: 'Список рынков\nКыргызстана',
              imagePath: 'assets/images/map_on_phone.png',
              containerHeight: 150,
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => MarketSelectionSheet(
                    bottomIndent: 100,
                    (type) {
                      Navigator.pop(context);
                      if (type.isMadina) {
                        Navigator.push(
                            context, SlideRoute(screen: MadinaMarketScreen()));
                      } else {
                        Navigator.push(context,
                            SlideRoute(screen: DordoiContainersScreen()));
                      }
                    },
                  ),
                );
              },
            ),
            CatalogItem(
              title: 'Маркетплейсы',
              description: 'Wildberries, Ozon',
              imagePath: 'assets/images/shop.png',
              containerHeight: 150,
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => MarketplaceSelectionSheet(
                    bottomIndent: 100,
                    (type) {
                      Navigator.pop(context);
                      if (type.isFulfilment) {
                        Navigator.push(
                            context, SlideRoute(screen: FulfilmentsScreen()));
                      } else if (type.isManager) {
                        Navigator.push(
                            context, SlideRoute(screen: ManagersScreen()));
                      } else if (type.isCourse) {
                        Navigator.push(
                            context, SlideRoute(screen: CoursesScreen()));
                      }
                    },
                  ),
                );
              },
            ),
        CatalogItem(
                          title: 'Услуги',
                          description: 'Список актуальных\nуслуг',
                          imagePath: 'assets/images/notebook.png',
                          containerHeight: 150,
                          onTap: () {
                            Navigator.of(context, rootNavigator: false).push(
                              MaterialPageRoute(
                                builder: (context) => ServicesScreen(),
                              ),
                            );
                            // Navigator.of(context).push(
                            //   SlideRoute(
                            //     screen: ServicesScreen(),
                            //   ),
                            // );
                          },
                        ),
                         CatalogItem(
                          title: 'Швейное\nоборудование\nи ремонт',
                          imagePath: 'assets/images/settings.png',
                          containerHeight: 150,
                          onTap: () {
                            Navigator.push(
                              context,
                              SlideRoute(
                                screen: SewingEquipmentScreen(),
                              ),
                            );
                          },
                        ),
                         CatalogItem(
                          title: 'Работа',
                          imagePath: 'assets/images/bell_in_search.png',
                          containerHeight: 110,
                          onTap: () {
                            Navigator.push(
                              context,
                              SlideRoute(
                                screen: WorkScreen(),
                              ),
                            );
                          },
                        ),
                        CatalogItem(
                          title: 'Недвижимость',
                          imagePath: 'assets/images/euro_home.png',
                          containerHeight: 110,
                          onTap: () {
                            Navigator.push(
                              context,
                              SlideRoute(
                                screen: RealEstateScreen(),
                              ),
                            );
                          },
                        ),
                       CatalogItem(
                          title: 'Надомники',
                          description: 'Список\nнадомников',
                          imagePath: 'assets/images/scissors.png',
                          containerHeight: 110,
                          onTap: () {
                            Navigator.push(
                              context,
                              SlideRoute(
                                screen: HomeWorkersScreen(),
                              ),
                            );
                          },
                        ),
          ],
        ),
      ),
    );
  }
}
