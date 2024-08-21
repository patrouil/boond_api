/*
 * Copyright (c) patrouil (2021).This work is licensed under the
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
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boond_included.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoondIncluded _$BoondIncludedFromJson(Map<String, dynamic> json) =>
    BoondIncluded(
      id: json['id'] as String,
      type: json['type'] as String,
      attributes: json['attributes'] == null
          ? null
          : BoondIncludedAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
      relationships: json['relationships'] == null
          ? null
          : BoondIncludedRelationships.fromJson(
              json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BoondIncludedToJson(BoondIncluded instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

BoondIncludedAttributes _$BoondIncludedAttributesFromJson(
        Map<String, dynamic> json) =>
    BoondIncludedAttributes(
      lastName: json['lastName'] as String?,
      firstName: json['firstName'] as String?,
      name: json['name'] as String?,
      phone1: json['phone1'] as String?,
      postcode: json['postcode'] as String?,
      website: json['website'] as String?,
      fax: json['fax'] as String?,
      town: json['town'] as String?,
      address: json['address'] as String?,
      country: json['country'] as String?,
      state: (json['state'] as num?)?.toInt(),
      staff: (json['staff'] as num?)?.toInt(),
      informationComments: json['informationComments'] as String?,
      departments: (json['departments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      expertiseArea: json['expertiseArea'] as String?,
    );

Map<String, dynamic> _$BoondIncludedAttributesToJson(
        BoondIncludedAttributes instance) =>
    <String, dynamic>{
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'name': instance.name,
      'phone1': instance.phone1,
      'postcode': instance.postcode,
      'website': instance.website,
      'fax': instance.fax,
      'town': instance.town,
      'address': instance.address,
      'country': instance.country,
      'state': instance.state,
      'staff': instance.staff,
      'informationComments': instance.informationComments,
      'departments': instance.departments,
      'expertiseArea': instance.expertiseArea,
    };

BoondIncludedRelationships _$BoondIncludedRelationshipsFromJson(
        Map<String, dynamic> json) =>
    BoondIncludedRelationships(
      parentCompany: json['parentCompany'] == null
          ? null
          : BoondInfluencers.fromJson(
              json['parentCompany'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BoondIncludedRelationshipsToJson(
        BoondIncludedRelationships instance) =>
    <String, dynamic>{
      'parentCompany': instance.parentCompany,
    };

BoondInfluencers _$BoondInfluencersFromJson(Map<String, dynamic> json) =>
    BoondInfluencers(
      data: (json['data'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BoondInfluencersToJson(BoondInfluencers instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
