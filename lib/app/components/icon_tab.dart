import 'package:flutter/material.dart';

const _kTextAndIconTabHeight = 53.0;
const double _KMarginBottom = 3.0;

class IconTab extends StatefulWidget {
  const IconTab({
    Key key,
    this.text,
    this.icon,
    this.color
  }) : assert(text != null || icon != null || color != null), super(key: key);

  final String text;
  final Icon icon;
  final Color color;

  @override
  _IconTabState createState() => _IconTabState();
}

class _IconTabState extends State<IconTab> {

  Widget _buildLabelText() {
    return Text(
      widget.text,
      softWrap: false,
      overflow: TextOverflow.fade,
      style: TextStyle(color: widget.color),
    );
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    double height = _kTextAndIconTabHeight;

    Widget label = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: widget.icon,
          margin: const EdgeInsets.only(bottom: _KMarginBottom),
        ),
        _buildLabelText()
      ],
    );

    return SizedBox(
      height: height,
      child: Center(
        child: label,
        widthFactor: 1.0,
      ),
    );
  }
}