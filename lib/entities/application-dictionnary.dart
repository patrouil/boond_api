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

// To parse this JSON data, do
//
//     final dictionnaryGet = dictionnaryGetFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';

import 'boond-meta.dart';
import 'application-country.dart';
import 'application-currency.dart';

part 'application-dictionnary.g.dart';

@JsonSerializable()
class AppDictionnaryGet {
  BoondMeta meta;
  AppDictionnaryGetData data;

  AppDictionnaryGet({
    this.meta,
    this.data,
  });

  factory AppDictionnaryGet.fromJson(Map<String, dynamic> json) =>
      _$AppDictionnaryGetFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictionnaryGetToJson(this);
}

@JsonSerializable()
class AppDictionnaryGetData {
  AppDictSetting setting;
  List<AppDictCountry> country;
  List<AppDictCountry> nationality;

  AppDictionnaryGetData({
    this.setting,
    this.country,
    this.nationality,
  });

  factory AppDictionnaryGetData.fromJson(Map<String, dynamic> json) =>
      _$AppDictionnaryGetDataFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictionnaryGetDataToJson(this);
}

@JsonSerializable()
class AppDictSetting {
  AppDictAction action;
  AppDictState state;
  List<AppDictCurrency> currency;
  List<String> calendar;
  List<int> taxRate;
  List<AppDictPaymentTerm> paymentTerm;
  List<AppDictAvailability> paymentMethod;
  int defaultOpportunityTypeCreated;
  String defaultPositioningSearchModule;
  bool filterPositioningSearchModule;
  AppDictDisplayedColumns displayedColumns;
  Map<String, AppDictDefaultMail> defaultMail;
  AppDictTypeOf typeOf;
  bool smoothAdditionalData;
  String profitabilityMethodOfCalculating;
  bool showOwnOrderReference;
  AppDictItemInvoice itemInvoice;
  bool showLogoCompany;
  String markdownTextDashboard;
  List<AppDictDeliveryOrder> deliveryOrder;
  Map<String, AppDictDefaultMail> sharingEntity;
  List<AppDictActivityArea> activityArea;
  List<AppDictActivityArea> mobilityArea;
  List<AppDictAvailability> experience;
  List<AppDictClassification> training;
  List<AppDictClassification> expertiseArea;
  List<AppDictAvailability> duration;
  List<AppDictClassification> languageLevel;
  List<AppDictClassification> languageSpoken;
  List<AppDictAvailability> availability;
  List<AppDictClassification> evaluation;
  List<AppDictAvailability> origin;
  List<AppDictClassification> classification;
  List<AppDictAvailability> source;
  List<AppDictAvailability> criteria;
  List<AppDictClassification> tool;
  List<AppDictAvailability> situation;
  List<AppDictAvailability> civility;
  String defaultNationality;
  String timezone;
  AppDictCache cache;
  AppDictDefaultAction defaultAction;
  List<AppDictAvailability> contractEndReason;
  bool additionalTurnoverTypesState;

  AppDictSetting({
    this.action,
    this.state,
    this.currency,
    this.calendar,
    this.taxRate,
    this.paymentTerm,
    this.paymentMethod,
    this.defaultOpportunityTypeCreated,
    this.defaultPositioningSearchModule,
    this.filterPositioningSearchModule,
    this.displayedColumns,
    this.defaultMail,
    this.typeOf,
    this.smoothAdditionalData,
    this.profitabilityMethodOfCalculating,
    this.showOwnOrderReference,
    this.itemInvoice,
    this.showLogoCompany,
    this.markdownTextDashboard,
    this.deliveryOrder,
    this.sharingEntity,
    this.activityArea,
    this.mobilityArea,
    this.experience,
    this.training,
    this.expertiseArea,
    this.duration,
    this.languageLevel,
    this.languageSpoken,
    this.availability,
    this.evaluation,
    this.origin,
    this.classification,
    this.source,
    this.criteria,
    this.tool,
    this.situation,
    this.civility,
    this.defaultNationality,
    this.timezone,
    this.cache,
    this.defaultAction,
    this.contractEndReason,
    this.additionalTurnoverTypesState,
  });
  factory AppDictSetting.fromJson(Map<String, dynamic> json) =>
      _$AppDictSettingFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictSettingToJson(this);
}

