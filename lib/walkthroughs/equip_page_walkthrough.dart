import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_info/walkthrough_info_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';

// Focus widget keys for this walkthrough
final containerRf4a0g9d = GlobalKey();
final buttonHye08c0v = GlobalKey();

/// equipPageWalkthrough
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: containerRf4a0g9d,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).equipText,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText:
                  'This page is where you can equip items you\'ve purchased from the shop',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: buttonHye08c0v,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).equipText,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughInfoWidget(
              infoText:
                  'Once you have purchased an item, tap on it and choose \"Equip\"',
            ),
          ),
        ],
      ),
    ];
