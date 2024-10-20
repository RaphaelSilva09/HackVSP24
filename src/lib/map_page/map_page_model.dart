import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'map_page_widget.dart' show MapPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MapPageModel extends FlutterFlowModel<MapPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'localizacaoID': debugSerializeParam(
            widget?.localizacaoID,
            ParamType.DocumentReference,
            link:
                'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=uiBuilder&page=mapPage',
            searchReference:
                'reference=SikKFwoNbG9jYWxpemFjYW9JRBIGMDNjNWFrcg4IBioKCggKBm1hcmtlclABWg1sb2NhbGl6YWNhb0lE',
            name: 'marker',
            nullable: true,
          ),
          'id': debugSerializeParam(
            widget?.id,
            ParamType.LatLng,
            isList: true,
            link:
                'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=uiBuilder&page=mapPage',
            searchReference:
                'reference=ShQKDAoCaWQSBmU5NmxoOHIEEgIIDlABWgJpZA==',
            name: 'LatLng',
            nullable: true,
          ),
          'local': debugSerializeParam(
            widget?.local,
            ParamType.DocumentReference,
            link:
                'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=uiBuilder&page=mapPage',
            searchReference:
                'reference=SiEKDwoFbG9jYWwSBm9mN3liZHIOCAYqCgoICgZtYXJrZXJQAVoFbG9jYWw=',
            name: 'marker',
            nullable: true,
          ),
          'loca': debugSerializeParam(
            widget?.loca,
            ParamType.DocumentReference,
            link:
                'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=uiBuilder&page=mapPage',
            searchReference:
                'reference=SiAKDgoEbG9jYRIGNHY3MDI4cg4IBioKCggKBm1hcmtlclABWgRsb2Nh',
            name: 'marker',
            nullable: true,
          ),
          'marker': debugSerializeParam(
            widget?.marker,
            ParamType.DocumentReference,
            link:
                'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=uiBuilder&page=mapPage',
            searchReference:
                'reference=SiIKEAoGbWFya2VyEgYxcjQxaTZyDggGKgoKCAoGbWFya2VyUAFaBm1hcmtlcg==',
            name: 'marker',
            nullable: true,
          ),
          'localizaion': debugSerializeParam(
            widget?.localizaion,
            ParamType.DocumentReference,
            link:
                'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7?tab=uiBuilder&page=mapPage',
            searchReference:
                'reference=SicKFQoLbG9jYWxpemFpb24SBjZraHF4bHIOCAYqCgoICgZtYXJrZXJQAVoLbG9jYWxpemFpb24=',
            name: 'marker',
            nullable: true,
          )
        }.withoutNulls,
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/verdadeira-s-p2-yfetd7/tab=uiBuilder&page=mapPage',
        searchReference: 'reference=OgdtYXBQYWdlUAFaB21hcFBhZ2U=',
        widgetClassName: 'mapPage',
      );
}
