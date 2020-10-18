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

part 'boond-usersrights.g.dart';

@JsonSerializable()
class UsersRights {
  ActionsRights main;
  ActionsRights resources;
  ActionsRights candidates;
  ActionsRights flags;
  ActionsRights opportunities;
  ActionsRights crm;
  ActionsRights products;
  ActionsRights projects;
  ActionsRights billing;
  ActionsRights reporting;
  ActionsRights actions;
  ActionsRights activityExpenses;
  ActionsRights purchases;

  UsersRights({
    this.main,
    this.resources,
    this.candidates,
    this.flags,
    this.opportunities,
    this.crm,
    this.products,
    this.projects,
    this.billing,
    this.reporting,
    this.actions,
    this.activityExpenses,
    this.purchases,
  });

  factory UsersRights.fromJson(Map<String, dynamic> json) =>
      _$UsersRightsFromJson(json);

  Map<String, dynamic> toJson() => _$UsersRightsToJson(this);
}

@JsonSerializable(includeIfNull: false)
class ActionsRights {
  bool showGroupe;
  String showAllManagers;
  bool showBuPoles;
  String showAllPoles;
  String showAllAgencies;
  bool administrator;
  String writeAll;
  bool extraction;
  bool assignment;
  bool deletion;
  bool exportation;
  bool editReference;
  String showAll;
  bool editDate;
  bool readDocuments;
  bool creation;
  bool editCreationDate;
  bool actions;
  bool maskData;
  dynamic administrative;
  bool reporting;
  bool distributionCustomers;
  bool projects;
  bool resources;
  bool productionPlans;

  ActionsRights({
    bool showGroupe,
    String showAllManagers,
    bool showBuPoles,
    String showAllPoles,
    String showAllAgencies,
    bool administrator,
    String writeAll,
    bool extraction,
    bool assignment,
    bool deletion,
    bool exportation,
    bool editReference,
    String showAll,
    bool editDate,
    bool readDocuments,
    bool creation,
    bool editCreationDate,
    bool actions,
    bool maskData,
    dynamic administrative,
    bool reporting,
    bool distributionCustomers,
    bool projects,
    bool resources,
    bool productionPlans,
  });
  factory ActionsRights.fromJson(Map<String, dynamic> json) =>
      _$ActionsRightsFromJson(json);

  Map<String, dynamic> toJson() => _$ActionsRightsToJson(this);
}
