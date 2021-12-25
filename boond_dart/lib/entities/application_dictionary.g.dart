// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppDictionaryGet _$AppDictionaryGetFromJson(Map<String, dynamic> json) =>
    AppDictionaryGet(
      meta: BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: AppDictionaryGetData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppDictionaryGetToJson(AppDictionaryGet instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };

AppDictionaryGetData _$AppDictionaryGetDataFromJson(
        Map<String, dynamic> json) =>
    AppDictionaryGetData(
      setting: json['setting'] == null
          ? null
          : AppDictSetting.fromJson(json['setting'] as Map<String, dynamic>),
      country: (json['country'] as List<dynamic>?)
          ?.map((e) => AppDictCountry.fromJson(e as Map<String, dynamic>))
          .toList(),
      nationality: (json['nationality'] as List<dynamic>?)
          ?.map((e) => AppDictCountry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppDictionaryGetDataToJson(
        AppDictionaryGetData instance) =>
    <String, dynamic>{
      'setting': instance.setting,
      'country': instance.country,
      'nationality': instance.nationality,
    };

AppDictSetting _$AppDictSettingFromJson(Map<String, dynamic> json) =>
    AppDictSetting(
      action: json['action'] == null
          ? null
          : AppDictAction.fromJson(json['action'] as Map<String, dynamic>),
      state: json['state'] == null
          ? null
          : AppDictState.fromJson(json['state'] as Map<String, dynamic>),
      currency: (json['currency'] as List<dynamic>?)
          ?.map((e) => AppDictCurrency.fromJson(e as Map<String, dynamic>))
          .toList(),
      calendar: (json['calendar'] as List<dynamic>?)
          ?.map((e) => AppDictCalendar.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxRate:
          (json['taxRate'] as List<dynamic>?)?.map((e) => e as int).toList(),
      paymentTerm: (json['paymentTerm'] as List<dynamic>?)
          ?.map((e) => AppDictPaymentTerm.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentMethod: (json['paymentMethod'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultOpportunityTypeCreated:
          json['defaultOpportunityTypeCreated'] as int?,
      defaultPositioningSearchModule:
          json['defaultPositioningSearchModule'] as String?,
      filterPositioningSearchModule:
          json['filterPositioningSearchModule'] as bool?,
      displayedColumns: json['displayedColumns'] == null
          ? null
          : AppDictDisplayedColumns.fromJson(
              json['displayedColumns'] as Map<String, dynamic>),
      defaultMail: (json['defaultMail'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, AppDictDefaultMail.fromJson(e as Map<String, dynamic>)),
      ),
      typeOf: json['typeOf'] == null
          ? null
          : AppDictTypeOf.fromJson(json['typeOf'] as Map<String, dynamic>),
      smoothAdditionalData: json['smoothAdditionalData'] as bool?,
      profitabilityMethodOfCalculating:
          json['profitabilityMethodOfCalculating'] as String?,
      showOwnOrderReference: json['showOwnOrderReference'] as bool?,
      itemInvoice: json['itemInvoice'] == null
          ? null
          : AppDictItemInvoice.fromJson(
              json['itemInvoice'] as Map<String, dynamic>),
      showLogoCompany: json['showLogoCompany'] as bool?,
      markdownTextDashboard: json['markdownTextDashboard'] as String?,
      deliveryOrder: (json['deliveryOrder'] as List<dynamic>?)
          ?.map((e) => AppDictDeliveryOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      sharingEntity: (json['sharingEntity'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, AppDictDefaultMail.fromJson(e as Map<String, dynamic>)),
      ),
      activityArea: (json['activityArea'] as List<dynamic>?)
          ?.map((e) => AppDictActivityArea.fromJson(e as Map<String, dynamic>))
          .toList(),
      mobilityArea: (json['mobilityArea'] as List<dynamic>?)
          ?.map((e) => AppDictActivityArea.fromJson(e as Map<String, dynamic>))
          .toList(),
      experience: (json['experience'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      training: (json['training'] as List<dynamic>?)
          ?.map(
              (e) => AppDictClassification.fromJson(e as Map<String, dynamic>))
          .toList(),
      expertiseArea: (json['expertiseArea'] as List<dynamic>?)
          ?.map(
              (e) => AppDictClassification.fromJson(e as Map<String, dynamic>))
          .toList(),
      duration: (json['duration'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      languageLevel: (json['languageLevel'] as List<dynamic>?)
          ?.map(
              (e) => AppDictClassification.fromJson(e as Map<String, dynamic>))
          .toList(),
      languageSpoken: (json['languageSpoken'] as List<dynamic>?)
          ?.map(
              (e) => AppDictClassification.fromJson(e as Map<String, dynamic>))
          .toList(),
      availability: (json['availability'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      evaluation: (json['evaluation'] as List<dynamic>?)
          ?.map(
              (e) => AppDictClassification.fromJson(e as Map<String, dynamic>))
          .toList(),
      origin: (json['origin'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      classification: (json['classification'] as List<dynamic>?)
          ?.map(
              (e) => AppDictClassification.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      criteria: (json['criteria'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      tool: (json['tool'] as List<dynamic>?)
          ?.map(
              (e) => AppDictClassification.fromJson(e as Map<String, dynamic>))
          .toList(),
      situation: (json['situation'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      civility: (json['civility'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultNationality: json['defaultNationality'] as String?,
      timezone: json['timezone'] as String?,
      cache: json['cache'] == null
          ? null
          : AppDictCache.fromJson(json['cache'] as Map<String, dynamic>),
      defaultAction: json['defaultAction'] == null
          ? null
          : AppDictDefaultAction.fromJson(
              json['defaultAction'] as Map<String, dynamic>),
      contractEndReason: (json['contractEndReason'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalTurnoverTypesState:
          json['additionalTurnoverTypesState'] as bool?,
    );

Map<String, dynamic> _$AppDictSettingToJson(AppDictSetting instance) =>
    <String, dynamic>{
      'action': instance.action,
      'state': instance.state,
      'currency': instance.currency,
      'calendar': instance.calendar,
      'taxRate': instance.taxRate,
      'paymentTerm': instance.paymentTerm,
      'paymentMethod': instance.paymentMethod,
      'defaultOpportunityTypeCreated': instance.defaultOpportunityTypeCreated,
      'defaultPositioningSearchModule': instance.defaultPositioningSearchModule,
      'filterPositioningSearchModule': instance.filterPositioningSearchModule,
      'displayedColumns': instance.displayedColumns,
      'defaultMail': instance.defaultMail,
      'typeOf': instance.typeOf,
      'smoothAdditionalData': instance.smoothAdditionalData,
      'profitabilityMethodOfCalculating':
          instance.profitabilityMethodOfCalculating,
      'showOwnOrderReference': instance.showOwnOrderReference,
      'itemInvoice': instance.itemInvoice,
      'showLogoCompany': instance.showLogoCompany,
      'markdownTextDashboard': instance.markdownTextDashboard,
      'deliveryOrder': instance.deliveryOrder,
      'sharingEntity': instance.sharingEntity,
      'activityArea': instance.activityArea,
      'mobilityArea': instance.mobilityArea,
      'experience': instance.experience,
      'training': instance.training,
      'expertiseArea': instance.expertiseArea,
      'duration': instance.duration,
      'languageLevel': instance.languageLevel,
      'languageSpoken': instance.languageSpoken,
      'availability': instance.availability,
      'evaluation': instance.evaluation,
      'origin': instance.origin,
      'classification': instance.classification,
      'source': instance.source,
      'criteria': instance.criteria,
      'tool': instance.tool,
      'situation': instance.situation,
      'civility': instance.civility,
      'defaultNationality': instance.defaultNationality,
      'timezone': instance.timezone,
      'cache': instance.cache,
      'defaultAction': instance.defaultAction,
      'contractEndReason': instance.contractEndReason,
      'additionalTurnoverTypesState': instance.additionalTurnoverTypesState,
    };

AppDictAction _$AppDictActionFromJson(Map<String, dynamic> json) =>
    AppDictAction(
      forceMultiCreation: json['forceMultiCreation'] as bool?,
      sort: json['sort'] as bool?,
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => AppDictApp.fromJson(e as Map<String, dynamic>))
          .toList(),
      candidate: (json['candidate'] as List<dynamic>?)
          ?.map((e) => AppDictApp.fromJson(e as Map<String, dynamic>))
          .toList(),
      resource: (json['resource'] as List<dynamic>?)
          ?.map((e) => AppDictApp.fromJson(e as Map<String, dynamic>))
          .toList(),
      opportunity: (json['opportunity'] as List<dynamic>?)
          ?.map((e) => AppDictApp.fromJson(e as Map<String, dynamic>))
          .toList(),
      project: (json['project'] as List<dynamic>?)
          ?.map((e) => AppDictApp.fromJson(e as Map<String, dynamic>))
          .toList(),
      order: (json['order'] as List<dynamic>?)
          ?.map((e) => AppDictApp.fromJson(e as Map<String, dynamic>))
          .toList(),
      invoice: (json['invoice'] as List<dynamic>?)
          ?.map((e) => AppDictApp.fromJson(e as Map<String, dynamic>))
          .toList(),
      company: (json['company'] as List<dynamic>?)
          ?.map((e) => AppDictApp.fromJson(e as Map<String, dynamic>))
          .toList(),
      product: (json['product'] as List<dynamic>?)
          ?.map((e) => AppDictApp.fromJson(e as Map<String, dynamic>))
          .toList(),
      purchase: (json['purchase'] as List<dynamic>?)
          ?.map((e) => AppDictApp.fromJson(e as Map<String, dynamic>))
          .toList(),
      app: (json['app'] as List<dynamic>?)
          ?.map((e) => AppDictApp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppDictActionToJson(AppDictAction instance) =>
    <String, dynamic>{
      'forceMultiCreation': instance.forceMultiCreation,
      'sort': instance.sort,
      'contact': instance.contact,
      'candidate': instance.candidate,
      'resource': instance.resource,
      'opportunity': instance.opportunity,
      'project': instance.project,
      'order': instance.order,
      'invoice': instance.invoice,
      'company': instance.company,
      'product': instance.product,
      'purchase': instance.purchase,
      'app': instance.app,
    };

AppDictApp _$AppDictAppFromJson(Map<String, dynamic> json) => AppDictApp(
      id: json['id'] as int,
      value: json['value'] as String?,
      isNotification: json['isNotification'] as bool?,
      collaborative: json['collaborative'] as bool?,
    );

Map<String, dynamic> _$AppDictAppToJson(AppDictApp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'isNotification': instance.isNotification,
      'collaborative': instance.collaborative,
    };

AppDictActivityArea _$AppDictActivityAreaFromJson(Map<String, dynamic> json) =>
    AppDictActivityArea(
      id: json['id'] as String,
      value: json['value'] as String?,
      option: (json['option'] as List<dynamic>?)
          ?.map(
              (e) => AppDictClassification.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppDictActivityAreaToJson(
        AppDictActivityArea instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'option': instance.option,
    };

AppDictClassification _$AppDictClassificationFromJson(
        Map<String, dynamic> json) =>
    AppDictClassification(
      id: json['id'] as String,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$AppDictClassificationToJson(
        AppDictClassification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
    };

AppDictAvailability _$AppDictAvailabilityFromJson(Map<String, dynamic> json) =>
    AppDictAvailability(
      id: json['id'] as int,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$AppDictAvailabilityToJson(
        AppDictAvailability instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
    };

AppDictCache _$AppDictCacheFromJson(Map<String, dynamic> json) => AppDictCache(
      reporting: json['reporting'] == null
          ? null
          : AppDictReporting.fromJson(
              json['reporting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppDictCacheToJson(AppDictCache instance) =>
    <String, dynamic>{
      'reporting': instance.reporting,
    };

AppDictReporting _$AppDictReportingFromJson(Map<String, dynamic> json) =>
    AppDictReporting(
      state: json['state'] as bool?,
      duration: json['duration'] as int?,
    );

Map<String, dynamic> _$AppDictReportingToJson(AppDictReporting instance) =>
    <String, dynamic>{
      'state': instance.state,
      'duration': instance.duration,
    };

AppDictDefaultAction _$AppDictDefaultActionFromJson(
        Map<String, dynamic> json) =>
    AppDictDefaultAction(
      pushResource: json['pushResource'] as String?,
      pushCandidate: json['pushCandidate'] as String?,
      pushContact: json['pushContact'] as String?,
    );

Map<String, dynamic> _$AppDictDefaultActionToJson(
        AppDictDefaultAction instance) =>
    <String, dynamic>{
      'pushResource': instance.pushResource,
      'pushCandidate': instance.pushCandidate,
      'pushContact': instance.pushContact,
    };

AppDictDefaultMail _$AppDictDefaultMailFromJson(Map<String, dynamic> json) =>
    AppDictDefaultMail(
      object: json['object'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$AppDictDefaultMailToJson(AppDictDefaultMail instance) =>
    <String, dynamic>{
      'object': instance.object,
      'body': instance.body,
    };

AppDictDeliveryOrder _$AppDictDeliveryOrderFromJson(
        Map<String, dynamic> json) =>
    AppDictDeliveryOrder(
      id: json['id'] as int,
      value: json['value'] as String?,
      maskSignatureBlock: json['maskSignatureBlock'] as bool,
      insert: (json['insert'] as List<dynamic>?)
          ?.map((e) => AppDictInsert.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppDictDeliveryOrderToJson(
        AppDictDeliveryOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'maskSignatureBlock': instance.maskSignatureBlock,
      'insert': instance.insert,
    };

AppDictInsert _$AppDictInsertFromJson(Map<String, dynamic> json) =>
    AppDictInsert(
      value: json['value'] as String?,
      option:
          (json['option'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AppDictInsertToJson(AppDictInsert instance) =>
    <String, dynamic>{
      'value': instance.value,
      'option': instance.option,
    };

AppDictDisplayedColumns _$AppDictDisplayedColumnsFromJson(
        Map<String, dynamic> json) =>
    AppDictDisplayedColumns(
      opportunity: (json['opportunity'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AppDictDisplayedColumnsToJson(
        AppDictDisplayedColumns instance) =>
    <String, dynamic>{
      'opportunity': instance.opportunity,
    };

AppDictItemInvoice _$AppDictItemInvoiceFromJson(Map<String, dynamic> json) =>
    AppDictItemInvoice(
      monthly: (json['monthly'] as List<dynamic>?)
          ?.map(
              (e) => AppDictClassification.fromJson(e as Map<String, dynamic>))
          .toList(),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map(
              (e) => AppDictClassification.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppDictItemInvoiceToJson(AppDictItemInvoice instance) =>
    <String, dynamic>{
      'monthly': instance.monthly,
      'schedule': instance.schedule,
    };

AppDictPaymentTerm _$AppDictPaymentTermFromJson(Map<String, dynamic> json) =>
    AppDictPaymentTerm(
      id: json['id'] as int,
      value: json['value'] as int,
      x: json['x'] as int?,
      y: json['y'] as int?,
    );

Map<String, dynamic> _$AppDictPaymentTermToJson(AppDictPaymentTerm instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'x': instance.x,
      'y': instance.y,
    };

AppDictState _$AppDictStateFromJson(Map<String, dynamic> json) => AppDictState(
      sort: json['sort'] as bool?,
      candidate: (json['candidate'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      resource: (json['resource'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      product: (json['product'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      opportunity: (json['opportunity'] as List<dynamic>?)
          ?.map((e) => AppDictOpportunity.fromJson(e as Map<String, dynamic>))
          .toList(),
      positioning: (json['positioning'] as List<dynamic>?)
          ?.map((e) => AppDictOpportunity.fromJson(e as Map<String, dynamic>))
          .toList(),
      project: (json['project'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      delivery: (json['delivery'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      company: (json['company'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      order: (json['order'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      invoice: (json['invoice'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      purchase: (json['purchase'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      payment: (json['payment'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      quotation: (json['quotation'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppDictStateToJson(AppDictState instance) =>
    <String, dynamic>{
      'sort': instance.sort,
      'candidate': instance.candidate,
      'resource': instance.resource,
      'product': instance.product,
      'opportunity': instance.opportunity,
      'positioning': instance.positioning,
      'project': instance.project,
      'delivery': instance.delivery,
      'contact': instance.contact,
      'company': instance.company,
      'order': instance.order,
      'invoice': instance.invoice,
      'purchase': instance.purchase,
      'payment': instance.payment,
      'quotation': instance.quotation,
    };

AppDictOpportunity _$AppDictOpportunityFromJson(Map<String, dynamic> json) =>
    AppDictOpportunity(
      id: json['id'] as int,
      value: json['value'] as String?,
      active: json['active'] as bool,
      isEnabled: json['isEnabled'] as bool?,
      delete: json['delete'] as bool?,
    );

Map<String, dynamic> _$AppDictOpportunityToJson(AppDictOpportunity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'active': instance.active,
      'isEnabled': instance.isEnabled,
      'delete': instance.delete,
    };

AppDictTypeOf _$AppDictTypeOfFromJson(Map<String, dynamic> json) =>
    AppDictTypeOf(
      project: (json['project'] as List<dynamic>?)
          ?.map((e) => AppDictProject.fromJson(e as Map<String, dynamic>))
          .toList(),
      contract: (json['contract'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      resource: (json['resource'] as List<dynamic>?)
          ?.map((e) => AppDictResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      activity: (json['activity'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscription: (json['subscription'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      purchase: (json['purchase'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      workingTime: (json['workingTime'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      employee: (json['employee'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalTurnover: (json['additionalTurnover'] as List<dynamic>?)
          ?.map((e) => AppDictAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppDictTypeOfToJson(AppDictTypeOf instance) =>
    <String, dynamic>{
      'project': instance.project,
      'contract': instance.contract,
      'resource': instance.resource,
      'activity': instance.activity,
      'subscription': instance.subscription,
      'purchase': instance.purchase,
      'workingTime': instance.workingTime,
      'employee': instance.employee,
      'additionalTurnover': instance.additionalTurnover,
    };

AppDictProject _$AppDictProjectFromJson(Map<String, dynamic> json) =>
    AppDictProject(
      id: json['id'] as int,
      value: json['value'] as String?,
      mode: json['mode'] as int,
      scheduleProductionTurnover: json['scheduleProductionTurnover'] as bool,
      isInternal: json['isInternal'] as bool,
    );

Map<String, dynamic> _$AppDictProjectToJson(AppDictProject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'mode': instance.mode,
      'scheduleProductionTurnover': instance.scheduleProductionTurnover,
      'isInternal': instance.isInternal,
    };

AppDictResource _$AppDictResourceFromJson(Map<String, dynamic> json) =>
    AppDictResource(
      id: json['id'] as int,
      value: json['value'] as String?,
      isExternal: json['isExternal'] as bool?,
      isStructure: json['isStructure'] as bool?,
    );

Map<String, dynamic> _$AppDictResourceToJson(AppDictResource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'isExternal': instance.isExternal,
      'isStructure': instance.isStructure,
    };
