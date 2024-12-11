/*
Extension: Documento1
Id: Documento1
Title: "Extension Documento"
Description: "Extension de códigos para documento."
Context: Composition
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSDocumento1 (required)
*/
/*Extension: Identificador
Id: Identificador
Title: "Extension de identificador"
Description: "Extension de códigos para identificador."
Context: PacienteFalp
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSIdentificador (required)*/
/*
Extension: EstadoClinico
Id: EstadoClinico
Title: "Extension de estado clínico."
Description: "Extension de códigos para Estado Clínico."
Context: AmbitoClinico
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSEstadoClinico (required)

Extension: SospechaDiagnosticada
Id: SospechaDiagnosticada
Title: "Extension de Sospecha Diagnostcada"
Description: "Extension de códigos para sospecha Diagnosticada."
Context: AmbitoClinico
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSSospechaDiagnosticada (required)

Extension: Telefono1
Id: Telefono1
Title: "Extension de contacto"
Description: "Extension de códigos para contacto."
Context: PrestadorFalp
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSTelefono (required)

Extension: Sitio1
Id: Sitio1 
Title: "Extension del Sitio del Cuerpo."
Description: "Extension de códigos para sitio del cuerpo."
Context: Muestra
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSSitioCuerpo (required)

Extension: ServicioSolicitante1
Id: ServicioSolicitante1
Title: "Extension del Servicio Solicitante."
Description: "Extension de códigos para Servicio Solicitante."
Context: Muestra
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSServicioSolicitante (required)
*/
/*Extension: Asignacion1
Id: Asignacion1
Title: "Extension de asignación"
Description: "Extension de códigos para asignación."
Context: Muestra
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSAsignacion (required)
*/

// Extensiones de la CORE, están aqui mientras se intenta subir los archivos un servidor
Extension: Mension
Id: Mension 
Title: "Nombre de la mensión de su titulo profesional"
Description: "Nombre de la mensión de su titulo profesional si corresponde"
Context: Practitioner
* value[x] only string 
* valueString 

Extension: SexoBiologico
Id: SexoBiologico
Title: "Sexo biólogico"
Description: "Sexo asignado al nacer "
Context: Patient 
* value[x] only CodeableConcept
  * ^short = "Sexo biólogico"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSSexoBiologico 
  * ^binding.description = "Tabla de Sexo biólogico"

Extension: TipoPertinenciaEstab	
Id: TipoPertinenciaEstab	
Title: "Pertinencia SNSS"
Description: "Atributo o característica del establecimiento relacionado con la relación de jurisdicción establecia con el Sistema Nacional de Servicio de Salud"
Context: Organizacion 
* value[x] only CodeableConcept
  * ^short = "Pertinencia SNSS"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoPertinenciaEstab 
  * ^binding.description = "Atributo o característica del establecimiento relacionado con la relación de jurisdicción establecia con el Sistema Nacional de Servicio de Salud"

Extension: NivelAtencion
Id: NivelAtencion
Title: "Nivel de Atención"
Description: "Nivel de atención que se asigna según la cobertura y complejidad"
Context: Organizacion
* value[x] only CodeableConcept
  * ^short = "Nivel de Atencion"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSNivelAtencion
  * ^binding.description = "Nivel de atención que se asigna según la cobertura y complejidad"

Extension: TipoEstablecimientosPublicos
Id: TipoEstablecimientosPublicos
Title: "Tipos de Establecimientos Publicos"
Description: "Tipos de Establecimientos Publicos"
Context: Organizacion
* value[x] only CodeableConcept
  * ^short = "Tipos de Establecimientos Publicos"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoEstablecimientosPublicos 
  * ^binding.description = "Tipos de Establecimientos Publicos"

Extension: TipoSistemaSalud
Id: TipoSistemaSalud
Title: "Tipos de Sistemas de Salud"
Description: "Tipos de Sistemas de Salud"
Context: Organization 
* value[x] only CodeableConcept
  * ^short = "Tipos de Sistemas de Salud"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoSistemaSalud
  * ^binding.description = "Tipos de Sistemas de Salud"

Extension: Nacionalidad
Id: Nacionalidad
Title: "Nacionalidad"
Description: "País de nacimiento y/o que haya sido nacionalizado"
Context: Patient
* value[x] only CodeableConcept
  * ^short = "Nacionalidad"
* valueCodeableConcept from https://hl7chile.cl/fhir/ig/clcore/ValueSet/CodPais
  * ^binding.description = "Tabla de Nacionalidad"

Extension: MyTelecomExtension
Id: MyTelecomExtension
Title: "Contacto del acompañante"
Description: "Contacto del acompañante del paciente"
Context: Patient.contact.telecom
* value[x] only string