import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPaddings().horizontalPadding,
        child: Column(
          children: [
            //-----------------Texts-------------

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ProcejtTextWidgets(
                  text: ProjectTexts().helloName,
                  style: TextStyle(fontSize: TextSizes().helloSize),
                  textAlign: TextAlign.start,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: ProcejtTextWidgets(
                    text: ProjectTexts().subtitleText,
                    style: TextStyle(fontSize: TextSizes().subtitleSize),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),

            //------------------First Card-------------------

            Padding(
              padding: ProjectPaddings().verticalPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomCards(
                    child: Column(
                      children: [
                        const UxCardImage(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: ProjectPaddings().horizontalPadding,
                              child: ProjectIcons().uxTimeIcon,
                            ),
                            const UxCardTimeText(),
                          ],
                        ),
                        Padding(
                          padding: ProjectPaddings().verticalPadding,
                          child: const UxCardText(),
                        ),
                      ],
                    ),
                  ),

                  //-------------Second Card------------------

                  Padding(
                    padding: ProjectPaddings().verticalPadding,
                    child: CustomCards(
                      child: Column(
                        children: [
                          const UiCardImage(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: ProjectPaddings().horizontalPadding,
                                child: ProjectIcons().uiTimeIcon,
                              ),
                              const UiCardTimeText(),
                            ],
                          ),
                          Padding(
                            padding: ProjectPaddings().verticalPadding,
                            child: const UiCardText(),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //--------------Third Card-------------------------

                  Padding(
                    padding: ProjectPaddings().verticalPadding,
                    child: CustomCards(
                      child: Column(
                        children: [
                          const ProgrammingCardImage(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: ProjectPaddings().horizontalPadding,
                                child: ProjectIcons().programmingTimeIcon,
                              ),
                              const ProgrammingCardTimeText(),
                            ],
                          ),
                          Padding(
                            padding: ProjectPaddings().verticalPadding,
                            child: const ProgrammingCardText(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: ProjectPaddings().verticalPadding,
                child: ProcejtTextWidgets(
                  style: TextStyle(
                      fontSize: TextSizes().recentlySize,
                      fontWeight: FontWeight.w500),
                  text: ProjectTexts().recentlyText,
                  textAlign: TextAlign.start,
                )),

            //--------------------------First Recently Card----------------------

            Padding(
              padding: ProjectPaddings().verticalPadding,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CourseCard(
                        child: JavascriptCardImage(),
                      ),
                      Padding(
                        padding: ProjectPaddings().horizontalPadding +
                            ProjectPaddings().verticalPadding,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const JavascriptCardText(),
                            Row(
                              children: [
                                ProjectIcons().uiTimeIcon,
                                Padding(
                                  padding: ProjectPaddings().horizontalPadding,
                                  child: const JavascriptModuleText(),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //-------------------Second Recently Card----------------------

            Padding(
              padding: ProjectPaddings().verticalPadding,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CourseCard(
                        child: PythonCardImage(),
                      ),
                      Padding(
                        padding: ProjectPaddings().horizontalPadding +
                            ProjectPaddings().verticalPadding,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const PythonCardText(),
                            Row(
                              children: [
                                ProjectIcons().uxTimeIcon,
                                Padding(
                                  padding: ProjectPaddings().horizontalPadding,
                                  child: const PythonModuleText(),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //--------------------------Third Recently Card---------------------

            Padding(
              padding: ProjectPaddings().verticalPadding,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CourseCard(
                        child: UXDesignCardImage(),
                      ),
                      Padding(
                        padding: ProjectPaddings().horizontalPadding +
                            ProjectPaddings().verticalPadding,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const UXDesignCardText(),
                            Row(
                              children: [
                                ProjectIcons().programmingTimeIcon,
                                Padding(
                                  padding: ProjectPaddings().horizontalPadding,
                                  child: const UXDesignModuleText(),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          bottomBarHome(),
          bottomBarStats(),
          bottomBarFolder(),
          bottomBarProfile(),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomBarProfile() {
    return BottomNavigationBarItem(
      label: '',
      icon: ProjectIcons().bottomProfile,
    );
  }

  BottomNavigationBarItem bottomBarFolder() {
    return BottomNavigationBarItem(
      label: '',
      icon: ProjectIcons().bottomFolder,
    );
  }

  BottomNavigationBarItem bottomBarStats() {
    return BottomNavigationBarItem(
      label: '',
      icon: ProjectIcons().bottomStats,
    );
  }

  BottomNavigationBarItem bottomBarHome() {
    return BottomNavigationBarItem(
      label: '',
      icon: ProjectIcons().bottomHome,
    );
  }
}

class UXDesignModuleText extends StatelessWidget {
  const UXDesignModuleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ProjectTexts().uxDesignModule,
      style: const TextStyle(color: Colors.lightBlue),
    );
  }
}

class UXDesignCardText extends StatelessWidget {
  const UXDesignCardText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProcejtTextWidgets(
      text: ProjectTexts().uxDesignText,
      style: TextStyle(fontSize: TextSizes().courseNameSize),
    );
  }
}

class UXDesignCardImage extends StatelessWidget {
  const UXDesignCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image.asset('assets/uxdesign.jpg'),
    );
  }
}

class PythonModuleText extends StatelessWidget {
  const PythonModuleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ProjectTexts().pythonModule,
      style: const TextStyle(color: Colors.red),
    );
  }
}

class PythonCardText extends StatelessWidget {
  const PythonCardText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProcejtTextWidgets(
      text: ProjectTexts().pythonText,
      style: TextStyle(fontSize: TextSizes().courseNameSize),
    );
  }
}

class PythonCardImage extends StatelessWidget {
  const PythonCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image.asset('assets/python.png'),
    );
  }
}

class JavascriptModuleText extends StatelessWidget {
  const JavascriptModuleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ProjectTexts().javascriptModule,
      style: const TextStyle(color: Colors.grey),
    );
  }
}

class JavascriptCardText extends StatelessWidget {
  const JavascriptCardText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProcejtTextWidgets(
      text: ProjectTexts().javascriptText,
      style: TextStyle(fontSize: TextSizes().courseNameSize),
    );
  }
}

class JavascriptCardImage extends StatelessWidget {
  const JavascriptCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image.asset('assets/javascript.png'),
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      child: child,
    );
  }
}

class UxCardText extends StatelessWidget {
  const UxCardText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ProjectTexts().uxText,
      style: const TextStyle(color: Colors.black),
    );
  }
}

class UxCardTimeText extends StatelessWidget {
  const UxCardTimeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ProjectTexts().uxTime,
      style: TextStyle(color: Colors.red, fontSize: TextSizes().cardTimeSize),
    );
  }
}

class UxCardImage extends StatelessWidget {
  const UxCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image.asset(
        alignment: Alignment.topCenter,
        'assets/uxdesign.jpg',
        scale: 20.0,
      ),
    );
  }
}

class UiCardImage extends StatelessWidget {
  const UiCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image.asset(
        alignment: Alignment.topCenter,
        'assets/uidesign.jpg',
        scale: 20.0,
      ),
    );
  }
}

