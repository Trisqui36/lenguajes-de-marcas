# Sesión 1. Introducción práctica a XML

## 1. Preparación del entorno

He instalado la extensión **XML de Red Hat** para disponer de resaltado,
formateo y detección de errores en Visual Studio Code.

![Extensión XML instalada](img/01-extension-xml.png)

## 2. Investigación inicial

¿Qué significa XML? 
significa eXtensible Markup Language

¿Por qué se considera un lenguaje extensible?
porque XML permite crear las  etiquetas que quieras adaptadas a las necesidades de la información que quieras representar.

 ¿Cuál es la diferencia principal entre XML y HTML?
XML se utiliza principalmente para almacenar y transportar datos y te permite crear etiquetas propias

HTML se utiliza para estructurar y mostrar contenido en páginas web pero utilizando etiquetas predefinidas 

Escribe tres usos reales de XML
Intercambio de datos
Configuración de programas
Almacenamiento y transmisión de información

 ¿Qué significa que un documento sea legible por personas y máquinas?
Significa que la información está organizada de una forma que puede ser entendida por una persona al leerla, pero también puede ser procesada automáticamente por un programa.

¿Por qué XML no debe considerarse automáticamente una base de datos?
Porque XML es un formato para representar y estructurar información, mientras que una base de datos es un sistema diseñado para almacenar, organizar, consultar y gestionar datos de forma eficiente.
total no es una pero se puede usar como una

### Fuentes consultadas

- [web 1](https://www.reddit.com/)
- [web 2](https://discord.com/)

## 3. Mi primer documento XML

![Primer XML abierto en el navegador](file:///C:/Users/sergi/Desktop/Nueva%20carpeta%20(2)/sesion-01-introduccion-xml/primer-documento.xml.txt)

<?xml version="1.0" encoding="UTF-8"?>
<videojuego>
  <titulo>Hollow Knight</titulo>
  <desarrolladora>Team Cherry</desarrolladora>
  <genero>Metroidvania</genero>
  <precio moneda="EUR">14.99</precio>
</videojuego>


elemento raiz: videojuego
elementos:titulo.desarrolladora,genero,precio,moneda
atributo:precio 14.99
relacion:videojuego y titulo son etiqueta padre e hija
elementos hermanos:genero desarrolladora titulo precio
