// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boond_usersrights.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersRights _$UsersRightsFromJson(Map<String, dynamic> json) => UsersRights(
      main: json['main'] == null
          ? null
          : ActionsRights.fromJson(json['main'] as Map<String, dynamic>),
      resources: json['resources'] == null
          ? null
          : ActionsRights.fromJson(json['resources'] as Map<String, dynamic>),
      candidates: json['candidates'] == null
          ? null
          : ActionsRights.fromJson(json['candidates'] as Map<String, dynamic>),
      flags: json['flags'] == null
          ? null
          : ActionsRights.fromJson(json['flags'] as Map<String, dynamic>),
      opportunities: json['opportunities'] == null
          ? null
          : ActionsRights.fromJson(
              json['opportunities'] as Map<String, dynamic>),
      crm: json['crm'] == null
          ? null
          : ActionsRights.fromJson(json['crm'] as Map<String, dynamic>),
      products: json['products'] == null
          ? null
          : ActionsRights.fromJson(json['products'] as Map<String, dynamic>),
      projects: json['projects'] == null
          ? null
          : ActionsRights.fromJson(json['projects'] as Map<String, dynamic>),
      billing: json['billing'] == null
          ? null
          : ActionsRights.fromJson(json['billing'] as Map<String, dynamic>),
      reporting: json['reporting'] == null
          ? null
          : ActionsRights.fromJson(json['reporting'] as Map<String, dynamic>),
      actions: json['actions'] == null
          ? null
          : ActionsRights.fromJson(json['actions'] as Map<String, dynamic>),
      activityExpenses: json['activityExpenses'] == null
          ? null
          : ActionsRights.fromJson(
              json['activityExpenses'] as Map<String, dynamic>),
      purchases: json['purchases'] == null
          ? null
          : ActionsRights.fromJson(json['purchases'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersRightsToJson(UsersRights instance) =>
    <String, dynamic>{
      'main': instance.main,
      'resources': instance.resources,
      'candidates': instance.candidates,
      'flags': instance.flags,
      'opportunities': instance.opportunities,
      'crm': instance.crm,
      'products': instance.products,
      'projects': instance.projects,
      'billing': instance.billing,
      'reporting': instance.reporting,
      'actions': instance.actions,
      'activityExpenses': instance.activityExpenses,
      'purchases': instance.purchases,
    };

ActionsRights _$ActionsRightsFromJson(Map<String, dynamic> json) =>
    ActionsRights(
      showGroupe: json['showGroupe'] as bool?,
      showAllManagers: json['showAllManagers'] as String?,
      showBuPoles: json['showBuPoles'] as bool?,
      showAllPoles: json['showAllPoles'] as String?,
      showAllAgencies: json['showAllAgencies'] as String?,
      administrator: json['administrator'] as bool?,
      writeAll: json['writeAll'] as String?,
      extraction: json['extraction'] as bool?,
      assignment: json['assignment'] as bool?,
      deletion: json['deletion'] as bool?,
      exportation: json['exportation'] as bool?,
      editReference: json['editReference'] as bool?,
      showAll: json['showAll'] as String?,
      editDate: json['editDate'] as bool?,
      readDocuments: json['readDocuments'] as bool?,
      creation: json['creation'] as bool?,
      editCreationDate: json['editCreationDate'] as bool?,
      actions: json['actions'] as bool?,
      maskData: json['maskData'] as bool?,
      administrative: json['administrative'],
      reporting: json['reporting'] as bool?,
      distributionCustomers: json['distributionCustomers'] as bool?,
      projects: json['projects'] as bool?,
      resources: json['resources'] as bool?,
      productionPlans: json['productionPlans'] as bool?,
    );

Map<String, dynamic> _$ActionsRightsToJson(ActionsRights instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('showGroupe', instance.showGroupe);
  writeNotNull('showAllManagers', instance.showAllManagers);
  writeNotNull('showBuPoles', instance.showBuPoles);
  writeNotNull('showAllPoles', instance.showAllPoles);
  writeNotNull('showAllAgencies', instance.showAllAgencies);
  writeNotNull('administrator', instance.administrator);
  writeNotNull('writeAll', instance.writeAll);
  writeNotNull('extraction', instance.extraction);
  writeNotNull('assignment', instance.assignment);
  writeNotNull('deletion', instance.deletion);
  writeNotNull('exportation', instance.exportation);
  writeNotNull('editReference', instance.editReference);
  writeNotNull('showAll', instance.showAll);
  writeNotNull('editDate', instance.editDate);
  writeNotNull('readDocuments', instance.readDocuments);
  writeNotNull('creation', instance.creation);
  writeNotNull('editCreationDate', instance.editCreationDate);
  writeNotNull('actions', instance.actions);
  writeNotNull('maskData', instance.maskData);
  writeNotNull('administrative', instance.administrative);
  writeNotNull('reporting', instance.reporting);
  writeNotNull('distributionCustomers', instance.distributionCustomers);
  writeNotNull('projects', instance.projects);
  writeNotNull('resources', instance.resources);
  writeNotNull('productionPlans', instance.productionPlans);
  return val;
}
