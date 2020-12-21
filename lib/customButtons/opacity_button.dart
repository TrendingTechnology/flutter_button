import 'package:flutter/material.dart';

class OpacityButton extends StatefulWidget {
  @required
  final Widget child;
  final double opacityValue;
  final VoidCallback onTap;
  // final Function onDoubleTap;
  // final Function onDoubleTapCancel;
  // final Function(TapDownDetails) onDoubleTapDown;
  // final Function onPanCancel;
  // final Function(ForcePressDetails) onForcePressEnd;
  // final Function(ForcePressDetails) onForcePressPeak;
  // final Function(ForcePressDetails) onForcePressStart;
  // final Function(ForcePressDetails) onForcePressUpdate;
  // final Function onHorizontalDragCancel;
  // final Function(DragDownDetails) onHorizontalDragDown;
  // final Function(DragEndDetails) onHorizontalDragEnd;
  // final Function(DragStartDetails) onHorizontalDragStart;
  // final Function(DragUpdateDetails) onHorizontalDragUpdate;
  // final Function onLongPress;
  // final Function(LongPressEndDetails) onLongPressEnd;
  // final Function(LongPressMoveUpdateDetails) onLongPressMoveUpdate;
  // final Function(LongPressStartDetails) onLongPressStart;
  // final Function onLongPressUp;
  // final Function(DragDownDetails) onPanDown;
  // final Function(DragEndDetails) onPanEnd;
  // final Function(DragStartDetails) onPanStart;
  // final Function(DragUpdateDetails) onPanUpdate;
  // final Function(ScaleEndDetails) onScaleEnd;
  // final Function(ScaleStartDetails) onScaleStart;
  // final Function(ScaleUpdateDetails) onScaleUpdate;
  // final Function onSecondaryLongPress;
  // final Function(LongPressEndDetails) onSecondaryLongPressEnd;
  // final Function(LongPressMoveUpdateDetails) onSecondaryLongPressMoveUpdate;
  // final Function(LongPressStartDetails) onSecondaryLongPressStart;
  // final Function onSecondaryLongPressUp;
  // final Function onSecondaryTap;
  // final Function onSecondaryTapCancel;
  // final Function(TapDownDetails) onSecondaryTapDown;
  // final Function(TapUpDetails) onSecondaryTapUp;
  // final Function onTapCancel;
  // final Function onTapDown;

  const OpacityButton({
    Key key,
    this.child,
    this.onTap,
    this.opacityValue,
    //this.onDoubleTap,
    // this.onDoubleTapCancel,
    // this.onDoubleTapDown,
    // this.onPanCancel,
    // this.onForcePressEnd,
    // this.onForcePressPeak,
    // this.onForcePressStart,
    // this.onForcePressUpdate,
    // this.onHorizontalDragCancel,
    // this.onHorizontalDragDown,
    // this.onHorizontalDragEnd,
    // this.onHorizontalDragStart,
    // this.onHorizontalDragUpdate,
    // this.onLongPress,
    // this.onLongPressEnd,
    // this.onLongPressMoveUpdate,
    // this.onLongPressStart,
    // this.onLongPressUp,
    // this.onPanDown,
    // this.onPanEnd,
    // this.onPanStart,
    // this.onPanUpdate,
    // this.onScaleEnd,
    // this.onScaleStart,
    // this.onScaleUpdate,
    // this.onSecondaryLongPress,
    // this.onSecondaryLongPressEnd,
    // this.onSecondaryLongPressMoveUpdate,
    // this.onSecondaryLongPressStart,
    // this.onSecondaryLongPressUp,
    // this.onSecondaryTap,
    // this.onSecondaryTapCancel,
    // this.onSecondaryTapDown,
    // this.onSecondaryTapUp,
    // this.onTapCancel,
  }) : super(key: key);

  @override
  _OpacityButtonState createState() => _OpacityButtonState();
}

class _OpacityButtonState extends State<OpacityButton> {
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          _isTapped = true;
        });
      },
      onTapCancel: () {
        setState(() {
          _isTapped = false;
        });
      },
      onTapUp: (details) {
        setState(() {
          _isTapped = false;
        });
        widget.onTap();
      },
      child: Opacity(
        opacity: _isTapped ? (widget.opacityValue != null) ? widget.opacityValue : .7 : 1,
        child: widget.child,
      ),
      // onTap: onTap,
      // onDoubleTap: onDoubleTap,
      // onDoubleTapCancel: onDoubleTapCancel,
      // onDoubleTapDown: onDoubleTapDown,
      // onPanCancel: onPanCancel,
      // onForcePressEnd: onForcePressEnd,
      // onForcePressPeak: onForcePressPeak,
      // onForcePressStart: onForcePressStart,
      // onForcePressUpdate: onForcePressUpdate,
      // onHorizontalDragCancel: onHorizontalDragCancel,
      // onHorizontalDragDown: onHorizontalDragDown,
      // onHorizontalDragEnd: onHorizontalDragEnd,
      // onHorizontalDragStart: onHorizontalDragStart,
      // onHorizontalDragUpdate: onHorizontalDragUpdate,
      // onLongPress: onLongPress,
      // onLongPressEnd: onLongPressEnd,
      // onLongPressMoveUpdate: onLongPressMoveUpdate,
      // onLongPressStart: onLongPressStart,
      // onLongPressUp: onLongPressUp,
      // onPanDown: onPanDown,
      // onPanEnd: onPanEnd,
      // onPanStart: onPanStart,
      // onPanUpdate: onPanUpdate,
      // onScaleEnd: onScaleEnd,
      // onScaleStart: onScaleStart,
      // onScaleUpdate: onScaleUpdate,
      // onSecondaryLongPress: onSecondaryLongPress,
      // onSecondaryLongPressEnd: onSecondaryLongPressEnd,
      // onSecondaryLongPressMoveUpdate: onSecondaryLongPressMoveUpdate,
      // onSecondaryLongPressStart: onSecondaryLongPressStart,
      // onSecondaryLongPressUp: onSecondaryLongPressUp,
      // onSecondaryTap: onSecondaryTap,
      // onSecondaryTapCancel: onSecondaryTapCancel,
      // onSecondaryTapDown: onSecondaryTapDown,
      // onSecondaryTapUp: onSecondaryTapUp,
      // onTapCancel: onTapCancel,
      // onTapDown: onTapDown,
    );
  }
}
