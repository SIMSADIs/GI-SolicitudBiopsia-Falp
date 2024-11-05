Profile: PrestadorFalp
Parent: CorePrestadorCl
Id: PrestadorFalp
Title: "Prestador Indivual"
Description: "Perfil del Prestador Individual"

* name 1..1 MS
* birthDate 
  * ^short = "Fecha de nacimiento del prestador"
  * ^definition = "Fecha de nacimiento del prestador" 
* extension contains https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises named Nacionalidad  0..* 
* identifier  1..* 
* address only cl-address
* address
  * state 1..1 

* extension contains Mension named Mension 0..1 

* qualification[Cert] 0..*
  * identifier.value = "cert"
* qualification[Esp] 0..*
  * identifier.value = "esp"
* qualification[SubEsp] 0..1
  * identifier.value = "subesp"