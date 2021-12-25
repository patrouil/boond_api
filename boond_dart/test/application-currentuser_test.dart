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

import 'dart:io';
import 'dart:convert';
import 'package:boond_dart/boond_dart.dart' show AppCurrentUserGet;
import 'package:test/test.dart';

void main() {
  late AppCurrentUserGet user;

  group('current user get A', () {
    test('mapping file', () async {
      File file = File('test/current-user/current-user-A.json');
      String content = await file.readAsString();
      Map<String, dynamic> contentMap = jsonDecode(content);
      user = AppCurrentUserGet.fromJson(contentMap);
    });
    test(' simple attrib lastname ', () {
      expect(user.data.attributes.lastName, equals('EUDARIC'));
    });
    test(' nav bar first element ', () {
      expect(user.data.attributes.navigationBar?.first, isA<String>());
    });
    test(' nav bar last element ', () {
      expect(user.data.attributes.navigationBar?.last, isMap);
    });
  });
}
