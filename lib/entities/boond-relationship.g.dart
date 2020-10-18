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

part of 'boond-relationship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoondRelationships _$BoondRelationshipsFromJson(Map<String, dynamic> json) {
  return BoondRelationships(
    mainManager: json['mainManager'] == null
        ? null
        : BoondRelation.fromJson(json['mainManager'] as Map<String, dynamic>),
    hrManager: json['hrManager'] == null
        ? null
        : BoondRelation.fromJson(json['hrManager'] as Map<String, dynamic>),
    agency: json['agency'] == null
        ? null
        : BoondRelation.fromJson(json['agency'] as Map<String, dynamic>),
    resource: json['resource'] == null
        ? null
        : BoondRelation.fromJson(json['resource'] as Map<String, dynamic>),
    resumes: json['resumes'] == null
        ? null
        : BoondResumes.fromJson(json['resumes'] as Map<String, dynamic>),
    pole: json['pole'] == null
        ? null
        : BoondRelation.fromJson(json['pole'] as Map<String, dynamic>),
    company: json['company'] == null
        ? null
        : BoondRelation.fromJson(json['company'] as Map<String, dynamic>),
    dependsOn: json['dependsOn'] == null
        ? null
        : BoondRelation.fromJson(json['dependsOn'] as Map<String, dynamic>),
    files: json['files'] == null
        ? null
        : BoondRelation.fromJson(json['files'] as Map<String, dynamic>),
    positionning: json['positionning'] == null
        ? null
        : BoondRelation.fromJson(json['positionning'] as Map<String, dynamic>),
    delivery: json['delivery'] == null
        ? null
        : BoondRelation.fromJson(json['delivery'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BoondRelationshipsToJson(BoondRelationships instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mainManager', instance.mainManager?.toJson());
  writeNotNull('hrManager', instance.hrManager?.toJson());
  writeNotNull('agency', instance.agency?.toJson());
  writeNotNull('resource', instance.resource?.toJson());
  writeNotNull('resumes', instance.resumes?.toJson());
  writeNotNull('pole', instance.pole?.toJson());
  writeNotNull('company', instance.company?.toJson());
  writeNotNull('dependsOn', instance.dependsOn?.toJson());
  writeNotNull('files', instance.files?.toJson());
  writeNotNull('positionning', instance.positionning?.toJson());
  writeNotNull('delivery', instance.delivery?.toJson());
  return val;
}

BoondRelation _$BoondRelationFromJson(Map<String, dynamic> json) {
  return BoondRelation(
    data: json['data'] == null
        ? null
        : BoondRelationData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BoondRelationToJson(BoondRelation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

BoondRelationData _$BoondRelationDataFromJson(Map<String, dynamic> json) {
  return BoondRelationData(
    id: json['id'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$BoondRelationDataToJson(BoondRelationData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', instance.type);
  return val;
}
