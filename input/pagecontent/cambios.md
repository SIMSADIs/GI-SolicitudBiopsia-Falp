## Historial de Cambios 

### Versión 1.0.1

Se realizaron diferentes cambios respecto a la versión 0.0.1, sobre todo en la utilziación de perfiles y terminologías, se eliminó el uso de extensiones que abarcaban elementos ya existentes en los recursos, se agregó otrs perfiles faltantes, se realizó un validación de los perfiles con la herramienta QA report y se agregó contenido a la guía. 

### Template

Se agregó una carpeta template, proveniente de HL7 Chile, para colocar los logos de HL7 Chile y la FALP, en la parte superior de la guía

  * Cambio id de guía: --> hl7.fhir.cl.falpbiopsia
  * Cambio nombre guía: --> FALPBIOPSIA
  * Cambio canonical: --> http://FALPBIOPSIA.com
  * cambio jurisdiction: --> urn:iso:std:iso:3166#CL "Chile"
  * Se agregó dependencia versión CORE CL: --> 1.9.1
  * Se agregó dependencia minsal.eis: dev
  * Se agregó dependencia falpcore: dev

### Páginas

Se agregaron diferentes pestañas en la barra superior de la guía, además de agregar contenido explicativo en estas.

  * [Inicio](index.html)
  * [Objetivos](objetivos.html)
  * [Casos de uso](casosdeuso.html)
  * [Historial de cambios](cambios.html)



### Perfiles

  * Se eliminó el perfil AmbitoClinico
  * Se movió el el peril ServicioSolicitante a GI CORE FALP
  * Crearon los perfiles CondiciónClinica, BundleSoli y BundleResultado


#### [DiagnosticoInicial](StructureDefinition-DiagnosticoInicial.html)

El perfil diagnóstico fue modificado en su recurso de dependencia, cambiando de un diagnosticReport a un recurso Condition. Por consiguiente, se cambio la totalidad de los elementos del perfil.

Además, fueron creados dos perfiles derivados de la primera versión del perfil diagnóstico: diagnóstico previo y diagnóstico final. 
Ambos perfiles se diferencian en el elemento verificationStatus.


#### DocumentoBiopsia

  * Se modificó la referencia del elemento subject y author, para referenciar la GI CORE CL.

#### PrestacionSalud

  * Extension [Referencia] eliminada (Referencia al paciente con elemento subject)

#### ServicioSolicitante

Se agregó el perfil, proveniente de la guía de biopsia, con el fin de permitir mayor compatibilidad

#### SolicitudProcedimiento

Cambio de recurso referencia en en el perfil. Procedure --> ServiceRequest

  * Extension [TipoProcedimiento] --> elemento [code]
    * code from http://hl7.org/fhir/ValueSet/procedure-code
  * Extension [Observacion] --> elemento [note]
  * Extension [Referencia] eliminada (Referencia al paciente con elemento subject)

### Extensiones

Se realizaron diferentes cambios en las extensiones

  * Se eliminaron las extensiones: Genero, MyTelecomExtension, fechaDiagnóstico, TeminoClinico, SeveridadDiagnostico, Referencia

### Terminologías 

#### CodeSystem y ValueSet

Se agregaron elementos a la meta a todos los CodeSystems y ValueSets 

  * elementos: jurisdiction, version y status

### Ejemplos

#### Ejemplo paciente

  * Se eliminó el elemento meta.profile, que referenciaba a otro perfil
  * Se cambio el binding terminloógico para el elemento identifier.type.coding.system: --> https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador. Por consiguiente se cambió el código y display del elemento type: #PPN --> #01 ; "Passport Number" --> "RUN"
  * Se cambió el identifier.value: "P102145874" --> "30.696.558-7"
  * Se cambió el binding terminológico del elemento address.state.extension.valueCodeableConcept.coding.system: --> https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl
  * Se eliminó la repetición de slice "tutId"
  * Se eliminó extension MyTelecomExtension

#### Ejemplo PrevisionSalud

  * Se eliminó extension Referencia

#### Ejemplo SolicitudProcedimiento

  * Se eliminó extension TipoProcedimiento y Observacion 
  * Se agregó elemento code y elemento note

#### Ejemplo ReporteProcedimiento

  * Se eliminó extension Referencia

#### Ejemplo DiagnosticoPrevio

Se realizaron cambios en todo el ejemplo, debido a todos los cambios del perfil

#### Ejemplo PrestadorIndividual

  * Se cambio el binding terminloógico para el elemento identifier.type.coding.system: --> https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador. Por consiguiente se cambió el código y display del elemento type: #MD --> #01 ; "Medical License number" --> "RUN"
  * Se cambió el identifier.value: "akxpkx" --> "15.666.378-2"

#### Ejemplo ServicioSolicitante

Se agregó ejemplo para este perfil 
