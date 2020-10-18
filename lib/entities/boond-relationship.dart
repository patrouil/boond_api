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

import 'boond-resumes.dart';

part 'boond-relationship.g.dart';

@JsonSerializable()
class BoondRelationships {
  BoondRelation mainManager;
  BoondRelation hrManager;
  BoondRelation agency;
  BoondRelation resource;
  BoondResumes resumes;
  BoondRelation pole;
  // extra for actions
  BoondRelation company;
  BoondRelation dependsOn;
  BoondRelation files;
  BoondRelation positionning;
  BoondRelation delivery;

  BoondRelationships(
      {this.mainManager,
      this.hrManager,
      this.agency,
      this.resource,
      this.resumes,
      this.pole,
      this.company,
      this.dependsOn,
      this.files,
      this.positionning,
      this.delivery});

  factory BoondRelationships.fromJson(Map<String, dynamic> json) =>
      _$BoondRelationshipsFromJson(json);

  Map<String, dynamic> toJson() => _$BoondRelationshipsToJson(this);
}

@JsonSerializable()
class BoondRelation {
  BoondRelationData data;

  BoondRelation({
    this.data,
  });

  factory BoondRelation.fromJson(Map<String, dynamic> json) =>
      _$BoondRelationFromJson(json);

  Map<String, dynamic> toJson() => _$BoondRelationToJson(this);
}

@JsonSerializable()
class BoondRelationData {
  String id;
  String type;

  BoondRelationData({
    this.id,
    this.type,
  });

  factory BoondRelationData.fromJson(Map<String, dynamic> json) =>
      _$BoondRelationDataFromJson(json);

  Map<String, dynamic> toJson() => _$BoondRelationDataToJson(this);
}
