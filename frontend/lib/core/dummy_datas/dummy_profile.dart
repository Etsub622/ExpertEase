import 'package:expertease/domain/entities/profile.dart';
import 'package:expertease/features/appointment_display/presentation/pages/expert_profile_page.dart';

final Profile profile = Profile(
    name: 'Dr. Heran Eshetu',
    profession: 'Psychiatrist',
    fee: 20,
    rating: 700,
    bio:
        'Hi, I\'m Dr. Heran Eshetu, a board-certified psychiatrist with over 3 years of experience. I earned my medical degree from Addis Ababa University and completed my psychiatry residency at Tikur Anbesa Hospital. My passion is helping individuals manage and overcome mental health challenges like anxiety, depression, bipolar disorder, and schizophrenia. I believe in a holistic approach to treatment, combining medication management with psychotherapy to meet each patient\'s unique needs.',
    contactEmail: 'heraneshetu@gmail.com',
    contactPhone: '+251987654321',
    reviews: [
      Review(author: 'Etsub Taye', content: 'I recently had the pleasure of consulting with Dr. Heran Eshetu, and I couldn\'t be more satisfied with the experience.', rating: 5),
      Review(author: 'Hana Guta', content: 'I recently had the pleasure of consulting with Dr. Heran Eshetu, and I couldn\'t be more satisfied with the experience.', rating:4),
    ],
    schedule: [
      ScheduleItem(day: 'Sun', date: 21, events: [
        ScheduleEvent(time: '7:00 AM', title: 'Happy Hour', type: EventType.event),
        ScheduleEvent(time: '8:00 AM', title: '1-1 with Dagmawi Misker', type: EventType.appointment),
        ScheduleEvent(time: '9:00 PM', title: 'No appointment', type: EventType.noAppointment),
      ]),
      ScheduleItem(day: 'Mon', date: 22, events: [
        ScheduleEvent(time: '7:00 AM', title: 'Happy Hour', type: EventType.event),
        ScheduleEvent(time: '10:00 AM', title: '1-1 with Etsub Taye', type: EventType.appointment),
      ]),
    ],
  );