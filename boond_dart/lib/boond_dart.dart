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

// TODO: Export any libraries intended for clients of this package.
