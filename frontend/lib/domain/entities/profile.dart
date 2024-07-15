import 'package:expertease/features/appointment_display/presentation/pages/expert_profile_page.dart';

class Profile {
  final String name;
  final String profession;
  final int fee;
  final int rating;
  final String bio;
  final String contactEmail;
  final String contactPhone;
  final List<Review> reviews;
  final List<ScheduleItem> schedule;

  Profile({
    required this.name,
    required this.profession,
    required this.fee,
    required this.rating,
    required this.bio,
    required this.contactEmail,
    required this.contactPhone,
    required this.reviews,
    required this.schedule,
  });
}
