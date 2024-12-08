Instance: EjPaciente
InstanceOf: PacienteFalp 
Usage: #Example
Title: "Example Patient"
Description: "An example Patient instance."


* extension[Sexobiologico].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSSexoBiologico"
* extension[Sexobiologico].valueCodeableConcept.coding = #1 "Hombre"

* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152 "Chile"


* name[NombreOficial].family = "Perez"
* name[NombreOficial].given[0] = "Juan"
* name[NombreOficial].use = #official

* birthDate = "1980-01-01"

* identifier.use = #secondary
* identifier.type = #01
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador"
* identifier.type.coding.display = "Rol Único Nacional o RUN"
* identifier.value = "30.696.558-7"

* active = true

* address.use = #home
* address.line[0] = "Calle 6 Norte, 52, pieza 802"

* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension.valueCodeableConcept.coding.code = #13101 "Santiago Centro"

* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL"
* address.district.extension.valueCodeableConcept.coding.code = #131 "Santiago"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"


* contact.relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact.relationship.coding.code = #N "Next of Kin"

* contact.address.use = #home
* contact.address.line[0] = "Gregorio Mira 123" 

* contact.address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* contact.address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* contact.address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"


* contact.name.use =  #official
* contact.name.family = "Gonzalez"
* contact.name.given[0] = "Maria"
 
* contact.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto"

// esto sería el slice de tutID obligatorio 
* contact.extension.extension.url = "tutId"
* contact.extension.extension.valueIdentifier.use = #official "Official"
* contact.extension.extension.valueIdentifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentificadores"
* contact.extension.extension.valueIdentifier.type.coding.code = #3
* contact.extension.extension.valueIdentifier.type.coding.display = "PPN"
* contact.extension.extension.valueIdentifier.system = "http://regcivil.cl/Validacion/RUN"
* contact.extension.extension.valueIdentifier.value = "12.435.789-k"

* contact.telecom[0].system = #phone
* contact.telecom[0].value = "+56912345678"
* contact.telecom[0].use = #mobile
* contact.telecom[0].system = #email
* contact.telecom[0].value = "maria.gonzalez@example.com"
* contact.telecom[0].use = #home

* contact.telecom[0].extension[MyTelecomExtension].valueString = "ejemplo@correoaompañante.cl"



// PRESTADOR INDIVIDUAL  //
Instance: EjPrestadorIndividual
InstanceOf: PrestadorFalp
Usage: #Example 
Title: "Example Prestador Individual"
Description: "An example Prestador individual instance." 

* id = "example-PrestadorIndividual"
* name.family = "Gonzaléz"
* name.given = "Pedro"
* birthDate = "1980-12-25" 


* identifier.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentificadores"
* identifier.value = "15.666.378-2"
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentificadores"
* identifier.type.coding.code = #2
* identifier.type.coding.display = "RNPI"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"

* extension[Mension].valueString = "NEFROLOGO" 

* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTituloProfesional"
* qualification[Cert].code.coding.code = #1
* qualification[Cert].code.text = "Certificado(s)"

* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSEspecialidadMedica"
* qualification[SubEsp].code.coding.code = #4
* qualification[SubEsp].code.text = "SubEspecialidad(es)"



// ORGANIZACIÓN // 
Instance: EjOrganizacion
InstanceOf: Organizacion
Usage: #Example 
Title: "Example-Organización"
Description: "An example Organización instance."  

* id = "example-Organizacion"
* extension[TipoSistemaSalud].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTipoSistemaSalud"
* extension[TipoSistemaSalud].valueCodeableConcept.coding = #1 "Público"

* identifier[0].system = "http://example.org/identifiers"
* identifier[0].value = "7777777-7"

//* extension[TipoEstablecimientosPublicos].url = "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoEstablecimientosPublicos"
* extension[TipoEstablecimientosPublicos].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTipoEstablecimientosPublicos"
* extension[TipoEstablecimientosPublicos].valueCodeableConcept.coding.code = #4 "Establecimientos Hospitalarios"

//* extension[NivelAtencion].url = "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSNivelAtencion"
* extension[NivelAtencion].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSNivelAtencion"
* extension[NivelAtencion].valueCodeableConcept.coding.code = #3 "Nivel Terciario"

//* extension[TipoPertinenciaEstab].url = "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoPertinenciaEstab"
* extension[TipoPertinenciaEstab].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTipoPertinenciaEstab"
* extension[TipoPertinenciaEstab].valueCodeableConcept.coding.code = #1 "Perteneciente al Sistema Nacional de Servicios de Salud"

* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension.valueCodeableConcept.coding.code = #13101 "Santiago Centro"

* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL"
* address.district.extension.valueCodeableConcept.coding.code = #131 "Santiago"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"




//2.Ejemplo de diágnostico
Instance : EjDiagnostico
Title : "Ejemplo de un Diagnóstico de cáncer."
Description: "Diagnóstico confirmado de  cáncer mediante una solicitud de biopsias."
InstanceOf : Diagnostico
Usage : #example


* id = "identificador"
* identifier.use = #official    //obligado

* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #SNO
* identifier.type.coding.display = "Serial Number"

* code = #100-8
* code.coding.system = "http://loinc.org"

* identifier.value = "12.676.445-k"

