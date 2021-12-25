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

part of 'boond_api.dart';

/// Access to actions services
class ActionsApi extends _EntityApi {
  const ActionsApi(BoondApi parent) : super(parent);

  /// create/get a new actions Template.
  /// the objet type and id to this action is related to must be given.
  /// this ID is zero.
  Future<ActionsGet> empty(String dataType, String dataId) async {
    const String url = "/api/actions/default";

    Map<String, String> keywords = {dataType: dataId};

    Uri uri = Uri(
        scheme: BoondApi.kScheme,
        host: _parent.hostName,
        path: url,
        queryParameters: keywords);
    return await getHelper(
        uri, (Map<String, dynamic> m) => ActionsGet.fromJson(m));
  }

  /// get action synthesis information.
  Future<ActionsGet> get(String id) async {
    String url = "/api/actions/$id";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await getHelper(uri, (Map<String, dynamic> m) {
      BoondAuth.log
          .info("[ActionsGet] level is ${BoondAuth.log.level.toString()}"
              " get $id is binding  ${m.toString()}");
      return ActionsGet.fromJson(m);
    });
  }

  /// search for actions from its criteria
  /// Example :
  /// ``
  /// {
  /// "keywords" : "Cand**"
  /// }
  /// .``
  /// will retrieve any Candidates relates actions.
  Future<ActionsSearch> search([Map<String, String>? keywords]) async {
    const String url = "/api/actions";

    Uri uri = Uri(
        scheme: BoondApi.kScheme,
        host: _parent.hostName,
        path: url,
        queryParameters: keywords);
    BoondAuth.log.fine("[ActionsSearch ${uri.query}]");
    return await getHelper(
        uri, (Map<String, dynamic> m) => ActionsSearch.fromJson(m));
  }

  /// Creates a new action.
  Future<ActionsGet> post(ActionsPost c) async {
    const String url = "/api/actions";

    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await postHelper(
        uri, c.toJson(), (Map<String, dynamic> m) => ActionsGet.fromJson(m));
  }

  /// update action elements.
  Future<ActionsGet> put(ActionsGet c) async {
    String url = "/api/actions/${c.data.id}";

    Map<String, dynamic> _valuesToPut = {"data": c.data.toJson()};
    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);
    return await putHelper(uri, _valuesToPut, (Map<String, dynamic> m) {
      return ActionsGet.fromJson(m);
    });
  }
}
