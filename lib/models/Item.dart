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


/** This is an auto generated class representing the Item type in your schema. */
class Item {
  final String? _name;
  final String? _price;
  final String? _imagePath;
  final String? _shortDescription;
  final bool? _isRecommended;

  String get name {
    try {
      return _name!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get price {
    try {
      return _price!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get imagePath {
    try {
      return _imagePath!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get shortDescription {
    try {
      return _shortDescription!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  bool get isRecommended {
    try {
      return _isRecommended!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const Item._internal({required name, required price, required imagePath, required shortDescription, required isRecommended}): _name = name, _price = price, _imagePath = imagePath, _shortDescription = shortDescription, _isRecommended = isRecommended;
  
  factory Item({required String name, required String price, required String imagePath, required String shortDescription, required bool isRecommended}) {
    return Item._internal(
      name: name,
      price: price,
      imagePath: imagePath,
      shortDescription: shortDescription,
      isRecommended: isRecommended);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Item &&
      _name == other._name &&
      _price == other._price &&
      _imagePath == other._imagePath &&
      _shortDescription == other._shortDescription &&
      _isRecommended == other._isRecommended;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Item {");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("price=" + "$_price" + ", ");
    buffer.write("imagePath=" + "$_imagePath" + ", ");
    buffer.write("shortDescription=" + "$_shortDescription" + ", ");
    buffer.write("isRecommended=" + (_isRecommended != null ? _isRecommended!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Item copyWith({String? name, String? price, String? imagePath, String? shortDescription, bool? isRecommended}) {
    return Item._internal(
      name: name ?? this.name,
      price: price ?? this.price,
      imagePath: imagePath ?? this.imagePath,
      shortDescription: shortDescription ?? this.shortDescription,
      isRecommended: isRecommended ?? this.isRecommended);
  }
  
  Item copyWithModelFieldValues({
    ModelFieldValue<String>? name,
    ModelFieldValue<String>? price,
    ModelFieldValue<String>? imagePath,
    ModelFieldValue<String>? shortDescription,
    ModelFieldValue<bool>? isRecommended
  }) {
    return Item._internal(
      name: name == null ? this.name : name.value,
      price: price == null ? this.price : price.value,
      imagePath: imagePath == null ? this.imagePath : imagePath.value,
      shortDescription: shortDescription == null ? this.shortDescription : shortDescription.value,
      isRecommended: isRecommended == null ? this.isRecommended : isRecommended.value
    );
  }
  
  Item.fromJson(Map<String, dynamic> json)  
    : _name = json['name'],
      _price = json['price'],
      _imagePath = json['imagePath'],
      _shortDescription = json['shortDescription'],
      _isRecommended = json['isRecommended'];
  
  Map<String, dynamic> toJson() => {
    'name': _name, 'price': _price, 'imagePath': _imagePath, 'shortDescription': _shortDescription, 'isRecommended': _isRecommended
  };
  
  Map<String, Object?> toMap() => {
    'name': _name,
    'price': _price,
    'imagePath': _imagePath,
    'shortDescription': _shortDescription,
    'isRecommended': _isRecommended
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Item";
    modelSchemaDefinition.pluralName = "Items";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'name',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'price',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'imagePath',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'shortDescription',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'isRecommended',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
  });
}