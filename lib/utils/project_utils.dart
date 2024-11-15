
    class ProjectUtils {

      final String image;

      final String title;

      final String subtitle;

      final String fullcontent;

      final String? androidLink;

      final String? iosLink;

      final String? webLink;

      final String? gitLink;

      final String? pypiLink;

      final String? verifierLink;

      final String displayFooter;

    

      ProjectUtils({

        required this.image,

        required this.title,

        required this.subtitle,

        required this.fullcontent,

        this.androidLink,

        this.iosLink,

        this.webLink,

        this.gitLink,

        this.pypiLink,

        this.verifierLink,

        required this.displayFooter,

      });

    }

    List < ProjectUtils > hobbyProjectUtils = [

    ProjectUtils(
image: 'assets/projects/login.jpg',

title: 'Test',

subtitle: 'test',

fullcontent: 'tes',
pypiLink: 'https://github.com',

displayFooter: 'Available on',
  
),
  
];

    List<ProjectUtils> workProjectUtils = [
 ProjectUtils(
image: 'assets/projects/mobileticket.jpg',

title: 'JP',

subtitle: 'Jp',

fullcontent: 'Jp',

verifierLink: 'https://linkedin.in',

displayFooter: 'Verified by',
  ),  
];

    