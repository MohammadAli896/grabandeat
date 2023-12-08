/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the Preference type in your schema. */
class Preference {
  final String? _primaryColor;
  final String? _secondaryColor;
  final String? _bgColor;
  final String? _headingColor;
  final String? _textColor;
  final String? _subtitleColor;

  String? get primaryColor {
    return _primaryColor;
  }
  
  String? get secondaryColor {
    return _secondaryColor;
  }
  
  String? get bgColor {
    return _bgColor;
  }
  
  String? get headingColor {
    return _headingColor;
  }
  
  String? get textColor {
    return _textColor;
  }
  
  String? get subtitleColor {
    return _subtitleColor;
  }
  
  const Preference._internal({primaryColor, secondaryColor, bgColor, headingColor, textColor, subtitleColor}): _primaryColor = primaryColor, _secondaryColor = secondaryColor, _bgColor = bgColor, _headingColor = headingColor, _textColor = textColor, _subtitleColor = subtitleColor;
  
  factory Preference({String? primaryColor, String? secondaryColor, String? bgColor, String? headingColor, String? textColor, String? subtitleColor}) {
    return Preference._internal(
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      bgColor: bgColor,
      headingColor: headingColor,
      textColor: textColor,
      subtitleColor: subtitleColor);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Preference &&
      _primaryColor == other._primaryColor &&
      _secondaryColor == other._secondaryColor &&
      _bgColor == other._bgColor &&
      _headingColor == other._headingColor &&
      _textColor == other._textColor &&
      _subtitleColor == other._subtitleColor;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Preference {");
    buffer.write("primaryColor=" + "$_primaryColor" + ", ");
    buffer.write("secondaryColor=" + "$_secondaryColor" + ", ");
    buffer.write("bgColor=" + "$_bgColor" + ", ");
    buffer.write("headingColor=" + "$_headingColor" + ", ");
    buffer.write("textColor=" + "$_textColor" + ", ");
    buffer.write("subtitleColor=" + "$_subtitleColor");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Preference copyWith({String? primaryColor, String? secondaryColor, String? bgColor, String? headingColor, String? textColor, String? subtitleColor}) {
    return Preference._internal(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      bgColor: bgColor ?? this.bgColor,
      headingColor: headingColor ?? this.headingColor,
      textColor: textColor ?? this.textColor,
      subtitleColor: subtitleColor ?? this.subtitleColor);
  }
  
  Preference copyWithModelFieldValues({
    ModelFieldValue<String?>? primaryColor,
    ModelFieldValue<String?>? secondaryColor,
    ModelFieldValue<String?>? bgColor,
    ModelFieldValue<String?>? headingColor,
    ModelFieldValue<String?>? textColor,
    ModelFieldValue<String?>? subtitleColor
  }) {
    return Preference._internal(
      primaryColor: primaryColor == null ? this.primaryColor : primaryColor.value,
      secondaryColor: secondaryColor == null ? this.secondaryColor : secondaryColor.value,
      bgColor: bgColor == null ? this.bgColor : bgColor.value,
      headingColor: headingColor == null ? this.headingColor : headingColor.value,
      textColor: textColor == null ? this.textColor : textColor.value,
      subtitleColor: subtitleColor == null ? this.subtitleColor : subtitleColor.value
    );
  }
  
  Preference.fromJson(Map<String, dynamic> json)  
    : _primaryColor = json['primaryColor'],
      _secondaryColor = json['secondaryColor'],
      _bgColor = json['bgColor'],
      _headingColor = json['headingColor'],
      _textColor = json['textColor'],
      _subtitleColor = json['subtitleColor'];
  
  Map<String, dynamic> toJson() => {
    'primaryColor': _primaryColor, 'secondaryColor': _secondaryColor, 'bgColor': _bgColor, 'headingColor': _headingColor, 'textColor': _textColor, 'subtitleColor': _subtitleColor
  };
  
  Map<String, Object?> toMap() => {
    'primaryColor': _primaryColor,
    'secondaryColor': _secondaryColor,
    'bgColor': _bgColor,
    'headingColor': _headingColor,
    'textColor': _textColor,
    'subtitleColor': _subtitleColor
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Preference";
    modelSchemaDefinition.pluralName = "Preferences";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'primaryColor',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'secondaryColor',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'bgColor',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'headingColor',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'textColor',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'subtitleColor',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}