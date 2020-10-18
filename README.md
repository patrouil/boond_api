# boond_api

This API have is designed to send JSON quesry to a BoondManager worksapce.

For details Boond API documentation see
https://doc.boondmanager.com/api-externe/ for Boond API details

## Guidelines

Use **BoondAuth** to obtain access credentials.
There are two HTTP authentication methods : 
- basic authentication based on user/password.
- X-Jwt-Client-BoondManager base on the Client's key and token.

Please read this [documentation](https://support.boondmanager.com/hc/fr/articles/360029994751-Authentication) for details.

Use this credential to create a **BoondApi** instance access to your Boond Workspace.

This release provides interfaces to access to : 
- actions
- application/current-user
- application/dictionary
- candidates
- documents

##Acknowledgments.

Boondmanager name and Boondmanager logo are trademarks of [Wish SAS](https://www.boondmanager.com/mentions-legales/) 

