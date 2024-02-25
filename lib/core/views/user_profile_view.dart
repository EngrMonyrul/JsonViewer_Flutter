import 'package:flutter/material.dart';
import 'package:user_profile/utils/responsiveBuilder/responsive_builder.dart';

class UserProfileView extends StatefulWidget {
  const UserProfileView({super.key});

  @override
  State<UserProfileView> createState() => _UserProfileViewState();
}

class _UserProfileViewState extends State<UserProfileView> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1440),
          color: Colors.deepPurple,
          child: Center(
            child: Text(
              Responsive.isMobile(context: context)?
              "Mobile":
                  Responsive.isLargeMobile(context: context)?
                  "Large Mobile":
                      Responsive.isTablet(context: context)?
                      "Tablet":
                      "Desktop or Laptop"
            ),
          ),
        ),
      ),
    );
  }
}
