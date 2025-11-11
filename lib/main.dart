import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Icspi",
      locale: const Locale('fa'),
      supportedLocales: const [
        Locale('fa'),
        Locale('en'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF001936),
        textTheme: GoogleFonts.vazirmatnTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.amber,
                displayColor: Colors.amber,
              ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

/// لینک‌ها و اطلاعات صفحه اصلی
const String googleDriveLink =
    'https://drive.google.com/drive/folders/1YNIMOvaaApuF0bPwcIYPTqDjInKxaXb3';
const String eitaaLink = 'https://eitaa.com/icspi1';
const String baleLink = 'https://ble.ir/icspi1';
const String phoneNumber = '02188918282';
const String address = 'تهران، خیابان استاد نجات الهی، خیابان ورشو، پ 9';
const String donationCard = '6037998198278037';

/// لیست کارگروه‌ها
const List<Map<String, String>> workgroups = [
  {'title': 'حقوقی و قضایی', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'امداد و نجات', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'زنان و کودکان', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'رسانه', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'سمن‌ها', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'خیرین بدون مرز', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'فضای مجازی', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'بین‌الملل', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'دانشگاه و مراکز آموزشی', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'طرح و برنامه', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'تحلیل و بررسی سیاسی', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'مراسم و اقدامات نمادین', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'میهمانان خارجی مقیم ایران', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'اقشار ویژه', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'حوزه برادران', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'حوزه خواهران', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'پشتیبانی و جمع‌آوری کمک', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'ادبیات مقاومت و هنر', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'امور شهرستان‌ها', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'اقدامات فوری', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'موقوفات', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'دانشجویی', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'جوانان', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'آموزش محتوایی', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'هماهنگ‌کننده نهادهای رسمی و حکومتی', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'محافل دینی و هیات', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'ایثار و شهادت', 'text': 'توضیح کوتاه درباره این کارگروه'},
  {'title': 'تحریم کالاهای رژیم صهیونیستی', 'text': 'توضیح کوتاه درباره این کارگروه'},
];

/// Splash Screen
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001936),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            Text(
              'خوش آمدید',
              style: GoogleFonts.vazirmatn(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Home Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      debugPrint('Could not launch $url');
    }
  }

  void _callNumber(String number) async {
    final Uri uri = Uri(scheme: 'tel', path: number);
    if (!await launchUrl(uri)) {
      debugPrint('Could not call $number');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF001936),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "صفحه اصلی",
          style: GoogleFonts.vazirmatn(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            /// LOGO
            _circleIcon(
              image: "assets/images/logo.png",
              size: 80,
            ),

            const SizedBox(height: 40),

            /// ICON GRID (صفحه اصلی)
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                _mainIcon(
                  image: "assets/icons/magazine.png",
                  label: "دانلود فصلنامه",
                  onTap: () => _launchUrl(googleDriveLink),
                ),
                _mainIcon(
                  image: "assets/icons/eitaa.png",
                  label: "کانال ایتا",
                  onTap: () => _launchUrl(eitaaLink),
                ),
                _mainIcon(
                  image: "assets/icons/bale.png",
                  label: "کانال بله",
                  onTap: () => _launchUrl(baleLink),
                ),
                _mainIcon(
                  image: "assets/icons/contact.png",
                  label: "ارتباط با ما",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        backgroundColor: const Color(0xFF0B2B4A),
                        title: Text(
                          'ارتباط با ما',
                          style: GoogleFonts.vazirmatn(
                              fontWeight: FontWeight.bold,
                              color: Colors.amber),
                        ),
                        content: Text(
                          'شماره تماس: $phoneNumber\nآدرس: $address',
                          style: GoogleFonts.vazirmatn(color: Colors.amber[200]),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              'بستن',
                              style: GoogleFonts.vazirmatn(color: Colors.amber),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
                _mainIcon(
                  image: "assets/icons/donate.png",
                  label: "کمک‌های مردمی",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        backgroundColor: const Color(0xFF0B2B4A),
                        title: Text(
                          'کمک‌های مردمی',
                          style: GoogleFonts.vazirmatn(
                              fontWeight: FontWeight.bold,
                              color: Colors.amber),
                        ),
                        content: Text(
                          'شماره کارت: $donationCard',
                          style: GoogleFonts.vazirmatn(color: Colors.amber[200]),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              'بستن',
                              style: GoogleFonts.vazirmatn(color: Colors.amber),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
                _mainIcon(
                  image: "assets/icons/workgroup.png",
                  label: "کارگروه‌ها",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const WorkgroupPage()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Workgroup Page
class WorkgroupPage extends StatelessWidget {
  const WorkgroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "کارگروه‌ها",
          style: GoogleFonts.vazirmatn(color: Colors.amber),
        ),
        backgroundColor: const Color(0xFF001936),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: workgroups.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          final workgroup = workgroups[index];
          return _workgroupCard(
            title: workgroup['title']!,
            text: workgroup['text']!,
          );
        },
      ),
    );
  }
}

/// Circular icon + Shadow
Widget _circleIcon({required String image, double size = 120}) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(.4),
          blurRadius: 15,
          spreadRadius: 3,
          offset: const Offset(0, 6),
        )
      ],
    ),
    child: ClipOval(
      child: Image.asset(
        image,
        fit: BoxFit.contain,
        color: null,
        colorBlendMode: BlendMode.dst,
      ),
    ),
  );
}

/// Main Icon (صفحه اصلی)
Widget _mainIcon(
    {required String image, required String label, required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _circleIcon(image: image, size: 80),
        const SizedBox(height: 10),
        Text(
          label,
          style: GoogleFonts.vazirmatn(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.amber,
          ),
        ),
      ],
    ),
  );
}

/// Workgroup Card
Widget _workgroupCard({required String title, required String text}) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: const Color(0xFF0B2B4A),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          blurRadius: 8,
          offset: const Offset(0, 4),
        )
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _circleIcon(
          image: "assets/icons/workgroup.png",
          size: 80,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.vazirmatn(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.vazirmatn(
            fontSize: 12,
            color: Colors.amber[180],
          ),
        ),
      ],
    ),
  );
}
