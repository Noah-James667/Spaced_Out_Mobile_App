import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_info/walkthrough_info_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';

// Focus widget keys for this walkthrough
final imageNdeol46e = GlobalKey();
final textOcd5ynqh = GlobalKey();
final buttonRcgsvgnn = GlobalKey();

/// shopPageWalkthrough
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: imageNdeol46e,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).shopText,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText: 'This is the shop page where you can buy cosmetics',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textOcd5ynqh,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).shopText,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText:
                  'You can purchase items using coins you get from winning battles',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: buttonRcgsvgnn,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).shopText,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText:
                  'Once you have enough coins, tap an item and choose \"Buy\"',
            ),
          ),
        ],
      ),
    ];
