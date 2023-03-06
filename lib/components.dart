import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

//Variables
urlLauncer(String imagePath, String url) {
  return IconButton(
    icon: SvgPicture.asset(
      imagePath,
      color: Colors.black,
      width: 35,
    ),
    onPressed: () async {
      // ignore: deprecated_member_use
      await launchUrl(Uri.parse(url));
    },
  );
}

final TextEditingController _firstNameController = TextEditingController();
final TextEditingController _lastNameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _phoneController = TextEditingController();
final TextEditingController _messageController = TextEditingController();

var logger = Logger();

//Classess and Methods
class TabsWeb extends StatefulWidget {
  final title;
  final route;
  const TabsWeb({Key? key, this.route, this.title}) : super(key: key);

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isSelected = true;
          });
          // print('Entered');
        },
        onExit: (_) {
          setState(() {
            isSelected = false;
          });
          // print('Exited');
        },
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 100),
          curve: Curves.elasticIn,
          style: isSelected
              ? GoogleFonts.roboto(
                  shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(0, -5),
                      ),
                    ],
                  fontSize: 25.0,
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.tealAccent)
              : GoogleFonts.roboto(color: Colors.black, fontSize: 20.0),
          child: Text(
            widget.title,
          ),
        ),
      ),
    );
  }
}

class TabsWebList extends StatefulWidget {
  const TabsWebList({super.key});

  @override
  State<TabsWebList> createState() => _TabsWebListState();
}

class _TabsWebListState extends State<TabsWebList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(
          flex: 3,
        ),
        TabsWeb(
          title: 'Home',
          route: '/',
        ),
        Spacer(),
        TabsWeb(
          title: 'Works',
          route: '/works',
        ),
        Spacer(),
        TabsWeb(
          title: 'Blog',
          route: '/blog',
        ),
        Spacer(),
        TabsWeb(
          title: 'About',
          route: '/works',
        ),
        Spacer(),
        TabsWeb(
          title: 'Contact',
          route: '/contact',
        )
      ],
    );
  }
}

class TabsMobile extends StatefulWidget {
  final text;
  final route;
  const TabsMobile({super.key, @required this.text, @required this.route});

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(5.0),
        ),
        height: 50.0,
        minWidth: 200.0,
        color: Colors.black,
        child: Text(
          widget.text,
          style: GoogleFonts.openSans(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(widget.route);
        });
  }
}

class DrawersWeb extends StatefulWidget {
  const DrawersWeb({super.key});

  @override
  State<DrawersWeb> createState() => _DrawersWebState();
}

class _DrawersWebState extends State<DrawersWeb> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 72,
            backgroundColor: Colors.tealAccent,
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('Profile_Pic.jpg'),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          SansBold('Franna', 30.0),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              urlLauncer('instagram.svg', 'https://www.google.com'),
              urlLauncer('twitter.svg', 'https://www.google.com'),
              urlLauncer('github.svg', 'https://www.google.com'),
            ],
          )
        ],
      ),
    );
  }
}

class DrawersMobiler extends StatefulWidget {
  const DrawersMobiler({super.key});

  @override
  State<DrawersMobiler> createState() => _DrawersMobilerState();
}

class _DrawersMobilerState extends State<DrawersMobiler> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2.0, color: Colors.black),
              ),
              child: Image.asset('Profile_Pic.jpg',
                  filterQuality: FilterQuality.high),
            ),
          ),
          TabsMobile(text: 'Home', route: '/'),
          SizedBox(
            height: 20.0,
          ),
          TabsMobile(text: 'Works', route: '/works'),
          SizedBox(
            height: 20.0,
          ),
          TabsMobile(text: 'blog', route: '/blog'),
          SizedBox(
            height: 20.0,
          ),
          TabsMobile(text: 'About', route: '/about'),
          SizedBox(
            height: 20.0,
          ),
          TabsMobile(text: 'Contact', route: '/contact'),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              urlLauncer('instagram.svg', 'https://www.google.com'),
              urlLauncer('twitter.svg', 'https://www.google.com'),
              urlLauncer('github.svg', 'https://www.google.com'),
            ],
          )
        ],
      ),
    );
  }
}

//SansBold Font Widget
class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

//Sans Font Widget
class Sans extends StatelessWidget {
  final text;
  final size;
  const Sans(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size),
    );
  }
}

class TextForm extends StatelessWidget {
  final heading; //text
  final width; //containerwidth
  final hintText;
  final maxLine;
  final controller;
  final validator;
  const TextForm(
      {super.key,
      @required this.heading,
      @required this.width,
      @required this.hintText,
      this.maxLine,
      this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 16.0),
        SizedBox(
          height: 5.0,
        ),
        SizedBox(
          width: width, //container width name was changed by instructor
          child: TextFormField(
            validator: validator,
            controller: controller,
            maxLines: maxLine == null ? null : maxLine,
            decoration: InputDecoration(
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.teal,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.tealAccent,
                  width: 3,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14.0),
            ),
            // validator: (text) {
            //   if(RegExp("\\bfranna\\b", caseSensitive: false).hasMatch(text.toString())) {
            //     return 'Match found';
            //   }
            // },
            // autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
      ],
    );
  }
}

//Animation
class AmimatedCardWeb extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;
  const AmimatedCardWeb({
    Key? key,
    @required this.imagePath,
    this.text,
    this.fit,
    this.reverse,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  State<AmimatedCardWeb> createState() => _AmimatedCardWebState();
}

class _AmimatedCardWebState extends State<AmimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.tealAccent)),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height == null ? 200.0 : widget.height,
                width: widget.width == null ? 200.0 : widget.width,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(height: 10),
              widget.text == null ? SizedBox() : SansBold(widget.text, 15),
            ],
          ),
        ),
      ),
    );
  }
}

