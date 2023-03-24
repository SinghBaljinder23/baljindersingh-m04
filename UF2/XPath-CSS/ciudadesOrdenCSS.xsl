<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="ciudadesOrden.css" />
				<title>Ejemplo XSLT</title>
			</head>
			<body>
				<h1> LISTA DE CIUDADES  </h1>
				<table>
					<tr>
						<td>Columna 1</td>
						<td>Columna 2</td>
						<td>Columna 3</td>
					</tr>
					<tr>
						<td>Fila 1, celda 1</td>
						<td>Fila 1, celda 2</td>
						<td>Fila 1, celda 3</td>
					</tr>
					<tr>
						<td>Fila 2, celda 1</td>
						<td>Fila 2, celda 2</td>
						<td>Fila 2, celda 3</td>
					</tr>
				</table>
		 		<xsl:apply-templates select="//ciudad" >
          			<xsl:sort select="nombre" order="descending" />
				</xsl:apply-templates>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="ciudad">
		 <h3> <xsl:value-of select="nombre" /> </h3>
	</xsl:template>
</xsl:stylesheet>