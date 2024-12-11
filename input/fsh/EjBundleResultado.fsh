Instance: EjBundleResultado
InstanceOf: BundleResultado
Usage: #Example
Title: "Ejemplo Bundle resultado"
Description: "Ejemplo de estructura de un perfil Bundle para la resutltado de biopsia"

* meta.lastUpdated = "2024-05-20T14:15:00-03:00"
//* identifier.system = ""
* identifier.value = "bundleResult"  
* type = #document

* timestamp = "2024-05-28T22:12:21Z"

//documento
* entry[entryDocumento].fullUrl = "urn:uuid:7e1e2f8d-49ac-4958-b2e8-df7fe3dc9a43"
* entry[entryDocumento].resource = 7e1e2f8d-49ac-4958-b2e8-df7fe3dc9a43
//* entry[entryDocumento].resoruce.meta.profile = "http://FALPBIOPSIA.com/StructureDefinition/DocumentoResultados"
//Paciente
* entry[entryPaciente].fullUrl = "urn:uuid:747e64e4-db06-48f3-9692-cf1bf30f0100"
* entry[entryPaciente].resource = 747e64e4-db06-48f3-9692-cf1bf30f0100
//Prestador
* entry[entryPrestador].fullUrl = "urn:uuid:a16b72c2-31f2-4a8b-82c5-89dddbc6c32b"
* entry[entryPrestador].resource = a16b72c2-31f2-4a8b-82c5-89dddbc6c32b
//Servicio Solicitante
* entry[entryServSolicitante].fullUrl = "urn:uuid:e0132bb4-f852-40d5-bafd-a1575ec61212"
* entry[entryServSolicitante].resource = e0132bb4-f852-40d5-bafd-a1575ec61212
//Condicion Clinica
* entry[entryCondicionClinica].fullUrl = "urn:uuid:7dcd7289-e637-4c9d-b933-eefdb43d6e67"
* entry[entryCondicionClinica].resource = 7dcd7289-e637-4c9d-b933-eefdb43d6e67
//Examen Macro
* entry[entryExamenMacroscopico].fullUrl = "urn:uuid:360e126c-e826-4c2a-883d-a3298cfcb0b3"
* entry[entryExamenMacroscopico].resource = 360e126c-e826-4c2a-883d-a3298cfcb0b3
//Descrpcion Micro
/* entry[entryDescripcionMicroscopica].fullUrl = "urn:uuid:9d8f7179-7ad8-4896-b0c0-4b960fc80ead"
* entry[entryDescripcionMicroscopica].resource = 9d8f7179-7ad8-4896-b0c0-4b960fc80ead
*/
// Diagnostico Inicial
* entry[entryDiagnosticoInicial].fullUrl = "urn:uuid:c1ab1686-ebbd-4ae2-977b-9a1ed3963382"
* entry[entryDiagnosticoInicial].resource = c1ab1686-ebbd-4ae2-977b-9a1ed3963382
// Diagnostico Final
* entry[entryDiagnosticoFinal].fullUrl = "urn:uuid:ac30bbf8-ab94-4586-8e7f-4c93b5b08471"
* entry[entryDiagnosticoFinal].resource = ac30bbf8-ab94-4586-8e7f-4c93b5b08471


Instance : 747e64e4-db06-48f3-9692-cf1bf30f0100
Title : "Ejemplo de Recurso Paciente"
Description: "Paciente ficticio nacional CI Chilena, sin sistema de validación \"http://regcivil.cl/Validacion/RUN\" ficticio, cuyo nombre se decribe mediante el oficial y uno social. La dirección tampoco es real."
InstanceOf : Paciente
Usage : #inline


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
* identifier.type.coding.display = "RUN"
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
* contact.extension.extension.valueIdentifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador"
* contact.extension.extension.valueIdentifier.type.coding.code = #01
* contact.extension.extension.valueIdentifier.type.coding.display = "RUN"
* contact.extension.extension.valueIdentifier.system = "http://regcivil.cl/Validacion/RUN"
* contact.extension.extension.valueIdentifier.value = "12.435.789-k"

* contact.telecom[0].system = #phone
* contact.telecom[=].value = "+56912345678"
* contact.telecom[=].use = #mobile
* contact.telecom[=].system = #email
* contact.telecom[=].value = "maria.gonzalez@example.com"
* contact.telecom[=].use = #home

* contact.telecom[0].extension[MyTelecomExtension].valueString = "ejemplo@correoaompañante.cl"


Instance: a16b72c2-31f2-4a8b-82c5-89dddbc6c32b
InstanceOf: PrestadorIndividual
Usage: #inline
Title: "PrestadorBunndleSoli"
Description: "Ejemplo de perfil prestador individual para ejemplo de bundle de documento de solicitud de biopsia"

* name.family = "Gonzaléz"
* name.given = "Pedro"
* birthDate = "1980-12-25" 


* identifier.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentificadores"
* identifier.value = "15.666.378-2"
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador"
* identifier.type.coding.code = #01
* identifier.type.coding.display = "RUN"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"

* extension[Mension].valueString = "NEFROLOGO" 

