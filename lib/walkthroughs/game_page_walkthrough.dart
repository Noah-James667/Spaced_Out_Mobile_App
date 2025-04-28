import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_info/walkthrough_info_widget.dart';

// Focus widget keys for this walkthrough
final containerKf3uj1hr = GlobalKey();
final textRkfazhqq = GlobalKey();
final iconButtonJ2uguik5 = GlobalKey();
final column2u7j6lud = GlobalKey();
final iconButtonG68umm1p = GlobalKey();

/// gamePageWalkthrough
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: containerKf3uj1hr,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText:
                  'This page is where you can battle enemies, upgrade your character, and earn gold to purchase cosmetics',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textRkfazhqq,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText:
                  'The XP you gain from completing tasks allows you to get upgrades',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: iconButtonJ2uguik5,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText:
                  'Tap here to start a battle. If you can get the enemies health to 0 first, you win!',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: column2u7j6lud,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText:
                  'These are you stats: health, damage, and armor. Health is how much damage you can take, damage is how hard you hit, and armor reduces incoming damage.',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: iconButtonG68umm1p,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText: 'Try upgrading your health now!',
            ),
          ),
        ],
      ),
    ];
