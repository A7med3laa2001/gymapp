import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymapp/constants/colors_gym.dart';
import 'package:gymapp/shared/src/height_slider_internal.dart';

class HeightSlider extends StatefulWidget {
  final int maxHeight;
  final int minHeight;
  final int height;
  final String unit;
  final String? personImagePath;
  final Color? primaryColor;
  final Color? accentColor;
  final Color? numberLineColor;
  final Color? currentHeightTextColor;
  final Color? sliderCircleColor;
  final ValueChanged<int> onChange;

  const HeightSlider(
      {Key? key,
      required this.height,
      required this.onChange,
      this.maxHeight = 190,
      this.minHeight = 145,
      this.unit = 'cm',
      this.primaryColor,
      this.accentColor,
      this.numberLineColor,
      this.currentHeightTextColor,
      this.sliderCircleColor,
      this.personImagePath})
      : super(key: key);

  int get totalUnits => maxHeight - minHeight;

  @override
  _HeightSliderState createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  late double startDragYOffset;
  late int startDragHeight;
  double widgetHeight = 50;
  double labelFontSize = 12.0;

  double get _pixelsPerUnit {
    return _drawingHeight / widget.totalUnits;
  }

  double get _sliderPosition {
    double halfOfBottomLabel = labelFontSize / 2;
    int unitsFromBottom = widget.height - widget.minHeight;
    return halfOfBottomLabel + unitsFromBottom * _pixelsPerUnit;
  }

  double get _drawingHeight {
    double totalHeight = widgetHeight;
    double marginBottom = 12.0;
    double marginTop = 12.0;
    return totalHeight - (marginBottom + marginTop + labelFontSize);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: LayoutBuilder(builder: (context, constraints) {
        widgetHeight = constraints.maxHeight;
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTapDown: _onTapDown,
          onVerticalDragStart: _onDragStart,
          onVerticalDragUpdate: _onDragUpdate,
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              _drawPersonImage(constraints.maxWidth),
              _drawSlider(),
              _drawLabels(),
            ],
          ),
        );
      }),
    );
  }

  _onTapDown(TapDownDetails tapDownDetails) {
    int height = _globalOffsetToHeight(tapDownDetails.globalPosition);
    widget.onChange(_normalizeHeight(height));
  }

  int _normalizeHeight(int height) {
    return math.max(widget.minHeight, math.min(widget.maxHeight, height));
  }

  int _globalOffsetToHeight(Offset globalOffset) {
    RenderBox getBox = context.findRenderObject() as RenderBox;
    Offset localPosition = getBox.globalToLocal(globalOffset);
    double dy = localPosition.dy;
    dy = dy - 12.0 - labelFontSize / 2;
    int height = widget.maxHeight - (dy ~/ _pixelsPerUnit);
    return height;
  }

  _onDragStart(DragStartDetails dragStartDetails) {
    int newHeight = _globalOffsetToHeight(dragStartDetails.globalPosition);
    widget.onChange(newHeight);
    setState(() {
      startDragYOffset = dragStartDetails.globalPosition.dy;
      startDragHeight = newHeight;
    });
  }

  _onDragUpdate(DragUpdateDetails dragUpdateDetails) {
    double currentYOffset = dragUpdateDetails.globalPosition.dy;
    double verticalDifference = startDragYOffset - currentYOffset;
    int diffHeight = verticalDifference ~/ _pixelsPerUnit;
    int height = _normalizeHeight(startDragHeight + diffHeight);
    setState(() => widget.onChange(height));
  }

  Widget _drawSlider() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: _sliderPosition,
      child: HeightSliderInternal(
          height: widget.height,
          unit: widget.unit,
          primaryColor: widget.primaryColor ?? Theme.of(context).primaryColor,
          accentColor: widget.accentColor ?? primaryColor,
          currentHeightTextColor: widget.currentHeightTextColor ?? primaryColor,
          sliderCircleColor:
              widget.sliderCircleColor ?? Theme.of(context).primaryColor),
    );
  }

  Widget _drawLabels() {
    int labelsToDisplay = widget.totalUnits ~/ 5 + 1;
    List<Widget> labels = List.generate(
      labelsToDisplay,
      (idx) {
        return Text(
          "${widget.maxHeight - 5 * idx}",
          style: TextStyle(
            color: widget.numberLineColor ?? primaryColor,
            fontSize: labelFontSize,
          ),
        );
      },
    );

    return Align(
      alignment: Alignment.centerRight,
      child: IgnorePointer(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 12.0,
            bottom: 12.0,
            top: 12.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: labels,
          ),
        ),
      ),
    );
  }

  Widget _drawPersonImage(double maxWidth) {
    double personImageHeight = _sliderPosition + 12.0;
    if (widget.personImagePath == null) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: maxWidth,
          height: personImageHeight,
          child: SvgPicture.asset(
            "images/person.svg",
            package: 'height_slider',
            fit: BoxFit.contain,
            height: personImageHeight,
            width: personImageHeight / 3,
          ),
        ),
      );
    }

    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: maxWidth,
        height: personImageHeight,
        child: SvgPicture.asset(
          widget.personImagePath!,
          fit: BoxFit.contain,
          height: personImageHeight,
          width: personImageHeight / 3,
        ),
      ),
    );
  }
}
