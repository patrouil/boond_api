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

part 'application-calendar.g.dart';

@JsonSerializable()
class AppDictCalendar {
  String id;
  String iso;
  String value;

  AppDictCalendar({
    this.id,
    this.iso,
    this.value,
  });

  factory AppDictCalendar.fromJson(Map<String, dynamic> json) =>
      _$AppDictCalendarFromJson(json);

  Map<String, dynamic> toJson() => _$AppDictCalendarToJson(this);
}
