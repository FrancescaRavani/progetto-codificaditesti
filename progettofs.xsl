<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"></xsl:value-of>
                </title>
                <link rel="stylesheet" type="text/css" href="style.css"></link>
            </head>
            <body>
                <div class="titolo">
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"></xsl:value-of>
                </div>
                <div class="nav">
                    <li>
                        <a href="#edizione"> Edizione </a>
                    </li>
                    <li>
                        <a href="#artom"> Artom </a>
                    </li>
                    <li>
                        <a href="#pubblicazione"> Pubblicazione </a>
                    </li>
                    <li>
                        <a href="#storia"> Storia </a>
                    </li>
                    <li>
                        <a href="#materiale"> Materiale </a>
                    </li>
                </div>

                <hr/>
                <div class="container" id="edizione">
                    <h1> Informazioni sull'edizione dell'opera </h1>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:edition"></xsl:value-of>
                    <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt"></xsl:apply-templates>
                </div>
                <hr/>

                <div class="container" id="artom">
                    <h1> Emanuele Artom </h1>
                    <div class="info">
                        <p> Emanuele Artom nacque ad Aosta nel 1915 in una colta famiglia della borghesia ebraica torinese. Fu un partigiano e storico italiano di origine ebraica, combattente della Resistenza.
                        Cominciò ad avvicinarsi all'antifascismo verso la fine degli anni Trenta, aderendo al Partito d'Azione nel 1943. All'indomani dell'8 settmebre
                        si unì ai partigiani con un nome di copertura: Eugenio Ansaldi. Nel 1944 i tedeschi cominciarono il grande rastrellamento contro i partigiani e 
                        il 25 marzo Emanuele venne catturato. Scoperto essere ebreo fu torturato e subì indicibili sevizie. Il 31 marzo fu trasferito alle Carceri Nuove di 
                        Torino e una settimana dopo morì a seguito delle torture subite. </p>
                    </div>
                </div>
                <hr/>

                <div class="container" id="pubblicazione">
                    <h1> Informazioni sulla pubblicazione </h1>
                    <p> L'edizione digitale dell'opera è consultabile presso <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:publisher"></xsl:value-of></p>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:date"></xsl:value-of>
                </div>
                <hr/>
                <div class="container" id="storia">
                    <h1> Informazioni sulla storia </h1>
                    <p><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history/tei:summary"></xsl:value-of></p>
                    <p><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history/tei:origin"></xsl:value-of></p>
                    <p><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history/tei:acquisition"></xsl:value-of></p>
                </div>
                <hr/>
                <div class="container" id="materiale">
                <h1> Informazioni sul materiale </h1>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition/tei:p"></xsl:value-of>
                    <p> Il manoscritto è composto da <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:extent"></xsl:value-of> di <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support"></xsl:value-of>.
                    Sono scritti in <xsl:value-of select="tei:TEI/tei:teiHeader/tei:profileDesc/tei:langUsage/tei:language"></xsl:value-of>.</p>
                </div>

                <div class="legenda">
                    <h3> LEGENDA </h3>
                    <li id="rosso"> Persone: rosso </li>
                    <li id="viola"> Luoghi: viola </li>
                    <li id="verde"> Unclear: sottolineatura verde </li>
                    <li id="expan"> Espansione di un'abbreviazione: sottolineatura wavy </li>
                    <li id="corr"> Correzione di una parola: sottolineatura double </li>
                </div>

                <div class="immagine">
                    <div class="img">
                        <img src="immagini/130.jpg" id="130"></img>
                    </div>
                    <div class="imgtesto">
                        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:ab[@n=130]"></xsl:apply-templates>
                    </div>
                </div>
                <div class="immagine">
                    <div class="img">
                        <img src="immagini/131.jpg" id="131"></img>
                    </div>
                    <div class="imgtesto">
                        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:ab[@n = 131]"></xsl:apply-templates>
                    </div>
                </div>
                <div class="immagine">
                    <div class="img">
                        <img src="immagini/132.jpg" id="132"/>
                    </div>
                    <div class="imgtesto">
                        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:ab[@n = 132]"></xsl:apply-templates>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

    <!--respStmt-->
    <xsl:template match="tei:respStmt">
        <p>
           <xsl:value-of select="tei:resp"></xsl:value-of>
           <b><xsl:value-of select="tei:name"></xsl:value-of></b>
        </p>
    </xsl:template>

    <!--lb-->
    <xsl:template match="tei:TEI/tei:text/tei:body/tei:ab/tei:lb">
      <br/>
        <xsl:element name="span">   
            <xsl:attribute name="class"></xsl:attribute>
            <xsl:value-of select="@n" /> -
        </xsl:element>
    </xsl:template>

    <!-- Nomi di persona -->
    <xsl:template match="tei:persName"> 
        <xsl:element name="span">
            <xsl:attribute name="class">persona</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
	</xsl:template>

    <!-- Nomi di luogo -->
    <xsl:template match="tei:placeName"> 
        <xsl:element name="span">
            <xsl:attribute name="class">luogo</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
	</xsl:template>

    <!-- Cancellazioni -->
    <xsl:template match="tei:del"> 
        <xsl:element name="span">
            <xsl:attribute name="class">cancellazioni</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
	</xsl:template>

    <!-- Unclear -->
    <xsl:template match="tei:unclear"> 
        <xsl:element name="span">
            <xsl:attribute name="class">unclear</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
	</xsl:template>

    <!--expan-->
    <xsl:template match="tei:expan"> 
        <xsl:element name="span">
            <xsl:attribute name="class">expan</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
	</xsl:template>

    <!--corr-->
    <xsl:template match="tei:choice/tei:corr[parent::tei:choice/parent::tei:placeName]"> 
        <span class="corr"> 
            <xsl:apply-templates/>
        </span>
    </xsl:template>

</xsl:stylesheet>
