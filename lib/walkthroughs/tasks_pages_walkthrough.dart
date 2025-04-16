import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_info/walkthrough_info_widget.dart';

// Focus widget keys for this walkthrough
final listViewCpgut7am = GlobalKey();
final floatingActionButton0tw0dwqf = GlobalKey();
final tabWp4qfvf1 = GlobalKey();
final tabPs56u1ak = GlobalKey();
final iconButton95fb6a8l = GlobalKey();

/// tasksPagesWalkthrough
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: listViewCpgut7am,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText: 'This page shows you all of your created tasks',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: floatingActionButton0tw0dwqf,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText: 'Tap here to create a new task',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: tabWp4qfvf1,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText: 'This tab shows all of the tasks that occur only once',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: tabPs56u1ak,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText: 'This tab shows you all tasks that are set to repeat',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: iconButton95fb6a8l,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText: 'Tap here to see and make changes to your account ',
            ),
          ),
        ],
      ),
    ];
