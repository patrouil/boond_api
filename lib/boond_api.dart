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

/// @nodoc
/// Boond API Library
///
/// Read https://doc.boondmanager.com/api-externe/
/// for Boond API details
library boond_api;

/// Composed of three subsets.
///
/// Authentication and Network services
export 'net/BoondApiError.dart';
export 'net/BoondAuth.dart';
export 'net/BoondApi.dart';

/// Shared data definitions among business data.
export 'entities/boond-included.dart';
export 'entities/boond-meta.dart';
export 'entities/boond-relationship.dart';

/// application dictionnary
export 'entities/application-country.dart';
export 'entities/application-dictionnary.dart';
export 'entities/application-currentuser.dart';

/// business data definition
export 'entities/candidate-body.dart';
export 'entities/actions-entity.dart';
export 'entities/documents-body.dart';
