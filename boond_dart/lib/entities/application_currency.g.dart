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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppDictCurrency _$AppDictCurrencyFromJson(Map<String, dynamic> json) =>
    AppDictCurrency(
      id: (json['id'] as num?)?.toInt(),
      value: json['value'] as String,
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$AppDictCurrencyToJson(AppDictCurrency instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'symbol': instance.symbol,
    };
