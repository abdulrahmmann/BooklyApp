import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget{
  SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();

}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    createSlidingAnimation();
  }
  // create animation for text widget.
  void createSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<Offset>(begin: const Offset(0, 13), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
  // dispose from animation controller after worked.
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(animation: animation),
      ],
    );
  }
}

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.animation,
  });

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        return SlideTransition(
          position: animation,
          child: const Text(
            'Read Books For free',
            style: TextStyle(fontSize: 22),
            textAlign: TextAlign.center,
          ),
        );
      }
    );
  }
}
