import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_colors.dart';
import 'package:food_delivery_app/core/constants/app_text.dart';
import 'package:food_delivery_app/domain/services/token/token_storage_service.dart';
import 'package:food_delivery_app/presentation/router/app_routes.dart';
import 'package:food_delivery_app/presentation/widgets/app_snackbar.dart';
import 'package:food_delivery_app/presentation/widgets/profile_menu.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TokenStorageService _tokenStorageService = TokenStorageService();

  void _signOut()async{
    //await auth.signOut();
    // ignore: avoid_print
    await _tokenStorageService.deleteAuthToken();
    print("Signing out");
    if (mounted){
       mySnackBar(context, AppColors.yellow, "Logging Out");
       context.go(AppRoutes.loginPath);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Profile',
          style: AppText.headings.copyWith(
            color: AppColors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz, color: AppColors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orange[200],
                    child: Icon(
                      Icons.person,
                      size: 35,
                      color: Colors.orange[400],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe',
                        style: AppText.headings.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ProfileMenu(
                    icon: Icons.person_outline,
                    iconColor: Colors.orange,
                    title: 'Personal Info',
                    onTap: () {
                      print('Go to Personal Info');
                    },
                  ),
                  _buildDivider(),
                  ProfileMenu(
                    icon: Icons.location_on_outlined,
                    iconColor: Colors.blue,
                    title: 'Addresses',
                    onTap: () {
                      print('Go to Addresses');
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ProfileMenu(
                    icon: Icons.shopping_cart_outlined,
                    iconColor: Colors.blue,
                    title: 'Cart',
                    onTap: () {
                      print('Go to Cart');
                    },
                  ),
                  _buildDivider(),
                  ProfileMenu(
                    icon: Icons.favorite_border,
                    iconColor: Colors.purple,
                    title: 'Favourite',
                    onTap: () {
                      print('Go to Favourites');
                    },
                  ),
                  _buildDivider(),
                  ProfileMenu(
                    icon: Icons.notifications_outlined,
                    iconColor: Colors.orange,
                    title: 'Notifications',
                    onTap: () {
                      print('Go to Notifications');
                    },
                  ),
                  _buildDivider(),
                  ProfileMenu(
                    icon: Icons.payment,
                    iconColor: Colors.blue,
                    title: 'Payment Method',
                    onTap: () {
                      print('Go to Payment Method');
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ProfileMenu(
                    icon: Icons.help_outline,
                    iconColor: Colors.red,
                    title: 'FAQs',
                    onTap: () {
                      print('Go to FAQs');
                    },
                  ),
                  _buildDivider(),
                  ProfileMenu(
                    icon: Icons.star_outline,
                    iconColor: Colors.cyan,
                    title: 'User Reviews',
                    onTap: () {
                      print('Go to User Reviews');
                    },
                  ),
                  _buildDivider(),
                  ProfileMenu(
                    icon: Icons.settings_outlined,
                    iconColor: Colors.blue,
                    title: 'Settings',
                    onTap: () {
                      print('Go to Settings');
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Container(
              color: Colors.white,
              child: ProfileMenu(
                icon: Icons.logout,
                iconColor: Colors.red,
                title: 'Log Out',
                onTap: () {
                  _showLogoutDialog(context);
                },
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 1,
      thickness: 1,
      color: Colors.grey[100],
      indent: 60,
      endIndent: 20,
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout', style: AppText.headings.copyWith(fontSize: 18,color: Colors.red)),
          content: Text(
            'Are you sure you want to logout?',
            style: AppText.bodyText,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel', style: TextStyle(color: AppColors.black)),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _signOut();
                print('User logged out');
              },
              child: const Text('Logout', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}
