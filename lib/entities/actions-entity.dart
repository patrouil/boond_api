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

import 'boond-helpers.dart';
import 'boond-relationship.dart';
import 'boond-included.dart';
import 'boond-meta.dart';

part 'actions-entity.g.dart';

@JsonSerializable()
class ActionsGet {
  BoondMeta meta;
  ActionsGetData data;
  List<Included> included;

  ActionsGet({
    this.meta,
    this.data,
    this.included,
  });

  factory ActionsGet.fromJson(Map<String, dynamic> json) =>
      _$ActionsGetFromJson(json);

  Map<String, dynamic> toJson() => _$ActionsGetToJson(this);
}

@JsonSerializable()
class ActionsGetData {
  String id;
  String type;
  ActionsAttributes attributes;
  BoondRelationships relationships;

  ActionsGetData({
    this.id,
    this.type,
    this.attributes,
    this.relationships,
  });

  factory ActionsGetData.fromJson(Map<String, dynamic> json) =>
      _$ActionsGetDataFromJson(json);

  Map<String, dynamic> toJson() => _$ActionsGetDataToJson(this);
}

@JsonSerializable()
class ActionsSearch {
  BoondMeta meta;
  List<ActionSearchData> data;
  List<Included> included;

  ActionsSearch({
    this.meta,
    this.data,
    this.included,
  });

  factory ActionsSearch.fromJson(Map<String, dynamic> json) =>
      _$ActionsSearchFromJson(json);

  Map<String, dynamic> toJson() => _$ActionsSearchToJson(this);
}

@JsonSerializable()
class ActionSearchData {
  String id;
  String type;
  ActionsAttributes attributes;
  BoondRelationships relationships;

  ActionSearchData({
    this.id,
    this.type,
    this.attributes,
    this.relationships,
  });

  factory ActionSearchData.fromJson(Map<String, dynamic> json) =>
      _$ActionSearchDataFromJson(json);

  Map<String, dynamic> toJson() => _$ActionSearchDataToJson(this);
}

@JsonSerializable()
class ActionsPost {
  ActionsPostData data;

  ActionsPost({
    this.data,
  });

  factory ActionsPost.fromActionsGet(ActionsGet ag) {
    assert(ag != null);
    assert(ag.data != null);
    ActionsPost cp =
        ActionsPost(data: ActionsPostData.fromActionsGetData(ag.data));
    return cp;
  }

  factory ActionsPost.fromJson(Map<String, dynamic> json) =>
      _$ActionsPostFromJson(json);

  Map<String, dynamic> toJson() => _$ActionsPostToJson(this);
}

@JsonSerializable()
class ActionsPostData {
  String type;
  String id;
  ActionsAttributes attributes;
  BoondRelationships relationships;

  ActionsPostData({this.type, this.id, this.attributes, this.relationships})
      : assert(attributes != null),
        assert(relationships != null);

  factory ActionsPostData.fromActionsGetData(ActionsGetData agd) {
    return ActionsPostData(
        attributes: agd.attributes,
        type: agd.type,
        id: agd.id,
        relationships: agd.relationships);
  }

  factory ActionsPostData.fromJson(Map<String, dynamic> json) =>
      _$ActionsPostDataFromJson(json);

  Map<String, dynamic> toJson() => _$ActionsPostDataToJson(this);
}

@JsonSerializable(includeIfNull: false)
class ActionsAttributes {
  @JsonKey(fromJson: BoondHelpers.parseDateTime)
  DateTime startDate;
  @JsonKey(fromJson: BoondHelpers.parseDateTime)
  DateTime creationDate;
  @JsonKey(fromJson: BoondHelpers.parseDateTime)
  DateTime endDate;
  String startTimezone;
  String endTimezone;
  int typeOf;
  String status;
  String state;
  String text;
  String location;
  String title;
  List<String> guests;
  bool synchronizeWithAdvancedAppCalendar;
  bool isNotification;

  ActionsAttributes({
    this.startDate,
    this.creationDate,
    this.endDate,
    this.startTimezone,
    this.endTimezone,
    this.typeOf,
    this.status,
    this.state,
    this.text,
    this.location,
    this.title,
    this.guests,
    this.synchronizeWithAdvancedAppCalendar,
    this.isNotification,
  });

  factory ActionsAttributes.fromJson(Map<String, dynamic> json) =>
      _$ActionsAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$ActionsAttributesToJson(this);
}
