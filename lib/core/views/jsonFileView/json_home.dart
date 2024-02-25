import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_profile/common/components/app_data.dart';
import 'package:user_profile/common/constants/image.dart';
import 'package:user_profile/common/constants/sizes.dart';
import 'package:user_profile/common/constants/strings.dart';
import 'package:user_profile/core/providers/home_page_provider.dart';
import 'package:user_profile/utils/responsiveBuilder/responsive_builder.dart';

class JsonHome extends StatefulWidget {
  const JsonHome({super.key});

  @override
  State<JsonHome> createState() => _JsonHomeState();
}

class _JsonHomeState extends State<JsonHome> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Consumer<HomePageProvider>(
        builder: (context, value, child) {
          return Center(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 2),
              constraints:
                  const BoxConstraints(maxWidth: AppSizes.bodyMaxWidth),
              child: Row(
                children: [
                  Visibility(
                    visible: Responsive.isDeskOrLap(context: context) || Responsive.isTablet(context: context),
                    child: Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          height: 120, width: 120,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: colorScheme.primary, width: 2),
                                            image: const DecorationImage(
                                              image: NetworkImage(AppImages.personImg),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          /*bottom: screenSize.height * .02,
                                          left: screenSize.width * .061,*/
                                          bottom: 20,
                                          left: 100,
                                          child: CircleAvatar(
                                            backgroundColor: colorScheme.primary,
                                            radius: 8,
                                            child: const CircleAvatar(radius: 7, backgroundColor: Colors.green),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(flex: 1),
                                    const FittedBox(child: Text(AppString.name)),
                                    const FittedBox(child: Text(AppString.designation)),
                                    const Spacer(flex: 3),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                margin: const EdgeInsets.symmetric(vertical: 2),
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: AppData.sideMenuDataList.asMap().entries.map((e) {
                                          final item = AppData.sideMenuDataList[e.key];
                                          return InkWell(
                                            onTap: () {
                                              debugPrint(e.key.toString());
                                              value.setSelectedSideData(value: e.key);
                                            },
                                            child: Text(
                                                item["label"].toString(),
                                                style: value.selectedSideData == e.key ? textTheme.titleLarge : textTheme.labelSmall),
                                          );
                                        }).toList(),
                                        /*[
                                          Text(AppString.history, style: textTheme.titleLarge),
                                          Text(AppString.saved, style: textTheme.labelLarge),
                                        ],*/
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Column(
                                  children: [
                                    Text(AppString.contactUs),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
