import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_profile/common/components/app_data.dart';
import 'package:user_profile/common/constants/image.dart';
import 'package:user_profile/common/constants/sizes.dart';
import 'package:user_profile/common/constants/strings.dart';
import 'package:user_profile/core/providers/home_page_provider.dart';
import 'package:user_profile/utils/responsiveBuilder/responsive_builder.dart';

import '../../../common/widgets/side_menu_bar.dart';

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
    final homePageProvider = Provider.of<HomePageProvider>(context);
    return Scaffold(
      appBar: Responsive.isLargeMobile(context: context) || Responsive.isMobile(context: context)? AppBar():null,
      drawer: Responsive.isLargeMobile(context: context) || Responsive.isMobile(context: context)? Drawer(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: sideMenuBar(colorScheme, homePageProvider, textTheme),
      ):null,
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
                    visible: Responsive.isDeskOrLap(context: context) ||
                        Responsive.isTablet(context: context),
                    child: Expanded(
                      flex: 2,
                      child: sideMenuBar(colorScheme, value, textTheme),
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
                  Visibility(
                    visible: Responsive.isDeskOrLap(context: context) ||
                        Responsive.isTablet(context: context),
                    child: Expanded(
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
