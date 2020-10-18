/*
 * Copyright (c) patrouil (2020).This work is licensed under the
 * Creative Commons Attribution-ShareAlike 4.0 International License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 *
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boond-usersrights.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersRights _$UsersRightsFromJson(Map<String, dynamic> json) {
  return UsersRights(
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
        : ActionsRights.fromJson(json['opportunities'] as Map<String, dynamic>),
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
}

Map<String, dynamic> _$UsersRightsToJson(UsersRights instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('main', instance.main?.toJson());
  writeNotNull('resources', instance.resources?.toJson());
  writeNotNull('candidates', instance.candidates?.toJson());
  writeNotNull('flags', instance.flags?.toJson());
  writeNotNull('opportunities', instance.opportunities?.toJson());
  writeNotNull('crm', instance.crm?.toJson());
  writeNotNull('products', instance.products?.toJson());
  writeNotNull('projects', instance.projects?.toJson());
  writeNotNull('billing', instance.billing?.toJson());
  writeNotNull('reporting', instance.reporting?.toJson());
  writeNotNull('actions', instance.actions?.toJson());
  writeNotNull('activityExpenses', instance.activityExpenses?.toJson());
  writeNotNull('purchases', instance.purchases?.toJson());
  return val;
}

ActionsRights _$ActionsRightsFromJson(Map<String, dynamic> json) {
  return ActionsRights(
    showGroupe: json['showGroupe'] as bool,
    showAllManagers: json['showAllManagers'] as String,
    showBuPoles: json['showBuPoles'] as bool,
    showAllPoles: json['showAllPoles'] as String,
    showAllAgencies: json['showAllAgencies'] as String,
    administrator: json['administrator'] as bool,
    writeAll: json['writeAll'] as String,
    extraction: json['extraction'] as bool,
    assignment: json['assignment'] as bool,
    deletion: json['deletion'] as bool,
    exportation: json['exportation'] as bool,
    editReference: json['editReference'] as bool,
    showAll: json['showAll'] as String,
    editDate: json['editDate'] as bool,
    readDocuments: json['readDocuments'] as bool,
    creation: json['creation'] as bool,
    editCreationDate: json['editCreationDate'] as bool,
    actions: json['actions'] as bool,
    maskData: json['maskData'] as bool,
    administrative: json['administrative'],
    reporting: json['reporting'] as bool,
    distributionCustomers: json['distributionCustomers'] as bool,
    projects: json['projects'] as bool,
    resources: json['resources'] as bool,
    productionPlans: json['productionPlans'] as bool,
  );
}

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
