import 'package:flutter/material.dart';

void main() {
  runApp(const PersonalIdCardApp());
}

/// The root application widget.
class PersonalIdCardApp extends StatelessWidget {
  const PersonalIdCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Identity Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2563EB),
        ),
        useMaterial3: true,
      ),
      home: const IdCardScreen(),
    );
  }
}

/// The main ID Card screen implementing the requested widget structure:
/// Scaffold
/// └── AppBar
/// └── Center
///     └── Container
///         └── Column
///             ├── CircleAvatar
///             ├── Text → Name
///             ├── Text → Profession
///             ├── SizedBox
///             ├── Row
///             │   ├── Column (Icon + Text → Age)
///             │   ├── Column (Icon + Text → ID No.)
///             │   └── Column (Icon + Text → Blood Group)
///             ├── SizedBox
///             └── Container
///                 └── Row (Icon → Email + Text → Email Address)
class IdCardScreen extends StatelessWidget {
  const IdCardScreen({super.key});

  // Personal Information details as specified in the assignment
  static const String name = 'Adine Vikas'; // Replace with your name if desired
  static const String profession = 'Software Developer';
  static const String location = 'Mumbai, India';
  static const String age = '21 Years';
  static const String idNo = 'ID2026001';
  static const String bloodGroup = 'O+';
  static const String email = 'your@email.com'; // Or adinevikas925@gmail.com

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9), // Modern soft background
      appBar: AppBar(
        title: const Text(
          'Personal Identity Card',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E293B),
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: Center(
        child: Container(
          width: 350,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: const Color(0xFFE2E8F0),
              width: 1.5,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x14000000), // Soft shadow for depth
                blurRadius: 24,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Avatar
              const CircleAvatar(
                radius: 48,
                backgroundColor: Color(0xFF2563EB),
                child: Icon(
                  Icons.person,
                  size: 52,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),

              // Person's Name
              const Text(
                name,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0F172A),
                  letterSpacing: 0.3,
                ),
              ),
              const SizedBox(height: 4),

              // Person's Profession
              const Text(
                profession,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2563EB),
                  letterSpacing: 0.2,
                ),
              ),
              const SizedBox(height: 4),

              // Location
              const Text(
                location,
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xFF64748B),
                  fontWeight: FontWeight.w500,
                ),
              ),

              // Spacing before statistics
              const SizedBox(height: 24),

              // Personal Statistics Row
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Statistic 1: Age
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.cake,
                        color: Color(0xFFD97706),
                        size: 26,
                      ),
                      SizedBox(height: 6),
                      Text(
                        age,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1E293B),
                        ),
                      ),
                    ],
                  ),

                  // Statistic 2: ID No.
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.badge,
                        color: Color(0xFF2563EB),
                        size: 26,
                      ),
                      SizedBox(height: 6),
                      Text(
                        idNo,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1E293B),
                        ),
                      ),
                    ],
                  ),

                  // Statistic 3: Blood Group
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.bloodtype,
                        color: Color(0xFFE11D48),
                        size: 26,
                      ),
                      SizedBox(height: 6),
                      Text(
                        bloodGroup,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1E293B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Spacing before email section
              const SizedBox(height: 28),

              // Bottom Email Address Badge / Container
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8FAFC),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: const Color(0xFFE2E8F0),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email,
                      color: Color(0xFF2563EB),
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      email,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF334155),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