@JsonSerializable()
class AppDictAction {
  bool forceMultiCreation;
  bool sort;
  List<AppDictApp> contact;
  List<AppDictApp> candidate;
  List<AppDictApp> resource;
  List<AppDictApp> opportunity;
  List<AppDictApp> project;
  List<AppDictApp> order;
  List<AppDictApp> invoice;
  List<AppDictApp> company;
  List<AppDictApp> product;
  List<AppDictApp> purchase;
  List<AppDictApp> app;

  AppDictAction({
    this.forceMultiCreation,
    this.sort,
    this.contact,
    this.candidate,
    this.resource,
    this.opportunity,
    this.project,
    this.order,
    this.invoice,
    this.company,
    this.product,
    this.purchase,
    this.app,
  });

  factory AppDictAction.fromJson(Map<String, dynamic> json) =>
      _$AppDictActionFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictActionToJson(this);
}

@JsonSerializable()
class AppDictApp {
  int id;
  String value;
  bool isNotification;
  bool collaborative;

  AppDictApp({
    this.id,
    this.value,
    this.isNotification,
    this.collaborative,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppDictApp && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  factory AppDictApp.fromJson(Map<String, dynamic> json) =>
      _$AppDictAppFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictAppToJson(this);
}

@JsonSerializable()
class AppDictActivityArea {
  String id;
  String value;
  List<AppDictClassification> option;

  AppDictActivityArea({
    this.id,
    this.value,
    this.option,
  });

  factory AppDictActivityArea.fromJson(Map<String, dynamic> json) =>
      _$AppDictActivityAreaFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictActivityAreaToJson(this);
}

@JsonSerializable()
class AppDictClassification {
  String id;
  String value;

  AppDictClassification({
    this.id,
    this.value,
  });

  factory AppDictClassification.fromJson(Map<String, dynamic> json) =>
      _$AppDictClassificationFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictClassificationToJson(this);
}

@JsonSerializable()
class AppDictAvailability {
  int id;
  String value;

  AppDictAvailability({
    this.id,
    this.value,
  });

  factory AppDictAvailability.fromJson(Map<String, dynamic> json) =>
      _$AppDictAvailabilityFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictAvailabilityToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppDictAvailability &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;
}

@JsonSerializable()
class AppDictCache {
  AppDictReporting reporting;

  AppDictCache({
    this.reporting,
  });

  factory AppDictCache.fromJson(Map<String, dynamic> json) =>
      _$AppDictCacheFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictCacheToJson(this);
}

@JsonSerializable()
class AppDictReporting {
  bool state;
  int duration;

  AppDictReporting({
    this.state,
    this.duration,
  });

  factory AppDictReporting.fromJson(Map<String, dynamic> json) =>
      _$AppDictReportingFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictReportingToJson(this);
}

@JsonSerializable()
class AppDictDefaultAction {
  String pushResource;
  String pushCandidate;
  String pushContact;

  AppDictDefaultAction({
    this.pushResource,
    this.pushCandidate,
    this.pushContact,
  });

  factory AppDictDefaultAction.fromJson(Map<String, dynamic> json) =>
      _$AppDictDefaultActionFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictDefaultActionToJson(this);
}

@JsonSerializable()
class AppDictDefaultMail {
  String object;
  String body;

  AppDictDefaultMail({
    this.object,
    this.body,
  });

  factory AppDictDefaultMail.fromJson(Map<String, dynamic> json) =>
      _$AppDictDefaultMailFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictDefaultMailToJson(this);
}

@JsonSerializable()
class AppDictDeliveryOrder {
  int id;
  String value;
  bool maskSignatureBlock;
  List<AppDictInsert> insert;

  AppDictDeliveryOrder({
    this.id,
    this.value,
    this.maskSignatureBlock,
    this.insert,
  });

  factory AppDictDeliveryOrder.fromJson(Map<String, dynamic> json) =>
      _$AppDictDeliveryOrderFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictDeliveryOrderToJson(this);
}

@JsonSerializable()
class AppDictInsert {
  String value;
  List<String> option;

  AppDictInsert({
    this.value,
    this.option,
  });

  factory AppDictInsert.fromJson(Map<String, dynamic> json) =>
      _$AppDictInsertFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictInsertToJson(this);
}

@JsonSerializable()
class AppDictDisplayedColumns {
  List<String> opportunity;

  AppDictDisplayedColumns({
    this.opportunity,
  });

  factory AppDictDisplayedColumns.fromJson(Map<String, dynamic> json) =>
      _$AppDictDisplayedColumnsFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictDisplayedColumnsToJson(this);
}

@JsonSerializable()
class AppDictItemInvoice {
  List<AppDictClassification> monthly;
  List<AppDictClassification> schedule;

  AppDictItemInvoice({
    this.monthly,
    this.schedule,
  });

  factory AppDictItemInvoice.fromJson(Map<String, dynamic> json) =>
      _$AppDictItemInvoiceFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictItemInvoiceToJson(this);
}

@JsonSerializable()
class AppDictPaymentTerm {
  int id;
  int value;
  int x;
  int y;

  AppDictPaymentTerm({
    this.id,
    this.value,
    this.x,
    this.y,
  });

  factory AppDictPaymentTerm.fromJson(Map<String, dynamic> json) =>
      _$AppDictPaymentTermFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictPaymentTermToJson(this);
}

@JsonSerializable()
class AppDictState {
  bool sort;
  List<AppDictAvailability> candidate;
  List<AppDictAvailability> resource;
  List<AppDictAvailability> product;
  List<AppDictOpportunity> opportunity;
  List<AppDictOpportunity> positioning;
  List<AppDictAvailability> project;
  List<AppDictAvailability> delivery;
  List<AppDictAvailability> contact;
  List<AppDictAvailability> company;
  List<AppDictAvailability> order;
  List<AppDictAvailability> invoice;
  List<AppDictAvailability> purchase;
  List<AppDictAvailability> payment;
  List<AppDictAvailability> quotation;

  AppDictState({
    this.sort,
    this.candidate,
    this.resource,
    this.product,
    this.opportunity,
    this.positioning,
    this.project,
    this.delivery,
    this.contact,
    this.company,
    this.order,
    this.invoice,
    this.purchase,
    this.payment,
    this.quotation,
  });

  factory AppDictState.fromJson(Map<String, dynamic> json) =>
      _$AppDictStateFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictStateToJson(this);
}

@JsonSerializable()
class AppDictOpportunity {
  int id;
  String value;
  bool active;

  AppDictOpportunity({
    this.id,
    this.value,
    this.active,
  });

  factory AppDictOpportunity.fromJson(Map<String, dynamic> json) =>
      _$AppDictOpportunityFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictOpportunityToJson(this);
}

@JsonSerializable()
class AppDictTypeOf {
  List<AppDictProject> project;
  List<AppDictAvailability> contract;
  List<AppDictResource> resource;
  List<AppDictAvailability> activity;
  List<AppDictAvailability> subscription;
  List<AppDictAvailability> purchase;
  List<AppDictAvailability> workingTime;
  List<AppDictAvailability> employee;
  List<AppDictAvailability> additionalTurnover;

  AppDictTypeOf({
    this.project,
    this.contract,
    this.resource,
    this.activity,
    this.subscription,
    this.purchase,
    this.workingTime,
    this.employee,
    this.additionalTurnover,
  });

  factory AppDictTypeOf.fromJson(Map<String, dynamic> json) =>
      _$AppDictTypeOfFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictTypeOfToJson(this);
}

@JsonSerializable()
class AppDictProject {
  int id;
  String value;
  int mode;
  bool scheduleProductionTurnover;
  bool isInternal;

  AppDictProject({
    this.id,
    this.value,
    this.mode,
    this.scheduleProductionTurnover,
    this.isInternal,
  });

  factory AppDictProject.fromJson(Map<String, dynamic> json) =>
      _$AppDictProjectFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictProjectToJson(this);
}

@JsonSerializable()
class AppDictResource {
  int id;
  String value;
  bool isExternal;
  bool isStructure;

  AppDictResource({
    this.id,
    this.value,
    this.isExternal,
    this.isStructure,
  });

  factory AppDictResource.fromJson(Map<String, dynamic> json) =>
      _$AppDictResourceFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictResourceToJson(this);
}
