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
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Restaurant type in your schema. */
class Restaurant extends amplify_core.Model {
  static const classType = const _RestaurantModelType();
  final String id;
  final String? _name;
  final String? _address;
  final String? _shortDescription;
  final String? _mainImage;
  final List<Item>? _menu;
  final Preference? _preferences;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  RestaurantModelIdentifier get modelIdentifier {
      return RestaurantModelIdentifier(
        id: id
      );
  }
  
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
  
  String get address {
    try {
      return _address!;
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
  
  String get mainImage {
    try {
      return _mainImage!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<Item> get menu {
    try {
      return _menu!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Preference? get preferences {
    return _preferences;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Restaurant._internal({required this.id, required name, required address, required shortDescription, required mainImage, required menu, preferences, createdAt, updatedAt}): _name = name, _address = address, _shortDescription = shortDescription, _mainImage = mainImage, _menu = menu, _preferences = preferences, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Restaurant({String? id, required String name, required String address, required String shortDescription, required String mainImage, required List<Item> menu, Preference? preferences}) {
    return Restaurant._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      address: address,
      shortDescription: shortDescription,
      mainImage: mainImage,
      menu: menu != null ? List<Item>.unmodifiable(menu) : menu,
      preferences: preferences);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Restaurant &&
      id == other.id &&
      _name == other._name &&
      _address == other._address &&
      _shortDescription == other._shortDescription &&
      _mainImage == other._mainImage &&
      DeepCollectionEquality().equals(_menu, other._menu) &&
      _preferences == other._preferences;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Restaurant {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("address=" + "$_address" + ", ");
    buffer.write("shortDescription=" + "$_shortDescription" + ", ");
    buffer.write("mainImage=" + "$_mainImage" + ", ");
    buffer.write("menu=" + (_menu != null ? _menu!.toString() : "null") + ", ");
    buffer.write("preferences=" + (_preferences != null ? _preferences!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Restaurant copyWith({String? name, String? address, String? shortDescription, String? mainImage, List<Item>? menu, Preference? preferences}) {
    return Restaurant._internal(
      id: id,
      name: name ?? this.name,
      address: address ?? this.address,
      shortDescription: shortDescription ?? this.shortDescription,
      mainImage: mainImage ?? this.mainImage,
      menu: menu ?? this.menu,
      preferences: preferences ?? this.preferences);
  }
  
  Restaurant copyWithModelFieldValues({
    ModelFieldValue<String>? name,
    ModelFieldValue<String>? address,
    ModelFieldValue<String>? shortDescription,
    ModelFieldValue<String>? mainImage,
    ModelFieldValue<List<Item>?>? menu,
    ModelFieldValue<Preference?>? preferences
  }) {
    return Restaurant._internal(
      id: id,
      name: name == null ? this.name : name.value,
      address: address == null ? this.address : address.value,
      shortDescription: shortDescription == null ? this.shortDescription : shortDescription.value,
      mainImage: mainImage == null ? this.mainImage : mainImage.value,
      menu: menu == null ? this.menu : menu.value,
      preferences: preferences == null ? this.preferences : preferences.value
    );
  }
  
  Restaurant.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _address = json['address'],
      _shortDescription = json['shortDescription'],
      _mainImage = json['mainImage'],
      _menu = json['menu'] is List
        ? (json['menu'] as List)
          .where((e) => e != null)
          .map((e) => Item.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _preferences = json['preferences']?['serializedData'] != null
        ? Preference.fromJson(new Map<String, dynamic>.from(json['preferences']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'address': _address, 'shortDescription': _shortDescription, 'mainImage': _mainImage, 'menu': _menu?.map((Item? e) => e?.toJson()).toList(), 'preferences': _preferences?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'address': _address,
    'shortDescription': _shortDescription,
    'mainImage': _mainImage,
    'menu': _menu,
    'preferences': _preferences,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<RestaurantModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<RestaurantModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final ADDRESS = amplify_core.QueryField(fieldName: "address");
  static final SHORTDESCRIPTION = amplify_core.QueryField(fieldName: "shortDescription");
  static final MAINIMAGE = amplify_core.QueryField(fieldName: "mainImage");
  static final MENU = amplify_core.QueryField(fieldName: "menu");
  static final PREFERENCES = amplify_core.QueryField(fieldName: "preferences");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Restaurant";
    modelSchemaDefinition.pluralName = "Restaurants";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Restaurant.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Restaurant.ADDRESS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Restaurant.SHORTDESCRIPTION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Restaurant.MAINIMAGE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'menu',
      isRequired: true,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'Item')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'preferences',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Preference')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _RestaurantModelType extends amplify_core.ModelType<Restaurant> {
  const _RestaurantModelType();
  
  @override
  Restaurant fromJson(Map<String, dynamic> jsonData) {
    return Restaurant.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Restaurant';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Restaurant] in your schema.
 */
class RestaurantModelIdentifier implements amplify_core.ModelIdentifier<Restaurant> {
  final String id;

  /** Create an instance of RestaurantModelIdentifier using [id] the primary key. */
  const RestaurantModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'RestaurantModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is RestaurantModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}