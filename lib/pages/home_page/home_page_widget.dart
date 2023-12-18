import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
              child: Text(
                'Rover',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
            ),
            actions: const [],
            centerTitle: true,
            elevation: 10.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 45.0, 20.0, 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SwitchListTile.adaptive(
                  value: _model.switchListTileValue ??= false,
                  onChanged: (newValue) async {
                    setState(() => _model.switchListTileValue = newValue);
                  },
                  title: Text(
                    'On / Off',
                    style: FlutterFlowTheme.of(context).titleLarge,
                  ),
                  subtitle: Text(
                    'Rover ligado ou desligado',
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                  tileColor: const Color(0x00FFFFFF),
                  activeColor: FlutterFlowTheme.of(context).secondary,
                  activeTrackColor: FlutterFlowTheme.of(context).accent1,
                  dense: true,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                    child: GridView(
                      padding: EdgeInsets.zero,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 1.0,
                      ),
                      scrollDirection: Axis.vertical,
                      children: [
                        Opacity(
                          opacity: 0.0,
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ),
                        Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                        Opacity(
                          opacity: 0.0,
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ),
                        Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).primary,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).accent1,
                            icon: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 85.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                        Opacity(
                          opacity: 0.0,
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ),
                        Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).primary,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).accent1,
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 85.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                        Opacity(
                          opacity: 0.0,
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ),
                        Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).primary,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).accent1,
                            icon: Icon(
                              Icons.arrow_downward_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 85.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                        Opacity(
                          opacity: 0.0,
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
