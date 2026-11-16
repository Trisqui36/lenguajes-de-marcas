### 1. ¿Qué significan las siglas XSLT?
    eXtensible Stylesheet Language Transformations

### 2. ¿Para qué se utiliza XSLT?
    Para pasar documentos XML a otros formatos

### 3. ¿Qué relación existe entre XML, XPath y XSLT?
    Dependen unos de otros para colaborar y funcionar,son como un equipo 
    XML guarda datos XPath los busca y XSLT los procesa y trasforma 

### 4. ¿Qué tipos de documentos se pueden generar mediante una transformación XSLT?
    Documentos XML, HTML/XHTML, documentos de texto sin formato y de formas
    más engorrosas incluso un PDF

### 5. ¿Qué es una hoja de estilos XSLT?
    Es lo que define el estilo visual,la apariencia y el formato de la web 

### 6. ¿Qué función tiene un procesador XSLT?
    Leer un documento XML y una hoja de estilos XSLT para generar como resultado
    un documento con esas reglas  

### 7. ¿Qué extensión suelen utilizar los archivos XSLT?
    **.xslt** seria la especifica pero se puede guardar en formato **xsl** 
    en principio la difetencia solo es aclarar que contiene el archivo o no

### 8. ¿Qué es una plantilla en XSLT?
    Es un conjunto de reglas e instrucciones que muestra al procesador como transformar o mostrar un parte del documento XML

### 9. ¿Para qué sirve el elemento `xsl:stylesheet`?
    Es el elemento raiz de una hoja de estilos XSLT

### 10. ¿Para qué sirve `xsl:template`?
    Impone reglas a la trasformacion como que nodos de un documento XML se se trasformen en otro formato

### 11. ¿Qué función tiene `xsl:value-of`?
    Te saca el valor de un nodo especifico y lo escribe en el documento de salida 

### 12. ¿Para qué se utiliza `xsl:for-each`?
    Se utiliza para iterar un conjunto de nodos y ir tratando segun las dicten las instrucciones

### 13. ¿Qué función tiene `xsl:output`?
    Dictar el formato y las caracteristicas del documento saliente de la transformación 

### 14. ¿Qué diferencia existe entre los atributos `match` y `select`?
    Match dicta un patrón para ver que nodos activan una plantilla 
    Select analiza una expresion y elige que nodos procesar o que valor extraer 

### 15. ¿Por qué es necesario utilizar XPath dentro de XSLT?
    por que si no se utilizara encontrar datos seria un infierno ya que XSLT no cuenta con absolutamnete nada para hacer consultas y poder buscar dentro del archivo 

### 16. ¿Cuál es la diferencia entre utilizar CSS y utilizar XSLT sobre un documento XML?
    CSS solo cambia la apariencia y el estilo,es como un maquillaje 
    XSLT por otro lado transforma el documento reordenando,filtrando,eliminando o convirtiendo datos de XML a otros formatos distintos 

### 17. Busca un ejemplo sencillo de una hoja XSLT que genere HTML a partir de XML. Incluye el código y explica brevemente qué hace.
```
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="estilo.xslt"?>

<catalogo>
  <libro>
    <titulo>Dragon ball 21</titulo>
    <autor>Akira Toriyama</autor>
    <anio>1984</anio>
  </libro>
  <libro>
    <titulo>1984</titulo>
    <autor>George Orwell</autor>
    <anio>1949</anio>
  </libro>
</catalogo>
```
y esto es la hoja de estilos 
```
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://w3.org">

  <!-- Define que la salida será un documento HTML -->
  <xsl:output method="html" encoding="UTF-8"/>

  <!-- Plantilla principal que coincide con la raíz del XML -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Catálogo de Biblioteca</title>
      </head>
      <body>
        <h2>Lista de Libros</h2>
        <table border="1">
          <tr>
            <th>Título</th>
            <th>Autor</th>
            <th>Año</th>
          </tr>
          <!-- Bucle que recorre cada etiqueta <libro> -->
          <xsl:for-each select="biblioteca/libro">
            <tr>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="anio"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
```


## Fuentes consultadas

- [Web introductoria a XSLT](https://www.w3schools.com/xml/xsl_intro.asp)
- [Otra web guia](https://www.w3.org/TR/xslt-10/)