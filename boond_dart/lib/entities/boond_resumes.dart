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

part 'boond_resumes.g.dart';

@JsonSerializable()
class BoondResumes {
  List<BoondResumesData> data;

  BoondResumes({
    required this.data,
  });

  factory BoondResumes.fromJson(Map<String, dynamic> json) =>
      _$BoondResumesFromJson(json);

  Map<String, dynamic> toJson() => _$BoondResumesToJson(this);
}

@JsonSerializable()
class BoondResumesData {
  String id;
  String type;

  BoondResumesData({
    required this.id,
    required this.type,
  });

  factory BoondResumesData.fromJson(Map<String, dynamic> json) =>
      _$BoondResumesDataFromJson(json);

  Map<String, dynamic> toJson() => _$BoondResumesDataToJson(this);
}
