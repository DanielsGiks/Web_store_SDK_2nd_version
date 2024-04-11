import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment = sizingInformation.deviceScreenType == DeviceScreenType.desktop ? TextAlign.left : TextAlign.center;
        double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile ? 64 : 128;
        double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile ? 16 : 21;
        var columnAlignment = sizingInformation.deviceScreenType == DeviceScreenType.desktop ? CrossAxisAlignment.start : CrossAxisAlignment.center;

        return Container(
            width: 600,
            child: Column(
                crossAxisAlignment: columnAlignment,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("FAKEBALTIC",
                    textAlign: textAlignment,
                    style: TextStyle(
                      fontFamily: 'Anton',
                      fontWeight: FontWeight.w900, height: 1.2,
                      fontSize: titleSize,
                    ),),
                  Text(
                    "Here you can buy the cheapest fake tickets for your flights."
                        " Flights around the world and even space.\n"
                        "Elon where you at?",
                    textAlign: textAlignment,
                    style: TextStyle(
                      fontSize: descriptionSize,
                      height: 1.7,
                    ),)
                ]
            )
        );
      }
    );
  }
}
