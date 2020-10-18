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

// import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'boond-meta.g.dart';

@JsonSerializable()
class BoondMeta {
  String version;
  bool isLogged;
  String language;

  BoondMeta({
    this.version,
    this.isLogged,
    this.language,
  });

  factory BoondMeta.fromJson(Map<String, dynamic> json) =>
      _$BoondMetaFromJson(json);

  Map<String, dynamic> toJson() => _$BoondMetaToJson(this);
}
