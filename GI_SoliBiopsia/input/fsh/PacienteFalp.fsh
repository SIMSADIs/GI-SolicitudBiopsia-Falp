Profile: PacienteFalp
Parent: CorePacienteCl
Id: PacienteFalp
Title: "Paciente"
Description: "Perfil de Paciente"

* extension contains SexoBiologico named Sexobiologico 1..1 
* extension[SexoBiologico].valueCodeableConcept 1..1
// * extension contains SexoBiologico named Sexobiologico 1..1 
* extension contains Nacionalidad named Nacionalidad 1..*
* name 1..1 
* birthDate 1..1
* identifier 1..* 
* address
* address only cl-address
  * extension[Geolocalizacion] 0..1
  * city 1..1
  * district 1..1
  * state 1..1 
* contact
* contact.extension[IdContacto] 1..* 
* contact.name.family 1..1
* contact.name.given 1..1
//* contact.extension contains TutId 1..1
//* contact.extension[TutId].value[x] only Identifier
* contact.relationship 1..1
* contact.telecom 1..* 
* contact.telecom.value ^short = "Detalles de Contacto"
* contact.telecom.value ^definition = "Detalles del Contacto, comunmente el o los mas usados (Ej: Teléfono fijo, móvil, email, etc.)"
* contact.telecom.[MyTelecomExtension].valueString 
* contact.address only cl-address
* contact.address
  * state 1..1