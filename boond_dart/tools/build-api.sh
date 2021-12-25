#!/bin/bash
#
# Copyright (c) patrouil (2020).This work is licensed under the
# Creative Commons Attribution-ShareAlike 4.0 International License.
# To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# This script is used to generate draft Dart classes.
# use it that way.
# In youe Boond sand box enter sample data.
# Use crul underneath to retreive the data and generate Json results.
# use quicktype (https://quicktype.io/) to generate basic dart code
# analyse results and copy the final version in lib/entities
# update net/boond_api.dart
#

QUICKCMD=quicktype
QUICKARGS="--coders-in-class --src-lang json"

BOONDURL=https://sandboxui.boondmanager.com
BOONDUSER=boondlogin
BOONDPWD=boondpassword

generateFromSamples() {
  # shellcheck disable=SC2045
  for f in  `ls examples/*.json`
  do
    b=`basename $f `
    rootName=$(echo "$b" | cut -f 1 -d '.')
    $QUICKCMD $QUICKARGS  --lang dart --from-map  -o generated/${rootName}.dart $f
  done
}

# curl -v --basic --get --netrc ${BOONDURL}/api/companies/3/information -oexamples/CompaniesInfo.json


curl -v --basic --get --netrc "${BOONDURL}/api/contacts?keywordsType=emails&keywords=marie.dupond%40acme.com" -oexamples/ContactsSearch.json

#  https://ui.boondmanager.com/api/contacts?keywordsType=emails&keywords=marie.dupond%40acme.com

exit 0


curl -v --basic --get --netrc ${BOONDURL}/api/contacts/5 -oexamples/ContactsGet.json
curl -v --basic --get --netrc ${BOONDURL}/api/contacts/5/information -oexamples/ContactsInfo.json
curl -v --basic --get --netrc ${BOONDURL}/api/contacts/5/actions -oexamples/ContactsActions.json
curl -v --basic --get --netrc ${BOONDURL}/api/contacts -oexamples/ContactsSearch.json

curl -v --basic --get --netrc ${BOONDURL}/api/companies/3 -oexamples/CompaniesGet.json
curl -v --basic --get --netrc ${BOONDURL}/api/companies/3/information -oexamples/CompaniesInfo.json
curl -v --basic --get --netrc ${BOONDURL}/api/companies/3/contacts -oexamples/CompaniesContacts.json
curl -v --basic --get --netrc ${BOONDURL}/api/companies/3/actions -oexamples/CompaniesActions.json
curl -v --basic --get --netrc ${BOONDURL}/api/companies -oexamples/CompaniesSearch.json

curl -v --basic --get --netrc ${BOONDURL}/api/opportunities?flags=1 -oexamples/OpportunitiesFlag.json
curl -v --basic --get --netrc ${BOONDURL}/api/opportunities -oexamples/OpportunitiesSearch.json
curl -v --basic --get --netrc ${BOONDURL}/api/opportunities/2 -oexamples/OpportunitiesGet.json
curl -v --basic --get --netrc ${BOONDURL}/api/opportunities/2/information -oexamples/OpportunitiesInfo.json
curl -v --basic --get --netrc ${BOONDURL}/api/opportunities/2/attached-flags -oexamples/OpportunitiesAttachedFlags.json
curl -v --basic --get --netrc ${BOONDURL}/api/opportunities/2/actions -oexamples/OpportunitiesActions.json


#generateFromSamples

exit 0
#
# Candidated
#curl -v --basic --request PUT --netrc -H "x-Debug-Boondmanager=true" -H "Content-Type: application/json"  --data @debug-put.json ${BOONDURL}/api/candidates/2/information
#curl -v --basic --get --netrc ${BOONDURL}/api/application/current-user -oexamples/CurrentUser.json
#curl -v --basic --get --netrc ${BOONDURL}/api/candidates -oexamples/CandidateSearch.json
#curl -v --basic --get --netrc ${BOONDURL}/api/candidates/5/information -oexamples/CandidateInformation.json
#curl -v --basic --get --netrc ${BOONDURL}/api/candidates/default -oexamples/CandidateDefault.json
#curl -v --basic --get --netrc ${BOONDURL}/api/candidates/5/actions -oexamples/CandidateActions.json
#
# Application
#curl -v --basic --get --netrc ${BOONDURL}/api/application/dictionary -oexamples/DictionnaryGet.json
#
# Actions
#curl -v --basic --get --netrc ${BOONDURL}/api/actions -oexamples/ActionsSearch.json
#curl -v --basic --get --netrc ${BOONDURL}/api/actions/default -oexamples/ActionsDefault.json
#curl -v --basic --get --netrc ${BOONDURL}/api/actions/47 -oexamples/ActionsGetter.json
#curl -v --basic --get --netrc ${BOONDURL}/api/actions/47/attached-flags -oexamples/ActionsAttachedFlags.json

