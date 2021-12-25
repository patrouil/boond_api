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

/// Access to application/current-user services.
/// Current User is defined by the authentication credentials.
class AppCurrentUserApi extends _EntityApi {
  const AppCurrentUserApi(BoondApi parent) : super(parent);

  /// get Current user detailed information.
  Future<AppCurrentUserGet> get() async {
    const String url = "/api/application/current-user";
    Uri uri = Uri(scheme: BoondApi.kScheme, host: _parent.hostName, path: url);

    return await getHelper(
        uri, (Map<String, dynamic> m) => AppCurrentUserGet.fromJson(m));
  }
}
