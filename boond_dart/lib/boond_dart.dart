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

/// Support for doing something awesome.
///
/// More dartdocs go here.
library boond_dart;

/// Composed of three subsets.
///
/// Authentication and Network services
export 'net/boond_api_error.dart';
export 'net/boond_auth.dart';
export 'net/boond_api.dart';

/// Shared data definitions among business data.
export 'entities/boond_included.dart';
export 'entities/boond_meta.dart';
export 'entities/boond_relationship.dart';

/// application dictionnary
export 'entities/application_country.dart';
export 'entities/application_dictionary.dart';
export 'entities/application_currentuser.dart';

/// business data definition
export 'entities/candidate_body.dart';
export 'entities/actions_entity.dart';
export 'entities/documents_body.dart';
export 'entities/opportunity_entity.dart';
export 'entities/companies_entity.dart';
export 'entities/contacts_entity.dart';
