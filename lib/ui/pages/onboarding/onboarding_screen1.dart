import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterui/ui/pages/onboarding/onboarding_Model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen1 extends StatefulWidget {
  final List<OnboardingModel> pages;
  final Color bgColor;
  final Color themeColor;
  final VoidCallback skipClicked;
  final VoidCallback getStartedClicked;

  OnboardingScreen1({
    Key key,
    @required this.pages,
    @required this.bgColor,
    @required this.themeColor,
    @required this.skipClicked,
    @required this.getStartedClicked,
  }) : super(key: key);

  @override
  _OnboardingScreen1State createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> buildOnboardingPages() {
    final children = <Widget>[];
    for (int i = 0; i < widget.pages.length; i++) {
      children.add(_showPageData(widget.pages[i]));
    }
    return children;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.bgColor,
      bottomSheet: _getStartBtnWidget(),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _skipBtnWidget(),
                  _pageViewWidget(),
                  _indicaterWidget(),
                  _rowFloatingActionButtonWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _skipBtnWidget() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: widget.skipClicked,
        child: Text(
          'Skip',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _pageViewWidget() {
    return Container(
      height: 500.0,
      color: Colors.transparent,
      child: PageView(
          physics: ClampingScrollPhysics(),
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          children: buildOnboardingPages()),
    );
  }

  Widget _indicaterWidget() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: AnimatedSmoothIndicator(
          activeIndex: _currentPage,
          count: widget.pages.length,
          effect: ExpandingDotsEffect(
            expansionFactor: 3,
            dotHeight: 5.0,
            dotWidth: 8.0,
            activeDotColor: Colors.black,
            dotColor: Colors.black.withOpacity(0.4),
          ),
        ),
      ),
    );
  }

  Widget _rowFloatingActionButtonWidget() {
    return Row(
      children: [
        _previousFloatingActionButtonWidget(),
        _nextFloatingActionButtonWidget(),
      ],
    );
  }

  Widget _nextFloatingActionButtonWidget() {
    return _currentPage != widget.pages.length - 1
        ? Expanded(
            child: Align(
              alignment: FractionalOffset.bottomRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                child: FloatingActionButton(
                  backgroundColor: widget.bgColor,
                  child: Icon(
                    Icons.arrow_forward,
                    color: widget.themeColor,
                  ),
                  onPressed: () {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                ),
              ),
            ),
          )
        : SizedBox();
  }

  Widget _previousFloatingActionButtonWidget() {
    return _currentPage != 0
        ? Expanded(
            child: Align(
              alignment: FractionalOffset.bottomLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                child: FloatingActionButton(
                  backgroundColor: widget.bgColor,
                  child: Icon(
                    Icons.arrow_back,
                    color: widget.themeColor,
                  ),
                  onPressed: () {
                    _pageController.previousPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                ),
              ),
            ),
          )
        : SizedBox();
  }

  Widget _getStartBtnWidget() {
    return _currentPage == widget.pages.length - 1
        ? GestureDetector(
            onTap: widget.getStartedClicked,
            child: new Container(
              height: 50.0,
              decoration: new BoxDecoration(
                  color: widget.themeColor,
                  borderRadius: new BorderRadius.all(Radius.circular(6.0))),
              child: new Center(
                child: new Text(
                  'Get Started',
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          )
        : SizedBox();
  }

  Widget _showPageData(OnboardingModel page) {
    return Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage(page.imagePath),
              height: 300.0,
              width: 300.0,
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            page.title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: page.titleColor,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            page.description,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: page.descripColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
