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

import 'boond_included.dart';
import 'boond_meta.dart';
import 'boond_relationship.dart';
import 'boond_usersrights.dart';

part 'application_currentuser.g.dart';

@JsonSerializable()
class AppCurrentUserGet {
  BoondMeta meta;
  AppCurrentUserGetData data;
  List<BoondIncluded> included;

  AppCurrentUserGet({
    required this.meta,
    required this.data,
    required this.included,
  });

  factory AppCurrentUserGet.fromJson(Map<String, dynamic> json) =>
      _$AppCurrentUserGetFromJson(json);

  Map<String, dynamic> toJson() => _$AppCurrentUserGetToJson(this);
}

@JsonSerializable()
class AppCurrentUserGetData {
  String? id;
  String type;
  AppCurrentUserAttributes attributes;
  BoondRelationships relationships;

  AppCurrentUserGetData({
    this.id,
    required this.type,
    required this.attributes,
    required this.relationships,
  });

  factory AppCurrentUserGetData.fromJson(Map<String, dynamic> json) =>
      _$AppCurrentUserGetDataFromJson(json);

  Map<String, dynamic> toJson() => _$AppCurrentUserGetDataToJson(this);
}

@JsonSerializable(includeIfNull: false)
class AppCurrentUserAttributes {
  String? firstName;
  String? lastName;
  String? email1;
  String? phone1;
  String? language;
  String? login;
  String? level;
  String? userToken;
  Map<String, bool>? modules;

  List<dynamic>? navigationBar;
  UsersRights? rights;
  String? lastLogInDate;
  String? homepage;
  String? nodeSignedRequest;
  String? nodeUrl;
  String? timezone;
  bool? narrowPerimeter;
  bool? defaultSearchSaving;
  /* ScoreCards not done in this version
  List<SynthesisScorecard> commercialSynthesisScorecards;
  List<SynthesisScorecard> humanResourcesSynthesisScorecards;
  List<SynthesisScorecard> recruitmentSynthesisScorecards;
  List<SynthesisScorecard> activityExpensesSynthesisScorecards;
  List<SynthesisScorecard> billingSynthesisScorecards;
  List<SScorecard> globalSynthesisScorecards;
  List<SScorecard> companiesScorecards;
  List<SScorecard> projectsScorecards;
  List<SScorecard> resourcesScorecards;
   */
  AppCurrentUserAttributes({
    this.firstName,
    this.lastName,
    this.email1,
    this.phone1,
    this.language,
    this.login,
    this.level,
    this.userToken,
    this.modules,
    this.navigationBar,
    this.rights,
    this.lastLogInDate,
    this.homepage,
    this.nodeSignedRequest,
    this.nodeUrl,
    this.timezone,
    this.narrowPerimeter,
    this.defaultSearchSaving,
  });

  factory AppCurrentUserAttributes.fromJson(Map<String, dynamic> json) =>
      _$AppCurrentUserAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$AppCurrentUserAttributesToJson(this);

  String get fullName => '$firstName $lastName';
}
