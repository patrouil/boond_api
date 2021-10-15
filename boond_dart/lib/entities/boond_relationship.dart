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
import 'boond_resumes.dart';

part 'boond_relationship.g.dart';

@JsonSerializable()
class BoondRelationships {
  BoondRelation? mainManager;
  BoondRelation? hrManager;
  BoondRelation? agency;
  BoondRelation? resource;
  BoondResumes? resumes;
  // bug dans les messages generes par Boond.
  // String? pole;
  // extra for actions
  BoondRelation? company;
  BoondRelation? dependsOn;
  /* Plus complexe que cela.
  A modeliser plus tard de tputes facon elles dans les included
      "files": {
        "data": [
          {
            "id": "18_document",
            "type": "document"
          }
        ]
      },

   List<BoondRelation>? files;

   */
  BoondRelation? positionning;
  BoondRelation? delivery;
  // extra for Opportunities
  BoondRelation? flag;
  BoondRelation? createdBy;
  BoondInfluencers? influencers;
  // BUg dans le message
  // Map<String, dynamic ? >parentCompany;
  // use case a definir
  // List<String> subsidiaries;
  BoondRelationships(
      {this.mainManager,
      this.hrManager,
      this.agency,
      this.resource,
      this.resumes,
      this.company,
      this.dependsOn,
      this.positionning,
      this.delivery,
      this.flag,
      this.createdBy,
      this.influencers});

  factory BoondRelationships.fromJson(Map<String, dynamic> json) =>
      _$BoondRelationshipsFromJson(json);

  Map<String, dynamic> toJson() => _$BoondRelationshipsToJson(this);
}

@JsonSerializable()
class BoondRelation {
  BoondRelationData data;

  BoondRelation({
    required this.data,
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
    required this.id,
    required this.type,
  });

  factory BoondRelationData.fromJson(Map<String, dynamic> json) =>
      _$BoondRelationDataFromJson(json);

  Map<String, dynamic> toJson() => _$BoondRelationDataToJson(this);
}