Instance : e0132bb4-f852-40d5-bafd-a1575ec61212
Title : "Ejemplo de Servicio Solicitante"
Description: "Ejemplo de datos del Servico Solicitante."
InstanceOf : ServicioSolicitante
Usage : #inline

* id = "identificador"
* identifier.value = "servicio3"

* specialty.coding.system = "http://snomed.info/sct"
* specialty.coding.code = #394582007 "Dermatology"

* name = "Servicio de dermatología"

* providedBy = Reference(urn:uuid:a4f08ee1-bdbf-485e-9c14-deb0ceeb1aa3)

Instance: a4f08ee1-bdbf-485e-9c14-deb0ceeb1aa3
InstanceOf: Organizacion
Usage: #inline 
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


Instance: 7dcd7289-e637-4c9d-b933-eefdb43d6e67
InstanceOf: CondicionClinica
Usage: #inline
Title: "EjCondicionClinica"
Description: "Ejemplo para condicion clinica"

* subject = Reference(urn:uuid:747e64e4-db06-48f3-9692-cf1bf30f0100)

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #confirmed

* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #problem-list-item

* code = http://snomed.info/sct#219006
// * code.coding.code = #219006
* code.coding.display = "Alcohol user"

* recordedDate = "2023-09-14"


Instance: 360e126c-e826-4c2a-883d-a3298cfcb0b3
InstanceOf: Muestra
Usage: #inline
Title: "EjMuestra"

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

* subject = Reference(urn:uuid:747e64e4-db06-48f3-9692-cf1bf30f0100)
* status = #available
* note.text = "Las células principales del estómago son:  zimogénicas, peptídicas,​ las cuales son un tipo de célula que forman parte de las glándulas gástricas del estómago, y están encargadas de la secreción de pepsinógeno, lipasa gástrica y quimosina." 

// Diagnostico inicial
Instance: c1ab1686-ebbd-4ae2-977b-9a1ed3963382
InstanceOf: DiagnosticoInicial
Usage: #inline
Title: "EjDiagnosticoBundle"

* subject = Reference(urn:uuid:747e64e4-db06-48f3-9692-cf1bf30f0100)

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #provisional

* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #encounter-diagnosis

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #1663004
* code.coding.display = "Tumor grade G2"

* recordedDate = "2023-08-23"


Instance: ac30bbf8-ab94-4586-8e7f-4c93b5b08471
InstanceOf: DiagnosticoFinal
Usage: #inline
Title: "EjDiagnosticoBundle"

* subject = Reference(urn:uuid:747e64e4-db06-48f3-9692-cf1bf30f0100)

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #confirmed

* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #encounter-diagnosis


* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #223003
* code.coding.display = "Tumor of body of uterus affecting pregnancy"

* recordedDate = "2023-08-25"


Instance: 7e1e2f8d-49ac-4958-b2e8-df7fe3dc9a43 
Description: "Ejemplo de documento de resultados de Biopsia"
InstanceOf: DocumentoResultados
Usage: #inline

* identifier.value = "Documento deq resultados"
* status = #final 
* type.coding.system = "http://loinc.org"
* type.coding.code =  #66121-5 
* type.coding.display = "Tissue Pathology biopsy report"

* relatesTo.code = #appends //este documento agrega informacion adicional al documento de destino

//un OID es un identificador para estándares, en este caso FHIR. los 1ros numeros representan el país, el resto representa una institucion
* relatesTo.targetIdentifier.system = "urn:oid:2.16.152.1.10.1" //identificador ficticio; el OID 2.16.152.1 es del MINSAL, para identificar a Chile
* relatesTo.targetIdentifier.value = "IPS-CL-2024-001"

* subject = Reference(urn:uuid:747e64e4-db06-48f3-9692-cf1bf30f0100)

* date = "2024-05-12"

* author = Reference(urn:uuid:a16b72c2-31f2-4a8b-82c5-89dddbc6c32b)

* event.period.start = "2024-04-13"
* event.period.end = "2024-07-23"

* section[0].title = "Servicio solicitante"
* section[=].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[=].code.coding.code = #00
* section[=].entry = Reference(urn:uuid:e0132bb4-f852-40d5-bafd-a1575ec61212)

* section[+].title = "Antecedentes Clínicos."
* section[=].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[=].code.coding.code = #01
* section[=].entry = Reference(urn:uuid:7dcd7289-e637-4c9d-b933-eefdb43d6e67)


* section[+].title = "Examen Macróscopico."
* section[=].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[=].code.coding.code = #02
* section[=].entry = Reference(urn:uuid:360e126c-e826-4c2a-883d-a3298cfcb0b3)

/* section[+].title = "DescripciónMicroscópica."
* section[=].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[=].code.coding.code = #04
* section[=].entry = Reference(urn:uuid:9d8f7179-7ad8-4896-b0c0-4b960fc80ead)
*/
* section[+].title = "Diagnóstico Inicial."
* section[=].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[=].code.coding.code = #06
* section[=].entry = Reference(urn:uuid:c1ab1686-ebbd-4ae2-977b-9a1ed3963382)

* section[+].title = "Diagnóstico Final."
* section[=].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[=].code.coding.code = #07
* section[=].entry = Reference(urn:uuid:ac30bbf8-ab94-4586-8e7f-4c93b5b08471)