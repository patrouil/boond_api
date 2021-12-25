/*
 * Copyright (c) patrouil ($year).This work is licensed under the
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

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart' as Intl;

import 'package:logging/logging.dart';
import 'package:test/test.dart';

import 'package:boond_dart/boond_dart.dart'
    show BoondApi, BoondAuth, OpportunitiesSearch;

void traceHandler() {
  Logger.root.level = Level.FINE;
  hierarchicalLoggingEnabled = true;
  recordStackTraceAtLevel = Level.SHOUT;
  Logger.root.onRecord.listen((LogRecord record) {
    String f = Intl.DateFormat("HH:mm:ss ").format(record.time);

    String obj = (record.error == null) ? "" : record.error.toString();
    print('$f: ${record.toString()} - $obj');
    if (record.stackTrace != null) {
      print('$f: stack trace : ${record.stackTrace.toString()}');
    }
  });
}

void main() {
  String _testUser = "patrick.rouillon@alteam.com";
  String _testPwd = "5c5c2a5";
  late BoondApi api;
  Logger log = Logger.root;
  log.level = Level.FINE;

  late OpportunitiesSearch os;

  hierarchicalLoggingEnabled = true;

  setUp(() async {
    http.Client cli;
    cli = BoondAuth.basicAuth(
        user: _testUser, password: _testPwd, traceLevel: Level.FINEST);

    api = BoondApi(cli, BoondApi.kSandboxHostname);
  });

  group('first test', () {
    test('list opportunities', () async {
      os = await api.opportinities.search({'flags': '1'});
      log.fine("result size is ${os.data.length}");
    });
    test('check result set', () {
      expect(os.data.length, equals(1));
    });
  });

  tearDown(() async {});
}
