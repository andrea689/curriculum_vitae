import 'package:curriculum_vitae/models/experience.dart';

class ResumeRepository {
  const ResumeRepository();

  getProfessionalProfile() {
    return 'Software Engineer with excellent design and development skills for both native and cross-platform mobile applications. Good knowledge of UI/UX guidelines and tools to better interact with designers. Excellent experience in the design and development of backend in Node and both SQL and NoSQL databases with particular focus on the management of geographic data.';
  }

  List<Experience> getExperiences() {
    return [
      Experience(
        startDate: DateTime(2019, 09, 01),
        company: 'Wher',
        city: 'Turin, IT',
        title: 'CTO & Co-Founder',
        desription: '''Defined the business strategy together with the CEO.
Managed up to 4 collaborators for app and backend development.
Designed and developed the MVP in Ionic, Node and MongoDB.
Designed and developed the iOS native app in Swift.
Designed and developed the Android (Java) and iOS (Swift) libraries for the interactions with the map (Mapbox) and subsequently incorporated them into a package for Flutter.
Designed and coordinated the restyling of the app using Flutter.
Designed and developed the backend in Node and PostgreSQL on Ubuntu Server.
Configured Tegola tile server and OSRM routing engine.
Managed the entire IT infrastructure with the use of Azure, GCP and GSuite.
Created dashboards in Data Studio according to the needs of the CEO and the Marketing Manager.''',
      ),
      Experience(
        startDate: DateTime(2016, 08, 01),
        endDate: DateTime(2017, 04, 01),
        company: 'Politecnico di Torino',
        city: 'Turin, IT',
        title: 'Research fellow',
        desription:
            '''Developed an audio/video communication system in the context of an interactive virtual reality application written in C# on Unity.''',
      ),
      Experience(
        startDate: DateTime(2015, 08, 01),
        endDate: DateTime(2016, 07, 01),
        company: 'JOL Swarm TIM',
        city: 'Turin, IT',
        title: 'Research fellow',
        desription:
            '''Developed a demo to demonstrate how a smartphone can give connectivity to IoT objects present in the streets. In particular, I made a smart garbage bin through an Arduino Yun with an ultrasound sensor to monitor the filling level, and created a dashboard to monitoring this with MeteorJS and Leaflet.
Developed a connector for the Ciao Arduino library for communication between Sketch and Meteor backend.
Contributed to the writing of a paper published in the conference proceedings of the FOSS4G.
Supported other teams in developing of web applications.''',
      ),
      Experience(
        startDate: DateTime(2014, 09, 01),
        endDate: DateTime(2015, 03, 01),
        company: 'JOL Swarm TIM',
        city: 'Turin, IT',
        title: 'Internship',
        desription:
            '''Developed a SPA for the analysis of the Wi-Fi coverage status of certain areas or individual Turin roads for the feasibility assessment of a new service for the connection of IoT objects placed on public roads.''',
      ),
      Experience(
        startDate: DateTime(2012, 05, 01),
        endDate: DateTime(2012, 07, 01),
        company: 'JOL Swarm TIM',
        city: 'Turin, IT',
        title: 'Internship',
        desription:
            '''Developed a web application for the management of batch transport times throughout the production process.''',
      ),
    ];
  }

  List<Experience> getEducations() {
    return [
      Experience(
        startDate: DateTime(2012, 10, 01),
        endDate: DateTime(2015, 03, 01),
        company: 'Politecnico di Torino',
        city: 'Turin, IT',
        title: 'Master\'s Degree in Computer Engineering',
        desription:
            '''Thesis: "Web platform for exploring opportunistic urban Wi-Fi networks".''',
      ),
      Experience(
        startDate: DateTime(2008, 10, 01),
        endDate: DateTime(2012, 07, 01),
        company: 'Università degli Studi di Catania',
        city: 'Catania, IT',
        title: 'Bachelor\'s Degree in Computer Engineering',
        desription:
            '''Thesis: "Design and implementation of an web interface for time management in the manufacturing environment".''',
      ),
    ];
  }

  List<Experience> getVoluntering() {
    return [
      Experience(
        startDate: DateTime(2019, 05, 01),
        company: 'GDG Torino',
        city: 'Turin, IT',
        title: 'GDG Organizer - Dev Team',
        desription: '''Supported all group's activities, in particular:
Speaker at the talk: "Display a map on Flutter apps".
Coordinated the event organization: "Flutter Interact '19".''',
      ),
    ];
  }

  List<Experience> getOpenSourceProjects() {
    return [
      Experience(
        title: 'flutter-mapbox-gl',
        desription: '''Added iOS and web support''',
        link: 'http://bit.ly/flutter-mapbox-gl-web',
      ),
      Experience(
        title: 'mapbox-gl-dart',
        desription: '''Developed Mapbox-gl.js wrapper for Dart.''',
        link: 'http://bit.ly/mapbox-gl-dart-web',
      ),
    ];
  }
}