class UiCardTimeText extends StatelessWidget {
  const UiCardTimeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ProjectTexts().uiTime,
      style: TextStyle(color: Colors.grey, fontSize: TextSizes().cardTimeSize),
    );
  }
}

class UiCardText extends StatelessWidget {
  const UiCardText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ProjectTexts().uiText,
      style: const TextStyle(color: Colors.black),
    );
  }
}

class ProgrammingCardImage extends StatelessWidget {
  const ProgrammingCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image.asset(
        alignment: Alignment.topCenter,
        'assets/programming.jpg',
        scale: 20.0,
      ),
    );
  }
}

class ProgrammingCardTimeText extends StatelessWidget {
  const ProgrammingCardTimeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ProjectTexts().programmingTime,
      style: TextStyle(color: Colors.grey, fontSize: TextSizes().cardTimeSize),
    );
  }
}

class ProgrammingCardText extends StatelessWidget {
  const ProgrammingCardText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ProjectTexts().programmingText,
      style: const TextStyle(color: Colors.black),
    );
  }
}

class ProcejtTextWidgets extends StatelessWidget {
  const ProcejtTextWidgets(
      {super.key, required this.text, required this.style, this.textAlign});

  final String text;
  final TextStyle style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(color: Colors.black),
      textAlign: textAlign,
    );
  }
}

class ProjectTexts {
  final String helloName = "Hello, Fadly";
  final String subtitleText = "What do you want learn today ?";
  final String uxText = "UX Design";
  final String uxTime = "2 hours";
  final String uiText = "UI Design";
  final String uiTime = "45 minutes";
  final String programmingText = "Programming";
  final String programmingTime = "3 hours";
  final String recentlyText = "Recently added";
  final String javascriptText = "Javascript for Beginner";
  final String javascriptModule = "34 modules";
  final String pythonText = "Python for Beginner";
  final String pythonModule = "20 modules";
  final String uxDesignText = "UX Design for Beginner";
  final String uxDesignModule = "11 modules";
}

class TextSizes {
  final double helloSize = 35.0;
  final double subtitleSize = 14.0;
  final double cardTimeSize = 12.0;
  final double recentlySize = 25.0;
  final double courseNameSize = 22.0;
}

class ProjectPaddings {
  final horizontalPadding = const EdgeInsets.symmetric(horizontal: 8.0);
  final verticalPadding = const EdgeInsets.symmetric(vertical: 8.0);
}

class CustomCards extends StatelessWidget {
  const CustomCards({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 120,
          height: 150,
          decoration: const BoxDecoration(color: Colors.white),
          child: child,
        ),
      ],
    );
  }
}

class ProjectIcons {
  final uxTimeIcon = const Icon(
    Icons.alarm,
    color: Colors.red,
    size: 15.0,
  );
  final uiTimeIcon = const Icon(
    Icons.alarm,
    color: Colors.grey,
    size: 15.0,
  );
  final programmingTimeIcon = const Icon(
    Icons.alarm,
    color: Colors.lightBlue,
    size: 15.0,
  );
  final bottomHome = const Icon(
    Icons.home_filled,
    color: Colors.grey,
  );
  final bottomStats = Icon(
    Icons.query_stats_outlined,
    color: Colors.grey.shade300,
  );
  final bottomFolder = Icon(
    Icons.folder,
    color: Colors.grey.shade300,
  );
  final bottomProfile = Icon(
    Icons.person_rounded,
    color: Colors.grey.shade300,
  );
}
