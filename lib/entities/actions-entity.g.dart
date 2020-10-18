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

part of 'actions-entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActionsGet _$ActionsGetFromJson(Map<String, dynamic> json) {
  return ActionsGet(
    meta: json['meta'] == null
        ? null
        : BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
    data: json['data'] == null
        ? null
        : ActionsGetData.fromJson(json['data'] as Map<String, dynamic>),
    included: (json['included'] as List)
        ?.map((e) =>
            e == null ? null : Included.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ActionsGetToJson(ActionsGet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('data', instance.data?.toJson());
  writeNotNull(
      'included', instance.included?.map((e) => e?.toJson())?.toList());
  return val;
}

ActionsGetData _$ActionsGetDataFromJson(Map<String, dynamic> json) {
  return ActionsGetData(
    id: json['id'] as String,
    type: json['type'] as String,
    attributes: json['attributes'] == null
        ? null
        : ActionsAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>),
    relationships: json['relationships'] == null
        ? null
        : BoondRelationships.fromJson(
            json['relationships'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ActionsGetDataToJson(ActionsGetData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', instance.type);
  writeNotNull('attributes', instance.attributes?.toJson());
  writeNotNull('relationships', instance.relationships?.toJson());
  return val;
}

ActionsSearch _$ActionsSearchFromJson(Map<String, dynamic> json) {
  return ActionsSearch(
    meta: json['meta'] == null
        ? null
        : BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : ActionSearchData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    included: (json['included'] as List)
        ?.map((e) =>
            e == null ? null : Included.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ActionsSearchToJson(ActionsSearch instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('data', instance.data?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'included', instance.included?.map((e) => e?.toJson())?.toList());
  return val;
}

ActionSearchData _$ActionSearchDataFromJson(Map<String, dynamic> json) {
  return ActionSearchData(
    id: json['id'] as String,
    type: json['type'] as String,
    attributes: json['attributes'] == null
        ? null
        : ActionsAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>),
    relationships: json['relationships'] == null
        ? null
        : BoondRelationships.fromJson(
            json['relationships'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ActionSearchDataToJson(ActionSearchData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', instance.type);
  writeNotNull('attributes', instance.attributes?.toJson());
  writeNotNull('relationships', instance.relationships?.toJson());
  return val;
}

ActionsPost _$ActionsPostFromJson(Map<String, dynamic> json) {
  return ActionsPost(
    data: json['data'] == null
        ? null
        : ActionsPostData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ActionsPostToJson(ActionsPost instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

ActionsPostData _$ActionsPostDataFromJson(Map<String, dynamic> json) {
  return ActionsPostData(
    type: json['type'] as String,
    id: json['id'] as String,
    attributes: json['attributes'] == null
        ? null
        : ActionsAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>),
    relationships: json['relationships'] == null
        ? null
        : BoondRelationships.fromJson(
            json['relationships'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ActionsPostDataToJson(ActionsPostData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  writeNotNull('relationships', instance.relationships?.toJson());
  return val;
}

ActionsAttributes _$ActionsAttributesFromJson(Map<String, dynamic> json) {
  return ActionsAttributes(
    startDate: BoondHelpers.parseDateTime(json['startDate'] as String),
    creationDate: BoondHelpers.parseDateTime(json['creationDate'] as String),
    endDate: BoondHelpers.parseDateTime(json['endDate'] as String),
    startTimezone: json['startTimezone'] as String,
    endTimezone: json['endTimezone'] as String,
    typeOf: json['typeOf'] as int,
    status: json['status'] as String,
    state: json['state'] as String,
    text: json['text'] as String,
    location: json['location'] as String,
    title: json['title'] as String,
    guests: (json['guests'] as List)?.map((e) => e as String)?.toList(),
    synchronizeWithAdvancedAppCalendar:
        json['synchronizeWithAdvancedAppCalendar'] as bool,
    isNotification: json['isNotification'] as bool,
  );
}

Map<String, dynamic> _$ActionsAttributesToJson(ActionsAttributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('startDate', instance.startDate?.toIso8601String());
  writeNotNull('creationDate', instance.creationDate?.toIso8601String());
  writeNotNull('endDate', instance.endDate?.toIso8601String());
  writeNotNull('startTimezone', instance.startTimezone);
  writeNotNull('endTimezone', instance.endTimezone);
  writeNotNull('typeOf', instance.typeOf);
  writeNotNull('status', instance.status);
  writeNotNull('state', instance.state);
  writeNotNull('text', instance.text);
  writeNotNull('location', instance.location);
  writeNotNull('title', instance.title);
  writeNotNull('guests', instance.guests);
  writeNotNull('synchronizeWithAdvancedAppCalendar',
      instance.synchronizeWithAdvancedAppCalendar);
  writeNotNull('isNotification', instance.isNotification);
  return val;
}
