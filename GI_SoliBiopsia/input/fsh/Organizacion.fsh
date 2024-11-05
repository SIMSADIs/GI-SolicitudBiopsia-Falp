Profile:  Organizacion
Parent: CoreOrganizacionCl
Id: Organizacion
Title: "Organzación en Salud"
Description: "Perfil de la Organización de Salud"

* extension contains TipoSistemaSalud named TipoSistemaSalud 1..1
* identifier 1..*
* extension contains TipoEstablecimientosPublicos named TipoEstablecimientosPublicos 1..1 
* extension contains NivelAtencion named NivelAtencion 1..1 
* extension contains TipoPertinenciaEstab named TipoPertinenciaEstab 1..1
* address only cl-address
  * extension[Geolocalizacion] 0..1
  * city 1..1
  * district 1..1
  * state 1..1 