* effectiveDateTime = "2023-07-13T14:15:30-04:00"
* subject.display = "Paciente"
* status = #final
* issued = "2024-06-22T14:15:30-03:00"
* performer.display = "profesional"
* resultsInterpreter.display = "profesional"
* specimen.display = "Extracto de colón"
* result.display = "Se observa hipertrofia de la epidermis con presencia de queratinocitos displásicos,
La dermis muestra un infiltrado inflamatorio crónico con predominancia de linfocitos."
* conclusion = "La biopsia realizada en el tejido del paciente ha revelado la presencia de células malignas, compatibles con un carcinoma de tipo adenocarcinoma. Las características histológicas observadas sugieren que la neoplasia es de grado intermedio, con infiltración en tejidos adyacentes y evidencia de mitosis aumentada."
* presentedForm.title = "Resultado de Biopsia"
* presentedForm.title = "Descripción Microscopica"
* presentedForm.title = "Descripción Macroscopica"
* presentedForm.url = 	"http://hl7.org/fhir/ValueSet/languages"


// 7.Ejemplo de Muestra
Instance : EjMuestra
Title : "Ejemplo de muestra biológica para procedimiento."
Description: "Ejemplo de datos necesarios muestra de procedimiento."
InstanceOf : Specimen //cambiar pq lo dejaron mal
Usage : #example

* id = "identificador"
* identifier.use = #official    //obligado

* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #ACSN
* identifier.type.coding.display = "Accession ID"
* identifier.value = "13456"

* type.coding.system  = "http://terminology.hl7.org/CodeSystem/v2-0487"
* type.coding.code = #ABS
* type.coding.display = "Abscess"

* accessionIdentifier.system = "http://snomed.info/sct"
* accessionIdentifier.value = "imágenes"
* accessionIdentifier.type.coding.system = "http://snomed.info/sct"
* accessionIdentifier.type.coding.code = #111002
* accessionIdentifier.type.coding.display = "Parathyroid"

* receivedTime = "2024-06-22T14:15:30-03:00"
* parent.display = "Estómago"
* request.display = "servicio solicitante"
* collection
  * collector.display = "Profesional"
  * quantity.value = 1

* container.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0487"
* container.type.coding.code = #CST
* container.type.coding.display = "Fluid, Cyst"

* subject.display = "Paciente"
* status = #available
* note.text = "Las células principales del estómago son:  zimogénicas, peptídicas,​ las cuales son un tipo de célula que forman parte de las glándulas gástricas del estómago, y están encargadas de la secreción de pepsinógeno, lipasa gástrica y quimosina." 



// 8.Ejemplo de servicio Solicitante
Instance : EjServicioSolicitante
Title : "Ejemplo de Servicio Solicitante"
Description: "Ejemplo de datos del Servico Solicitante."
InstanceOf : ServicioSolicitante
Usage : #example

* id = "identificador"

* identifier.type.coding.system = "http://hl7.org/fhir/identifier-use" 
* identifier.type.coding.code = #official
* status = #active
* subject.display = "Paciente"
* priority = #urgent
* intent = #original-order

* requester.display = "organization"
* requester.display = "Hospital"
* performer.display = "profesional"
* performer.display = "Juan"
* locationReference.display = "localización"
* locationReference.display = "mentón"
* reasonReference.display = "diagnosticReport"

* supportingInfo.display = "informe de Muestra"
* specimen.display = "Muestra"




// 9. Ejemplo de Procedimientos Quirúrgico
Instance : EjProcedimientosQuirurgicos
Title : "Ejemplo de Procedimientos Quirúrgicos."
Description: "Ejemplo de datos de Procedimientos Quirúrgicos."
InstanceOf : ProcedimientosQuirurgicos
Usage : #example
//Identificación por Cédula Chilena
* id = "identificador"
* identifier.use = #official    //obligado


* identifier.value = "Procedimiento"
* subject.display = "Paciente"
* status = #preparation
* report.type = "diagnostico"
* report.display =  "Órgano piel"
* performedDateTime = "2024-06-22T14:15:30-03:00"
* note.text = "Las células neoplásicas son negativas para Citoqueratina 7, Citoqueratina 20, TTF-1, con positivas para p40.  Difuso, intenso.  Con estos hallazgos no es posible determinar si la lesión metastásica es de origen pulmonar o parotidea.  Debe correlacionada con imágenes radiológicas.  Estudio de PDL-1  FUE REALIZADO por Dra. Sanhueza en Clínica Santa María con clon22C3, con alta expresión y TPS mayor a 50 % (cercano al 80 %)."


// 10. Ejemplo de Ámbito CLínico
/*
Instance : EjAmbitoClinico
Title : "Ejemplo de ámbito Clínico."
Description: "descripción de datos correspondientes al Ámbito Clínico."
InstanceOf : AmbitoClinico
Usage : #example

* subject.display = "Paciente"
//* code.text = "cáncer de mama"
//* code.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSDiagnostico"
//* code.coding.code = #03
//* code.coding.display = "cáncer de mama"
* section.code.coding.system = "https://FALPBIOPSIA.uv.cl/fhir/CodeSystem/CSSDiagnostico"
* section.code = #03
* date = "2023-03-24"
* id = "CondicionClinica"
* title = "Descripción de datos correspondientes al ámbito Clínico"
//* clinicalStatus.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSCondicionClinica."
//* clinicalStatus.coding.code = #01
//* clinicalStatus.coding.display = "active"
* extension[CondicionClinica].valueCode = #01
* author.display = "Profesional"
//* verificationStatus.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSEstadoClinico"
//* verificationStatus.coding.code = #confirmed
//* verificationStatus.coding.display = "Confirmado"
* extension[SospechaDiagnosticada].valueCode = #confirmed
* type.text = "Ámbito Clínico"
* status = #final
*/