<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Nochecita de Disney+</title>
                <link rel="stylesheet"  href="estilo.css"/>
            </head>
            <body>
                <header>
                    <h1>Nochecita de Disney+</h1>
                    <p>Una noche de cine y fantasía</p>
                </header>
                <main>
                    <xsl:for-each select="catalogo/categoria">
                        <section>
                            <h2><xsl:value-of select="@nombre"/></h2>
                            <div class="galeria">
                                <xsl:for-each select="pelicula">
                                    <xsl:sort select="anio" data-type="number" order="descending"/>
                                    <article class="pelicula">
                                        <img class="cartel">
                                            <xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute>
                                            <xsl:attribute name="alt"><xsl:value-of select="titulo"/></xsl:attribute>
                                        </img>
                                        <div class="datos">
                                            <h3><xsl:value-of select="titulo"/></h3>
                                            <p class="anio"><xsl:value-of select="anio"/></p>
                                            <p class="duracion"><xsl:value-of select="duracion"/> minutos</p>
                                        </div>
                                        <details>
                                            <summary>Ver sinopsis</summary>
                                            <p class="sinopsis"><xsl:value-of select="sinopsis"/></p>
                                        </details>
                                        <details>
                                            <summary>Ver reparto</summary>
                                            <div class="reparto">
                                                <xsl:for-each select="reparto/actor">
                                                    <p><xsl:value-of select="."/></p>
                                                </xsl:for-each>
                                            </div>
                                        </details>
                                    </article>
                                </xsl:for-each>
                            </div>
                        </section>
                    </xsl:for-each>
                </main>
                <footer>
                    <p>© Nochecita de Disney+ - Tu rincón de cine</p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
