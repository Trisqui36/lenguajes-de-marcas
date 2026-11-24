# NochesitaDisney <!--   Si,esta con S y no C   -->

Crea desde cero una cartelera web con tu propia selección de películas de Disney+. 
Tú eliges las películas, las categorías, la estructura del XML y el diseño de la página. 
El catálogo se guarda en XML y la hoja XSLT lo transforma en una página HTML con tus estilos CSS.


## Para hacer la transformación

1. De primeras hay que crear los tres archivos(xsl, xml y css(en la misma carpeta que si no nada va a funcionar))

2. Como ver la pagina:
   - Se abre una terminal donde tengas los archivos y ejecutas el siguiente comando:
   xsltproc -o catalogo-web.html cartelera.xsl catalogo.xml(obviamente si los archivos tienen otro nombre habra que poner esos nombres) pero definitivamente necesitas meter en el comando el xml,xsl y html con el nombre que quieras.




## En que categorias se dividen las películas
El catálogo divide las pelis entre:
- Família y fantasía
- Animación
- Anime
- Ciencia ficción y aventura

Estan separadas por unas lineas. 

## Cómo se ordenan
- Dentro de las categorias se ordenan de la más actual a la más antigua.

# Fin