import 'package:flutter/material.dart';

import '../../core/providers/home_page_provider.dart';
import '../components/app_data.dart';
import '../constants/image.dart';
import '../constants/strings.dart';

Padding sideMenuBar(
    ColorScheme colorScheme, HomePageProvider value, TextTheme textTheme) {
  return Padding(
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
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                        Border.all(color: colorScheme.primary, width: 2),
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
                        child: const CircleAvatar(
                            radius: 7, backgroundColor: Colors.green),
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
                    children:
                    AppData.sideMenuDataList.asMap().entries.map((e) {
                      final item = AppData.sideMenuDataList[e.key];
                      return InkWell(
                        onTap: () {
                          debugPrint(e.key.toString());
                          value.setSelectedSideData(value: e.key);
                        },
                        child: Text(item["label"].toString(),
                            style: value.selectedSideData == e.key
                                ? textTheme.titleLarge
                                : textTheme.labelSmall),
                      );
                    }).toList(),
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
  );
}