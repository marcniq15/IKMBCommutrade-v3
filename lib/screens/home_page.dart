import 'package:flutter/material.dart';
import 'package:real_commutrade/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // --- Custom Header ---
                _buildHeader(context, "Student"), // Placeholder name
                const SizedBox(height: 24),

                // --- Search Bar ---
                _buildSearchBar(context),
                const SizedBox(height: 24),

                // --- Announcement Card ---
                _buildAnnouncementBar(
                  context,
                  message: 'New announcement from your lecturer!',
                ),
                const SizedBox(height: 24),

                // --- Quick Actions Section ---
                Text(
                  "Quick Actions",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 16),

                // --- Info Cards in a Row ---
                Row(
                  children: [
                    Expanded(
                      child: _buildInfoCard(
                        context,
                        icon: Icons.chat_bubble_rounded,
                        title: 'Chats',
                        message: '3 New Messages',
                        color: AppTheme.secondaryColor,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildInfoCard(
                        context,
                        icon: Icons.lightbulb_rounded,
                        title: 'Deals',
                        message: 'Recommended for you',
                        color: AppTheme.accentColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // --- Header Widget ---
  Widget _buildHeader(BuildContext context, String userName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back,',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey.shade600),
            ),
            const SizedBox(height: 4),
            Text(
              userName,
              style: Theme.of(context).textTheme.displayLarge?.copyWith(height: 1.2),
            ),
          ],
        ),
        const CircleAvatar(
          radius: 28,
          backgroundColor: AppTheme.primaryColor,
          child: Icon(Icons.person, color: Colors.white, size: 30),
        ),
      ],
    );
  }

  // --- Search Bar Widget ---
  Widget _buildSearchBar(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search items, users, etc...',
        prefixIcon: Icon(Icons.search, color: Colors.grey.shade500),
        filled: true,
        fillColor: Colors.white, // Overriding default theme fill for emphasis
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
    );
  }

  // --- Reusable Card Decoration ---
  BoxDecoration _cardDecoration(BuildContext context, {Color? color}) {
    return BoxDecoration(
      color: color ?? Theme.of(context).colorScheme.surface,
      borderRadius: BorderRadius.circular(16.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          spreadRadius: 1,
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }

  // --- Announcement Bar Widget ---
  Widget _buildAnnouncementBar(BuildContext context, {required String message}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: _cardDecoration(context, color: AppTheme.secondaryColor.withOpacity(0.1)),
      child: Row(
        children: [
          Icon(Icons.campaign_rounded, color: AppTheme.secondaryColor, size: 28),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              message,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryColor,
              ),
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: AppTheme.secondaryColor),
        ],
      ),
    );
  }

  // --- Info Card Widget (Corrected Signature) ---
  Widget _buildInfoCard(
      BuildContext context, { // Correctly passing context
        required IconData icon,
        required String title,
        required String message,
        required Color color,
      }) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(16.0),
        height: 160,
        decoration: _cardDecoration(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: color.withOpacity(0.15),
              child: Icon(icon, color: color),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 2),
                Text(
                  message,
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}