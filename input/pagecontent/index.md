### Introducción 

Esta guía, en conjunto con todas las guías de implementación de la Fundación Arturo López Pérez, están basadas en el estándar [HL7 FHIR R4].
Ellas buscan modelar de manera interoperable el viaje del paciente, con el fin de realizar un seguimiento oportuno de los pacientes.

La guía de implementación de informe de biopsia, entrega los perfiles necesarios para generar documentos de solicitud de biopsia y resultados de biopsia, estos documentos representan la información que requeren llevar los documentos clínicos durante la biopsia, además de especificar el bundle para comunicarlos. 

### Cómo leer esta guía

En la parte superior puede ver la barra de menú, donde aparecen las diferentes secciones o páginas de esta guía:

* [Inicio](index.html): Entrega información general acerca de la guía.
* [Objetivos](objetivos.html): Describe los objeivos de la guía, su función y como un acercamiento a como debe ser usada.
* [Caso de Uso](casosdeuso.html): Explica como está estructurado el caso de uso, como funciona su operación y como se relaciona con los artefactos de la guía.
* [Artefactos](artifacts.html): Se encuentran agrupados los artefactos por tipo:
    * [Perfiles](artifacts.html#structures-resource-profiles): Perfiles IPS generados para la guía. 
    * [ValueSets](artifacts.html#terminology-value-sets): ValueSet creados para funcionamientos de la guía.
    * [CodeSystems](artifacts.html#terminology-code-systems): Codesystem creados para funcionamientos de la guía.
* [Ejemplos](artifacts.html#example-example-instances): Instancias creadas como ejemplo de los doferentes perfiles de la guía.
* [Historial de cambios](cambios.html): Historial de cambios o versiones que has sido realizados en la guía a lo largo del tiempo.

### Perfiles 

{% include globals-table.xhtml %}

Los perfiles que fueron diseñados en esta guía son:

  * [Bundle Resultado](StructureDefinition-BundleResultado.html)
  * [Bundle Solicitud](StructureDefinition-BundleSolicitud.html)
  * [Diagnóstico Final](StructureDefinition-DiagnosticoFinal.html)
  * [Diagnóstico Inicial](StructureDefinition-DiagnosticoInicial.html)
  * [Documento Solicitud Biopsia](StructureDefinition-DocumentoResultados.html)
  * [Documento Resultado Biopsia](StructureDefinition-DocumentoBiopsia.html)
  * [Muestra](StructureDefinition-Muestra.html)
  * [Procedimiento Quirúrgicos](StructureDefinition-ProcedimientosQuirurgicos.html)


### Dependencias

{% include dependency-table.xhtml %}

### Autores

  * Maritzu Collao
  * Esteban Fredes

### Análisis de versiones cruzadas

{% include cross-version-analysis.xhtml %}


### Declaracion de propiedad intelectual

{% include ip-statements.xhtml %}