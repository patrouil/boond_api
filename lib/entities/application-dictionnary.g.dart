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

part of 'application-dictionnary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppDictionnaryGet _$AppDictionnaryGetFromJson(Map<String, dynamic> json) {
  return AppDictionnaryGet(
    meta: json['meta'] == null
        ? null
        : BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
    data: json['data'] == null
        ? null
        : AppDictionnaryGetData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AppDictionnaryGetToJson(AppDictionnaryGet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('data', instance.data?.toJson());
  return val;
}

AppDictionnaryGetData _$AppDictionnaryGetDataFromJson(
    Map<String, dynamic> json) {
  return AppDictionnaryGetData(
    setting: json['setting'] == null
        ? null
        : AppDictSetting.fromJson(json['setting'] as Map<String, dynamic>),
    country: (json['country'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictCountry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nationality: (json['nationality'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictCountry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AppDictionnaryGetDataToJson(
    AppDictionnaryGetData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('setting', instance.setting?.toJson());
  writeNotNull('country', instance.country?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'nationality', instance.nationality?.map((e) => e?.toJson())?.toList());
  return val;
}

AppDictSetting _$AppDictSettingFromJson(Map<String, dynamic> json) {
  return AppDictSetting(
    action: json['action'] == null
        ? null
        : AppDictAction.fromJson(json['action'] as Map<String, dynamic>),
    state: json['state'] == null
        ? null
        : AppDictState.fromJson(json['state'] as Map<String, dynamic>),
    currency: (json['currency'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictCurrency.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    calendar: (json['calendar'] as List)?.map((e) => e as String)?.toList(),
    taxRate: (json['taxRate'] as List)?.map((e) => e as int)?.toList(),
    paymentTerm: (json['paymentTerm'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictPaymentTerm.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    paymentMethod: (json['paymentMethod'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    defaultOpportunityTypeCreated: json['defaultOpportunityTypeCreated'] as int,
    defaultPositioningSearchModule:
        json['defaultPositioningSearchModule'] as String,
    filterPositioningSearchModule:
        json['filterPositioningSearchModule'] as bool,
    displayedColumns: json['displayedColumns'] == null
        ? null
        : AppDictDisplayedColumns.fromJson(
            json['displayedColumns'] as Map<String, dynamic>),
    defaultMail: (json['defaultMail'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : AppDictDefaultMail.fromJson(e as Map<String, dynamic>)),
    ),
    typeOf: json['typeOf'] == null
        ? null
        : AppDictTypeOf.fromJson(json['typeOf'] as Map<String, dynamic>),
    smoothAdditionalData: json['smoothAdditionalData'] as bool,
    profitabilityMethodOfCalculating:
        json['profitabilityMethodOfCalculating'] as String,
    showOwnOrderReference: json['showOwnOrderReference'] as bool,
    itemInvoice: json['itemInvoice'] == null
        ? null
        : AppDictItemInvoice.fromJson(
            json['itemInvoice'] as Map<String, dynamic>),
    showLogoCompany: json['showLogoCompany'] as bool,
    markdownTextDashboard: json['markdownTextDashboard'] as String,
    deliveryOrder: (json['deliveryOrder'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictDeliveryOrder.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sharingEntity: (json['sharingEntity'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : AppDictDefaultMail.fromJson(e as Map<String, dynamic>)),
    ),
    activityArea: (json['activityArea'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictActivityArea.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mobilityArea: (json['mobilityArea'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictActivityArea.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    experience: (json['experience'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    training: (json['training'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictClassification.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    expertiseArea: (json['expertiseArea'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictClassification.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    duration: (json['duration'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    languageLevel: (json['languageLevel'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictClassification.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    languageSpoken: (json['languageSpoken'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictClassification.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    availability: (json['availability'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evaluation: (json['evaluation'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictClassification.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    origin: (json['origin'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    classification: (json['classification'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictClassification.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: (json['source'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    criteria: (json['criteria'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tool: (json['tool'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictClassification.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    situation: (json['situation'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    civility: (json['civility'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    defaultNationality: json['defaultNationality'] as String,
    timezone: json['timezone'] as String,
    cache: json['cache'] == null
        ? null
        : AppDictCache.fromJson(json['cache'] as Map<String, dynamic>),
    defaultAction: json['defaultAction'] == null
        ? null
        : AppDictDefaultAction.fromJson(
            json['defaultAction'] as Map<String, dynamic>),
    contractEndReason: (json['contractEndReason'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    additionalTurnoverTypesState: json['additionalTurnoverTypesState'] as bool,
  );
}

Map<String, dynamic> _$AppDictSettingToJson(AppDictSetting instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action', instance.action?.toJson());
  writeNotNull('state', instance.state?.toJson());
  writeNotNull(
      'currency', instance.currency?.map((e) => e?.toJson())?.toList());
  writeNotNull('calendar', instance.calendar);
  writeNotNull('taxRate', instance.taxRate);
  writeNotNull(
      'paymentTerm', instance.paymentTerm?.map((e) => e?.toJson())?.toList());
  writeNotNull('paymentMethod',
      instance.paymentMethod?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'defaultOpportunityTypeCreated', instance.defaultOpportunityTypeCreated);
  writeNotNull('defaultPositioningSearchModule',
      instance.defaultPositioningSearchModule);
  writeNotNull(
      'filterPositioningSearchModule', instance.filterPositioningSearchModule);
  writeNotNull('displayedColumns', instance.displayedColumns?.toJson());
  writeNotNull('defaultMail',
      instance.defaultMail?.map((k, e) => MapEntry(k, e?.toJson())));
  writeNotNull('typeOf', instance.typeOf?.toJson());
  writeNotNull('smoothAdditionalData', instance.smoothAdditionalData);
  writeNotNull('profitabilityMethodOfCalculating',
      instance.profitabilityMethodOfCalculating);
  writeNotNull('showOwnOrderReference', instance.showOwnOrderReference);
  writeNotNull('itemInvoice', instance.itemInvoice?.toJson());
  writeNotNull('showLogoCompany', instance.showLogoCompany);
  writeNotNull('markdownTextDashboard', instance.markdownTextDashboard);
  writeNotNull('deliveryOrder',
      instance.deliveryOrder?.map((e) => e?.toJson())?.toList());
  writeNotNull('sharingEntity',
      instance.sharingEntity?.map((k, e) => MapEntry(k, e?.toJson())));
  writeNotNull(
      'activityArea', instance.activityArea?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'mobilityArea', instance.mobilityArea?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'experience', instance.experience?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'training', instance.training?.map((e) => e?.toJson())?.toList());
  writeNotNull('expertiseArea',
      instance.expertiseArea?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'duration', instance.duration?.map((e) => e?.toJson())?.toList());
  writeNotNull('languageLevel',
      instance.languageLevel?.map((e) => e?.toJson())?.toList());
  writeNotNull('languageSpoken',
      instance.languageSpoken?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'availability', instance.availability?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'evaluation', instance.evaluation?.map((e) => e?.toJson())?.toList());
  writeNotNull('origin', instance.origin?.map((e) => e?.toJson())?.toList());
  writeNotNull('classification',
      instance.classification?.map((e) => e?.toJson())?.toList());
  writeNotNull('source', instance.source?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'criteria', instance.criteria?.map((e) => e?.toJson())?.toList());
  writeNotNull('tool', instance.tool?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'situation', instance.situation?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'civility', instance.civility?.map((e) => e?.toJson())?.toList());
  writeNotNull('defaultNationality', instance.defaultNationality);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('cache', instance.cache?.toJson());
  writeNotNull('defaultAction', instance.defaultAction?.toJson());
  writeNotNull('contractEndReason',
      instance.contractEndReason?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'additionalTurnoverTypesState', instance.additionalTurnoverTypesState);
  return val;
}

AppDictAction _$AppDictActionFromJson(Map<String, dynamic> json) {
  return AppDictAction(
    forceMultiCreation: json['forceMultiCreation'] as bool,
    sort: json['sort'] as bool,
    contact: (json['contact'] as List)
        ?.map((e) =>
            e == null ? null : AppDictApp.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    candidate: (json['candidate'] as List)
        ?.map((e) =>
            e == null ? null : AppDictApp.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    resource: (json['resource'] as List)
        ?.map((e) =>
            e == null ? null : AppDictApp.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    opportunity: (json['opportunity'] as List)
        ?.map((e) =>
            e == null ? null : AppDictApp.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    project: (json['project'] as List)
        ?.map((e) =>
            e == null ? null : AppDictApp.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    order: (json['order'] as List)
        ?.map((e) =>
            e == null ? null : AppDictApp.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    invoice: (json['invoice'] as List)
        ?.map((e) =>
            e == null ? null : AppDictApp.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    company: (json['company'] as List)
        ?.map((e) =>
            e == null ? null : AppDictApp.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    product: (json['product'] as List)
        ?.map((e) =>
            e == null ? null : AppDictApp.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    purchase: (json['purchase'] as List)
        ?.map((e) =>
            e == null ? null : AppDictApp.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    app: (json['app'] as List)
        ?.map((e) =>
            e == null ? null : AppDictApp.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AppDictActionToJson(AppDictAction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('forceMultiCreation', instance.forceMultiCreation);
  writeNotNull('sort', instance.sort);
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'candidate', instance.candidate?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'resource', instance.resource?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'opportunity', instance.opportunity?.map((e) => e?.toJson())?.toList());
  writeNotNull('project', instance.project?.map((e) => e?.toJson())?.toList());
  writeNotNull('order', instance.order?.map((e) => e?.toJson())?.toList());
  writeNotNull('invoice', instance.invoice?.map((e) => e?.toJson())?.toList());
  writeNotNull('company', instance.company?.map((e) => e?.toJson())?.toList());
  writeNotNull('product', instance.product?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'purchase', instance.purchase?.map((e) => e?.toJson())?.toList());
  writeNotNull('app', instance.app?.map((e) => e?.toJson())?.toList());
  return val;
}

AppDictApp _$AppDictAppFromJson(Map<String, dynamic> json) {
  return AppDictApp(
    id: json['id'] as int,
    value: json['value'] as String,
    isNotification: json['isNotification'] as bool,
    collaborative: json['collaborative'] as bool,
  );
}

Map<String, dynamic> _$AppDictAppToJson(AppDictApp instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('value', instance.value);
  writeNotNull('isNotification', instance.isNotification);
  writeNotNull('collaborative', instance.collaborative);
  return val;
}

AppDictActivityArea _$AppDictActivityAreaFromJson(Map<String, dynamic> json) {
  return AppDictActivityArea(
    id: json['id'] as String,
    value: json['value'] as String,
    option: (json['option'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictClassification.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AppDictActivityAreaToJson(AppDictActivityArea instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('value', instance.value);
  writeNotNull('option', instance.option?.map((e) => e?.toJson())?.toList());
  return val;
}

AppDictClassification _$AppDictClassificationFromJson(
    Map<String, dynamic> json) {
  return AppDictClassification(
    id: json['id'] as String,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$AppDictClassificationToJson(
    AppDictClassification instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('value', instance.value);
  return val;
}

AppDictAvailability _$AppDictAvailabilityFromJson(Map<String, dynamic> json) {
  return AppDictAvailability(
    id: json['id'] as int,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$AppDictAvailabilityToJson(AppDictAvailability instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('value', instance.value);
  return val;
}

AppDictCache _$AppDictCacheFromJson(Map<String, dynamic> json) {
  return AppDictCache(
    reporting: json['reporting'] == null
        ? null
        : AppDictReporting.fromJson(json['reporting'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AppDictCacheToJson(AppDictCache instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reporting', instance.reporting?.toJson());
  return val;
}

AppDictReporting _$AppDictReportingFromJson(Map<String, dynamic> json) {
  return AppDictReporting(
    state: json['state'] as bool,
    duration: json['duration'] as int,
  );
}

Map<String, dynamic> _$AppDictReportingToJson(AppDictReporting instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('duration', instance.duration);
  return val;
}

AppDictDefaultAction _$AppDictDefaultActionFromJson(Map<String, dynamic> json) {
  return AppDictDefaultAction(
    pushResource: json['pushResource'] as String,
    pushCandidate: json['pushCandidate'] as String,
    pushContact: json['pushContact'] as String,
  );
}

Map<String, dynamic> _$AppDictDefaultActionToJson(
    AppDictDefaultAction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pushResource', instance.pushResource);
  writeNotNull('pushCandidate', instance.pushCandidate);
  writeNotNull('pushContact', instance.pushContact);
  return val;
}

AppDictDefaultMail _$AppDictDefaultMailFromJson(Map<String, dynamic> json) {
  return AppDictDefaultMail(
    object: json['object'] as String,
    body: json['body'] as String,
  );
}

Map<String, dynamic> _$AppDictDefaultMailToJson(AppDictDefaultMail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('object', instance.object);
  writeNotNull('body', instance.body);
  return val;
}

AppDictDeliveryOrder _$AppDictDeliveryOrderFromJson(Map<String, dynamic> json) {
  return AppDictDeliveryOrder(
    id: json['id'] as int,
    value: json['value'] as String,
    maskSignatureBlock: json['maskSignatureBlock'] as bool,
    insert: (json['insert'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictInsert.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AppDictDeliveryOrderToJson(
    AppDictDeliveryOrder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('value', instance.value);
  writeNotNull('maskSignatureBlock', instance.maskSignatureBlock);
  writeNotNull('insert', instance.insert?.map((e) => e?.toJson())?.toList());
  return val;
}

AppDictInsert _$AppDictInsertFromJson(Map<String, dynamic> json) {
  return AppDictInsert(
    value: json['value'] as String,
    option: (json['option'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$AppDictInsertToJson(AppDictInsert instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('option', instance.option);
  return val;
}

AppDictDisplayedColumns _$AppDictDisplayedColumnsFromJson(
    Map<String, dynamic> json) {
  return AppDictDisplayedColumns(
    opportunity:
        (json['opportunity'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$AppDictDisplayedColumnsToJson(
    AppDictDisplayedColumns instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('opportunity', instance.opportunity);
  return val;
}

AppDictItemInvoice _$AppDictItemInvoiceFromJson(Map<String, dynamic> json) {
  return AppDictItemInvoice(
    monthly: (json['monthly'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictClassification.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    schedule: (json['schedule'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictClassification.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AppDictItemInvoiceToJson(AppDictItemInvoice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('monthly', instance.monthly?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'schedule', instance.schedule?.map((e) => e?.toJson())?.toList());
  return val;
}

AppDictPaymentTerm _$AppDictPaymentTermFromJson(Map<String, dynamic> json) {
  return AppDictPaymentTerm(
    id: json['id'] as int,
    value: json['value'] as int,
    x: json['x'] as int,
    y: json['y'] as int,
  );
}

Map<String, dynamic> _$AppDictPaymentTermToJson(AppDictPaymentTerm instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('value', instance.value);
  writeNotNull('x', instance.x);
  writeNotNull('y', instance.y);
  return val;
}

AppDictState _$AppDictStateFromJson(Map<String, dynamic> json) {
  return AppDictState(
    sort: json['sort'] as bool,
    candidate: (json['candidate'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    resource: (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    product: (json['product'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    opportunity: (json['opportunity'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictOpportunity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    positioning: (json['positioning'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictOpportunity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    project: (json['project'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    delivery: (json['delivery'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    company: (json['company'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    order: (json['order'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    invoice: (json['invoice'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    purchase: (json['purchase'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    payment: (json['payment'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quotation: (json['quotation'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AppDictStateToJson(AppDictState instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sort', instance.sort);
  writeNotNull(
      'candidate', instance.candidate?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'resource', instance.resource?.map((e) => e?.toJson())?.toList());
  writeNotNull('product', instance.product?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'opportunity', instance.opportunity?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'positioning', instance.positioning?.map((e) => e?.toJson())?.toList());
  writeNotNull('project', instance.project?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'delivery', instance.delivery?.map((e) => e?.toJson())?.toList());
  writeNotNull('contact', instance.contact?.map((e) => e?.toJson())?.toList());
  writeNotNull('company', instance.company?.map((e) => e?.toJson())?.toList());
  writeNotNull('order', instance.order?.map((e) => e?.toJson())?.toList());
  writeNotNull('invoice', instance.invoice?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'purchase', instance.purchase?.map((e) => e?.toJson())?.toList());
  writeNotNull('payment', instance.payment?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'quotation', instance.quotation?.map((e) => e?.toJson())?.toList());
  return val;
}

AppDictOpportunity _$AppDictOpportunityFromJson(Map<String, dynamic> json) {
  return AppDictOpportunity(
    id: json['id'] as int,
    value: json['value'] as String,
    active: json['active'] as bool,
  );
}

Map<String, dynamic> _$AppDictOpportunityToJson(AppDictOpportunity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('value', instance.value);
  writeNotNull('active', instance.active);
  return val;
}

AppDictTypeOf _$AppDictTypeOfFromJson(Map<String, dynamic> json) {
  return AppDictTypeOf(
    project: (json['project'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictProject.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contract: (json['contract'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    resource: (json['resource'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictResource.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    activity: (json['activity'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subscription: (json['subscription'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    purchase: (json['purchase'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    workingTime: (json['workingTime'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    employee: (json['employee'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    additionalTurnover: (json['additionalTurnover'] as List)
        ?.map((e) => e == null
            ? null
            : AppDictAvailability.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AppDictTypeOfToJson(AppDictTypeOf instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('project', instance.project?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'contract', instance.contract?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'resource', instance.resource?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'activity', instance.activity?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'subscription', instance.subscription?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'purchase', instance.purchase?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'workingTime', instance.workingTime?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'employee', instance.employee?.map((e) => e?.toJson())?.toList());
  writeNotNull('additionalTurnover',
      instance.additionalTurnover?.map((e) => e?.toJson())?.toList());
  return val;
}

AppDictProject _$AppDictProjectFromJson(Map<String, dynamic> json) {
  return AppDictProject(
    id: json['id'] as int,
    value: json['value'] as String,
    mode: json['mode'] as int,
    scheduleProductionTurnover: json['scheduleProductionTurnover'] as bool,
    isInternal: json['isInternal'] as bool,
  );
}

Map<String, dynamic> _$AppDictProjectToJson(AppDictProject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('value', instance.value);
  writeNotNull('mode', instance.mode);
  writeNotNull(
      'scheduleProductionTurnover', instance.scheduleProductionTurnover);
  writeNotNull('isInternal', instance.isInternal);
  return val;
}

AppDictResource _$AppDictResourceFromJson(Map<String, dynamic> json) {
  return AppDictResource(
    id: json['id'] as int,
    value: json['value'] as String,
    isExternal: json['isExternal'] as bool,
    isStructure: json['isStructure'] as bool,
  );
}

Map<String, dynamic> _$AppDictResourceToJson(AppDictResource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('value', instance.value);
  writeNotNull('isExternal', instance.isExternal);
  writeNotNull('isStructure', instance.isStructure);
  return val;
}
