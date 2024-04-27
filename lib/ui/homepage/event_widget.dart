import 'package:flutter/material.dart';
import 'package:local_events_app/styleguide.dart';

import 'package:local_events_app/model/event.dart';

class EventWidget extends StatelessWidget {
  final Event event;

  const EventWidget({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 20),
      elevation: 4,
      color:Colors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
              child: Image.asset(
                event.imagePath,
                height: 150,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0, left:8.0),
              child: Row(
                children:<Widget>[
                  Expanded(
                    flex:3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          event.title,
                          style:eventTitleTextStyle,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FittedBox(
                          child:Row(
                            children: <Widget>[
                              Icon(Icons.location_on),
                              const SizedBox(
                                width:5,
                              ),
                              Text(
                                event.location,
                                style:eventLocationTextStyle
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      event.duration.toUpperCase(),
                      textAlign: TextAlign.right,
                      style:eventLocationTextStyle.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
