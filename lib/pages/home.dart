import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = LiquidController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App de liquido"),
      ),
      body: Stack(
        children: [
          LiquidSwipe(
            liquidController: controller,
            enableSideReveal: true,
            onPageChangeCallback: (index) {
              setState(() {});
            },
            slideIconWidget: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            pages: [
              Container(
                color: Colors.black,
                child: Center(
                  child: Text(
                    'Pagina 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blue.shade800,
                child: Center(
                    child: Text(
                  'Pagina 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                )),
              ),
              Container(
                color: Colors.deepPurple.shade900,
                child: Center(
                    child: Text(
                  'Pagina 3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                )),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 16,
            right: 32,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    controller.jumpToPage(
                        page: 2); //dependiendo de la final menos 1
                  },
                  child: Text('ÚLTIMO'),
                ),
                AnimatedSmoothIndicator(
                  activeIndex: controller.currentPage,
                  count: 3,
                  effect: const WormEffect(
                    spacing: 16,
                    dotColor: Colors.white54,
                    activeDotColor: Colors.white,
                  ),
                  onDotClicked: (index) {
                    controller.animateToPage(page: index);
                  },
                ),
                TextButton(
                  onPressed: () {
                    final page = controller.currentPage + 1;

                    controller.animateToPage(
                      page: page > 4 ? 0 : page,
                      duration: 400,
                    );
                  },
                  child: Text('SIGUIENTE'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
