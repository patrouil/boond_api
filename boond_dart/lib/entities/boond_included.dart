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

import 'package:json_annotation/json_annotation.dart';

part 'boond_included.g.dart';

@JsonSerializable()
class BoondIncluded {
  String id;
  String type;
  BoondIncludedAttributes? attributes;
  BoondIncludedRelationships? relationships;

  BoondIncluded(
      {required this.id,
      required this.type,
      this.attributes,
      this.relationships});

  factory BoondIncluded.fromJson(Map<String, dynamic> json) =>
      _$BoondIncludedFromJson(json);

  Map<String, dynamic> toJson() => _$BoondIncludedToJson(this);
}

// TODO create a separate class file
@JsonSerializable()
class BoondIncludedAttributes {
  BoondIncludedAttributes({
    this.lastName,
    this.firstName,
    this.name,
    this.phone1,
    this.postcode,
    this.website,
    this.fax,
    this.town,
    this.address,
    this.country,
    this.state,
    this.staff,
    this.informationComments,
    this.departments,
    this.expertiseArea,
  });

  String? lastName;
  String? firstName;
  String? name;
  String? phone1;
  String? postcode;
  String? website;
  String? fax;
  String? town;
  String? address;
  String? country;
  int? state;
  int? staff;
  String? informationComments;
  List<String>? departments;
  String? expertiseArea;

  factory BoondIncludedAttributes.fromJson(Map<String, dynamic> json) =>
      _$BoondIncludedAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$BoondIncludedAttributesToJson(this);
}

@JsonSerializable()
class BoondIncludedRelationships {
  BoondIncludedRelationships({
    this.parentCompany,
  });

  factory BoondIncludedRelationships.fromJson(Map<String, dynamic> json) =>
      _$BoondIncludedRelationshipsFromJson(json);

  Map<String, dynamic> toJson() => _$BoondIncludedRelationshipsToJson(this);

  BoondInfluencers? parentCompany;
}

@JsonSerializable()
class BoondInfluencers {
  BoondInfluencers({
    this.data,
  });

  factory BoondInfluencers.fromJson(Map<String, dynamic> json) =>
      _$BoondInfluencersFromJson(json);

  Map<String, dynamic> toJson() => _$BoondInfluencersToJson(this);

  List<String>? data;
}
