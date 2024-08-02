import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Temiloluwa ODEYEMI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/profile.png'), // Make sure to place the image in the correct path
              SizedBox(height: 16),
              Text(
                'Temiloluwa ODEYEMI',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Temiloluwa ODEYEMI is a registered NSE graduate engineer and a seasoned control systems engineer with over 5 years of experience in designing, developing, and implementing cutting-edge automation solutions. Graduating with honors from Obafemi Awolowo University (OAU) with a degree in Electrical/Electronic Engineering, Temiloluwa has honed his expertise in control theory, robotics, and advanced automation systems.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Throughout his career, Temiloluwa has contributed to numerous high-profile projects, including industrial automation at Dangote Cement Ibese Plant, the assembly and installation of 3D printers at Adeleke University, and the installation and remote technical assistance of Sensaphone Environment Monitoring Systems at CBN, Ardova and Wema Bank headquarters and branches across Nigeria. Additionally, he has been involved in the installation of AI surveillance and AI access control systems, among other projects. His innovative approach and deep understanding of control systems have earned him accolades and recognition within the industry.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Temiloluwa\'s proficiency in programming languages such as Python, C++, and MATLAB, 3D Autodesk Inventor, AutoCAD, PCB designer combined with his hands-on experience with PLCs, SCADA systems, and HMI design and Online Tutor, has enabled him to deliver robust and efficient solutions. He is adept at integrating hardware and software components to create seamless, reliable, and high-performance control systems.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'In addition to his technical skills, Temiloluwa is a dedicated mentor and leader, having led multidisciplinary teams and students to success on various projects. He is passionate about continuous learning and stays abreast of the latest advancements in control technology through active participation in professional organizations and conferences.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Temiloluwa\'s commitment to excellence, innovation, and collaboration makes him a valuable asset in the field of control systems engineering.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
