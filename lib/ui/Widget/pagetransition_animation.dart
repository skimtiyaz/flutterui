import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class SharedAxisPageRoute extends PageRouteBuilder {
  SharedAxisPageRoute({Widget page, SharedAxisTransitionType transitionType})
      : super(
    transitionDuration: const Duration(milliseconds: 700),
    pageBuilder: (
        BuildContext context,
        Animation<double> primaryAnimation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> primaryAnimation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) {
      return SharedAxisTransition(
        animation: primaryAnimation,
        secondaryAnimation: secondaryAnimation,
        transitionType: transitionType,
        child: child,
      );
    },
  );
}

class FadethroughRoute extends PageRouteBuilder {
  FadethroughRoute({Widget page})
      : super(
          transitionDuration: const Duration(milliseconds: 700),
          pageBuilder: (
            BuildContext context,
            Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return FadeThroughTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
        );
}

class FadeScaleRoute extends PageRouteBuilder {
  FadeScaleRoute({Widget page})
      : super(
          transitionDuration: const Duration(milliseconds: 700),
          pageBuilder: (
            BuildContext context,
            Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return FadeScaleTransition(
              animation: primaryAnimation,
              child: child,
            );
          },
        );
}