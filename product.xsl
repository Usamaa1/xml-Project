<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="productsList">
        <html lang="en">
            <head>
                <title>xslt</title>
                <link rel="stylesheet" href="style.css" />
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Product Name</th>
                        <th>Product Price</th>
                        <th>Product Discount</th>
                        <th>Product Rating</th>
                    </tr>

                    <!-- <xsl:for-each select="product">
            <xsl:sort select="productName"></xsl:sort>

            <xsl:if test="productRatting = 2.8">
            <tr>
            <td><xsl:value-of select="productName"></xsl:value-of></td>
            <td><xsl:value-of select="productPrice"></xsl:value-of></td>
            <td><xsl:value-of select="productRatting"></xsl:value-of></td>
            </tr>  
            
            
            </xsl:if>
                   
            
            </xsl:for-each> -->

                    <xsl:for-each select="product">
                        <xsl:choose>
                        <xsl:when test="productPrice >= 700">

                            <tr>
                                <td>
                                    <xsl:value-of select="productName"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="productPrice"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="discountPrice"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="productRatting"></xsl:value-of>
                                </td>
                            </tr>


                        </xsl:when>
                        <xsl:otherwise>
                        

                            <tr>
                                <td>
                                    <xsl:value-of select="productName"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="productPrice"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="productPrice"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="productRatting"></xsl:value-of>
                                </td>
                            </tr>

                        </xsl:otherwise>
                        </xsl:choose>    
                        




                    </xsl:for-each>


                </table>

            </body>
        </html>


    </xsl:template>


</xsl:stylesheet>