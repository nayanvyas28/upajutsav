import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'meal_card_model.dart';
export 'meal_card_model.dart';

class MealCardWidget extends StatefulWidget {
  const MealCardWidget({
    super.key,
    this.mealRef,
  });

  final MealsRecord? mealRef;

  @override
  State<MealCardWidget> createState() => _MealCardWidgetState();
}

class _MealCardWidgetState extends State<MealCardWidget> {
  late MealCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MealCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        logFirebaseEvent('MEAL_CARD_COMP_Column_7nse8gf3_ON_TAP');
        logFirebaseEvent('Column_haptic_feedback');
        HapticFeedback.lightImpact();
        logFirebaseEvent('Column_navigate_to');

        context.pushNamed('MealDetails');
      },
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('MEAL_CARD_COMP_Container_xsjr6r56_ON_TAP');
              logFirebaseEvent('Container_haptic_feedback');
              HapticFeedback.lightImpact();
              logFirebaseEvent('Container_navigate_to');

              context.pushNamed('MealDetails');
            },
            onDoubleTap: () async {
              logFirebaseEvent('MEAL_CARD_Container_xsjr6r56_ON_DOUBLE_T');
              if (widget.mealRef!.mealFavorites
                  .contains(currentUserReference)) {
                logFirebaseEvent('Container_haptic_feedback');
                HapticFeedback.lightImpact();
                logFirebaseEvent('Container_backend_call');

                await widget.mealRef!.reference.update({
                  ...mapToFirestore(
                    {
                      'meal_favorites':
                          FieldValue.arrayRemove([currentUserReference]),
                    },
                  ),
                });
              } else {
                logFirebaseEvent('Container_haptic_feedback');
                HapticFeedback.selectionClick();
                logFirebaseEvent('Container_wait__delay');
                await Future.delayed(const Duration(milliseconds: 100));
                logFirebaseEvent('Container_haptic_feedback');
                HapticFeedback.lightImpact();
                logFirebaseEvent('Container_backend_call');

                await widget.mealRef!.reference.update({
                  ...mapToFirestore(
                    {
                      'meal_favorites':
                          FieldValue.arrayUnion([currentUserReference]),
                    },
                  ),
                });
              }
            },
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.48,
              height: 150.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.network(
                    valueOrDefault<String>(
                      widget.mealRef?.mealImage,
                      'https://cdn-uploads.mealime.com/uploads/recipe/thumbnail/225/presentation_62aa6b6f-6a95-4798-9091-09f487ad2dc4.jpg',
                    ),
                  ).image,
                ),
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 1.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Text(
              widget.mealRef!.mealName.maybeHandleOverflow(
                maxChars: 36,
                replacement: '…',
              ),
              maxLines: 2,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          if (widget.mealRef!.mealDiet.isNotEmpty)
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).accent1,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 6.0, 8.0, 6.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            valueOrDefault(currentUserDocument?.diet, ''),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  lineHeight: 1.0,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}