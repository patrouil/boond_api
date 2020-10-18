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

part of 'candidate-body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CandidateGet _$CandidateGetFromJson(Map<String, dynamic> json) {
  return CandidateGet(
    meta: json['meta'] == null
        ? null
        : BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
    data: json['data'] == null
        ? null
        : CandidateGetData.fromJson(json['data'] as Map<String, dynamic>),
    included: (json['included'] as List)
        ?.map((e) =>
            e == null ? null : Included.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CandidateGetToJson(CandidateGet instance) {
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

CandidateGetData _$CandidateGetDataFromJson(Map<String, dynamic> json) {
  return CandidateGetData(
    id: json['id'] as String,
    type: json['type'] as String,
    attributes: json['attributes'] == null
        ? null
        : CandidateAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>),
    relationships: json['relationships'] == null
        ? null
        : BoondRelationships.fromJson(
            json['relationships'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CandidateGetDataToJson(CandidateGetData instance) {
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

CandidateSearch _$CandidateSearchFromJson(Map<String, dynamic> json) {
  return CandidateSearch(
    meta: json['meta'] == null
        ? null
        : BoondMeta.fromJson(json['meta'] as Map<String, dynamic>),
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : CandidateSearchData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    included: (json['included'] as List)
        ?.map((e) =>
            e == null ? null : Included.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CandidateSearchToJson(CandidateSearch instance) {
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

CandidateSearchData _$CandidateSearchDataFromJson(Map<String, dynamic> json) {
  return CandidateSearchData(
    id: json['id'] as String,
    type: json['type'] as String,
    attributes: json['attributes'] == null
        ? null
        : CandidateAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>),
    relationships: json['relationships'] == null
        ? null
        : BoondRelationships.fromJson(
            json['relationships'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CandidateSearchDataToJson(CandidateSearchData instance) {
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

CandidatePost _$CandidatePostFromJson(Map<String, dynamic> json) {
  return CandidatePost(
    data: json['data'] == null
        ? null
        : CandidatePostData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CandidatePostToJson(CandidatePost instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

CandidatePostData _$CandidatePostDataFromJson(Map<String, dynamic> json) {
  return CandidatePostData(
    attributes: json['attributes'] == null
        ? null
        : CandidateAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>),
    type: json['type'] as String,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$CandidatePostDataToJson(CandidatePostData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  writeNotNull('attributes', instance.attributes?.toJson());
  return val;
}

CandidateAttributes _$CandidateAttributesFromJson(Map<String, dynamic> json) {
  return CandidateAttributes(
    creationDate: json['creationDate'] as String,
    updateDate: json['updateDate'] as String,
    civility: json['civility'] as int,
    lastName: json['lastName'] as String,
    firstName: json['firstName'] as String,
    title: json['title'] as String,
    state: json['state'] as int,
    email1: json['email1'] as String,
    email2: json['email2'] as String,
    email3: json['email3'] as String,
    phone1: json['phone1'] as String,
    phone2: json['phone2'] as String,
    phone3: json['phone3'] as String,
    fax: json['fax'] as String,
    address: json['address'] as String,
    postcode: json['postcode'] as String,
    town: json['town'] as String,
    country: json['country'] as String,
    source: json['source'] == null
        ? null
        : CandidateSource.fromJson(json['source'] as Map<String, dynamic>),
    dateOfBirth: BoondHelpers.parseDateTime(json['dateOfBirth'] as String),
    mobilityAreas:
        (json['mobilityAreas'] as List)?.map((e) => e as String)?.toList(),
    globalEvaluation: json['globalEvaluation'] as String,
    evaluations:
        (json['evaluations'] as List)?.map((e) => e as String)?.toList(),
    availability: json['availability'] as int,
    isVisible: json['isVisible'] as bool,
    informationComments: json['informationComments'] as String,
    socialNetworks:
        (json['socialNetworks'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$CandidateAttributesToJson(CandidateAttributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('creationDate', instance.creationDate);
  writeNotNull('updateDate', instance.updateDate);
  writeNotNull('civility', instance.civility);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('title', instance.title);
  writeNotNull('state', instance.state);
  writeNotNull('email1', instance.email1);
  writeNotNull('email2', instance.email2);
  writeNotNull('email3', instance.email3);
  writeNotNull('phone1', instance.phone1);
  writeNotNull('phone2', instance.phone2);
  writeNotNull('phone3', instance.phone3);
  writeNotNull('fax', instance.fax);
  writeNotNull('address', instance.address);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('town', instance.town);
  writeNotNull('country', instance.country);
  writeNotNull('source', instance.source?.toJson());
  writeNotNull('dateOfBirth', instance.dateOfBirth?.toIso8601String());
  writeNotNull('mobilityAreas', instance.mobilityAreas);
  writeNotNull('globalEvaluation', instance.globalEvaluation);
  writeNotNull('evaluations', instance.evaluations);
  writeNotNull('availability', instance.availability);
  writeNotNull('isVisible', instance.isVisible);
  writeNotNull('informationComments', instance.informationComments);
  writeNotNull('socialNetworks', instance.socialNetworks);
  return val;
}

CandidateSource _$CandidateSourceFromJson(Map<String, dynamic> json) {
  return CandidateSource(
    typeOf: json['typeOf'] as int,
    detail: json['detail'] as String,
  );
}

Map<String, dynamic> _$CandidateSourceToJson(CandidateSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('typeOf', instance.typeOf);
  writeNotNull('detail', instance.detail);
  return val;
}
