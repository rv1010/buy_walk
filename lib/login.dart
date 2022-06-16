import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  PageController controller = PageController();
  final pageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.width;
    final bool useMobileLayout = shortestSide < 900;
    // mobile view is considered for both tablet and mobile

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/vector-bg.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          // desktop view
          if (!useMobileLayout)
            SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: PageView(
                              controller: controller,
                              onPageChanged: (int val) {
                                pageNotifier.value = val;
                              },
                              children: List.generate(
                                3,
                                (index) {
                                  return const Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        width: 890,
                                        child: Text(
                                          'Explore millions of products and services.',
                                          style: TextStyle(
                                            fontSize: 48,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: CirclePageIndicator(
                              size: 10.0,
                              selectedSize: 14.0,
                              itemCount: 3,
                              dotColor: const Color(0xFFC4C4C4),
                              selectedDotColor: Colors.white,
                              currentPageNotifier: pageNotifier,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 80,
                          vertical: 52,
                        ),
                        width: 500,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'BuyWalk.in',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              'Create new account',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 21),
                            IntlPhoneField(
                              initialCountryCode: 'IN',
                              countries: const ['IN'],
                              showDropdownIcon: false,
                              keyboardType: TextInputType.phone,
                              dropdownTextStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              style: const TextStyle(fontSize: 18),
                              flagsButtonPadding:
                                  const EdgeInsets.only(left: 20),
                              decoration: const InputDecoration(
                                prefixIcon: Text('+91'),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: 0,
                                  minHeight: 0,
                                ),
                                hintText: 'Enter Mobile Number',
                                counterText: '',
                              ),
                            ),
                            const SizedBox(height: 36),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                  height: 1.4,
                                ),
                                children: [
                                  TextSpan(
                                    text:
                                        "By continuing, you're okay with our ",
                                  ),
                                  TextSpan(
                                    text: "Terms of Service",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text: " and ",
                                  ),
                                  TextSpan(
                                    text: "Privacy Policy",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 21),
                            SizedBox(
                              height: 60,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                                child: const Text('Continue'),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 64, right: 44),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            primary: const Color(0xFF1237D6),
                          ),
                          child: const Text('SKIP'),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          // mobile view
          if (useMobileLayout)
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 32,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(255, 255, 255, 0.7),
                              onPrimary: const Color(0xFF1237D6),
                              textStyle: const TextStyle(
                                letterSpacing: 1.25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            child: const Text('SKIP'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: PageView(
                      controller: controller,
                      onPageChanged: (int val) {
                        pageNotifier.value = val;
                      },
                      children: List.generate(
                        3,
                        (index) {
                          return const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Explore millions of products and services.',
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CirclePageIndicator(
                      size: 10.0,
                      selectedSize: 14.0,
                      itemCount: 3,
                      dotColor: const Color(0xFFC4C4C4),
                      selectedDotColor: Colors.white,
                      currentPageNotifier: pageNotifier,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.14),
                          blurRadius: 6.0,
                          offset: Offset(0, -6),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IntlPhoneField(
                          initialCountryCode: 'IN',
                          countries: const ['IN'],
                          showDropdownIcon: false,
                          keyboardType: TextInputType.phone,
                          dropdownTextStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          style: const TextStyle(fontSize: 18),
                          flagsButtonPadding: const EdgeInsets.only(left: 20),
                          decoration: const InputDecoration(
                            prefixIcon: Text('+91'),
                            prefixIconConstraints: BoxConstraints(
                              minWidth: 0,
                              minHeight: 0,
                            ),
                            hintText: 'Enter Mobile Number',
                            counterText: '',
                          ),
                        ),
                        const SizedBox(height: 15),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.6),
                              height: 1.4,
                            ),
                            children: [
                              TextSpan(
                                text: "By continuing, you're okay with our ",
                              ),
                              TextSpan(
                                text: "Terms of Service",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text: " and ",
                              ),
                              TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 21),
                        SizedBox(
                          height: 60,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                            child: const Text('Continue'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