class AbelCustom extends StatelessWidget {
  final text;
  final size;
  final color;
  final fontweight;
  const AbelCustom(
      {super.key, this.text, this.size, this.color, this.fontweight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
        fontSize: size,
        color: color == null ? Colors.black : color,
        fontWeight: fontweight == null ? FontWeight.normal : fontweight,
      ),
    );
  }
}

class AddDataFirestore {
  //var logger = Logger();
  CollectionReference responce =
      FirebaseFirestore.instance.collection('messages');
  Future addResponce(final firstName, final lastName, final email,
      final phoneNumber, final message) async {
    return responce.add({
      'first name': firstName,
      'last name': lastName,
      'email': email,
      'phone number': phoneNumber,
      'message': message
    }).then((value) {
      return true;
    }).catchError((error) {
      logger.d(error);
      return false;
    });
  }
}

Future DialogError(BuildContext context, String title) {
  return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            title: SansBold(title, 20.0),
          ));
}

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  var logger = Logger();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Form(
      key: formKey,
      child: Wrap(
        runSpacing: 20.0,
        spacing: 20.00,
        alignment: WrapAlignment.center,
        children: [
          SansBold('Contact Me', 35.0),
          TextForm(
            heading: 'First ',
            width: widthDevice / 1.4,
            hintText: 'Please type first Name',
            controller: _firstNameController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return 'First Name is Required';
              }
            },
          ),
          TextForm(
            heading: 'Last Name',
            width: widthDevice / 1.4,
            hintText: 'Please type last name',
            controller: _lastNameController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return 'Last Name is Required';
              }
            },
          ),
          TextForm(
            heading: 'Email',
            width: widthDevice / 1.4,
            hintText: 'Email Here',
            controller: _emailController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return 'Email is Required';
              }
            },
          ),
          TextForm(
            heading: 'Contact Nr',
            width: widthDevice / 1.4,
            hintText: 'Contact Number Here',
            controller: _phoneController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return 'Nr is Required';
              }
            },
          ),
          TextForm(
            heading: 'Message',
            width: widthDevice / 1.4,
            hintText: 'Massage',
            maxLine: 10.0,
            controller: _messageController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return 'Message is Required';
              }
            },
          ),
          MaterialButton(
            onPressed: () async {
              logger.d(_firstNameController.text);
              final addData = new AddDataFirestore();
              if (formKey.currentState!.validate()) {
                if (await addData.addResponce(
                    _firstNameController.text,
                    _lastNameController.text,
                    _emailController.text,
                    _phoneController.text,
                    _messageController.text)) {
                  formKey.currentState!.reset();
                  DialogError(context, 'Message sent Successfully');
                } else {
                  DialogError(context, 'Message failed to send');
                }
              }
            },
            elevation: 20.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 60.0,
            minWidth: widthDevice / 3.2,
            color: Colors.tealAccent,
            child: SansBold('Submit', 20.0),
          )
        ],
      ),
    );
  }
}

class ContactFormMobile extends StatefulWidget {
  const ContactFormMobile({super.key});

  @override
  State<ContactFormMobile> createState() => _ContactFormMobileState();
}

class _ContactFormMobileState extends State<ContactFormMobile> {
  final formKey = GlobalKey<FormState>();
  //Var
  Widget build(BuildContext context) {
    @override
    var widthDevice = MediaQuery.of(context).size.width;
    return Form(
      key: formKey,
      child: Wrap(
        runSpacing: 20.0,
        spacing: 20.00,
        alignment: WrapAlignment.center,
        children: [
          SansBold('Contact Me', 35.0),
          TextForm(
            heading: 'First ',
            width: widthDevice / 1.4,
            hintText: 'Please type first Name',
            controller: _firstNameController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return 'First Name is Required';
              }
            },
          ),
          TextForm(
            heading: 'Last Name',
            width: widthDevice / 1.4,
            hintText: 'Please type last name',
            controller: _lastNameController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return 'Last Name is Required';
              }
            },
          ),
          TextForm(
            heading: 'Email',
            width: widthDevice / 1.4,
            hintText: 'Email Here',
            controller: _emailController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return 'Email is Required';
              }
            },
          ),
          TextForm(
            heading: 'Contact Nr',
            width: widthDevice / 1.4,
            hintText: 'Contact Number Here',
            controller: _phoneController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return 'Nr is Required';
              }
            },
          ),
          TextForm(
            heading: 'Message',
            width: widthDevice / 1.4,
            hintText: 'Massage',
            maxLine: 10.0,
            controller: _messageController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return 'Message is Required';
              }
            },
          ),
          MaterialButton(
            onPressed: () async {
              logger.d(_firstNameController.text);
              final addData = new AddDataFirestore();
              if (formKey.currentState!.validate()) {
                if (await addData.addResponce(
                    _firstNameController.text,
                    _lastNameController.text,
                    _emailController.text,
                    _phoneController.text,
                    _messageController.text)) {
                  formKey.currentState!.reset();
                  DialogError(context, 'Message sent Successfully');
                } else {
                  DialogError(context, 'Message failed to send');
                }
              }
            },
            elevation: 20.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 60.0,
            minWidth: widthDevice / 3.2,
            color: Colors.tealAccent,
            child: SansBold('Submit', 20.0),
          )
        ],
      ),
    );
  }
}

tealContainer(String text) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
          color: Colors.tealAccent, style: BorderStyle.solid, width: 2.0),
      borderRadius: BorderRadius.circular(5.0),
    ),
    padding: EdgeInsets.all(7.0),
    child: Text(
      text,
      style: GoogleFonts.openSans(fontSize: 15.0),
    ),
  );
}
