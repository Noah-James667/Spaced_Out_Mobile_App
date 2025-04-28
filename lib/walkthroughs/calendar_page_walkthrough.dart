import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_info/walkthrough_info_widget.dart';

// Focus widget keys for this walkthrough
final tabFwhpiru7 = GlobalKey();
final tabKwyt5rmh = GlobalKey();
final tabRlu5sk6g = GlobalKey();

/// calendarPageWalkthrough
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: tabFwhpiru7,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText:
                  'Tap here to view all tasks you have coming up for a given day',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: tabKwyt5rmh,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText: 'Tap here to view tasks that are past due',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: tabRlu5sk6g,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText:
                  'Tap here to view tasks that you have previously completed',
            ),
          ),
        ],
      ),
    ];
