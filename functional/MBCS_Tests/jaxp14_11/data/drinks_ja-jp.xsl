<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>

<xsl:template match="/">
   <html lang="ja">
      <head>
         <style type="text/css">
            table{border:solid 1pt black;}
            th{background-color:orange;padding:5pt;white-space:nowrap;}
            td{border:solid 1pt gray;padding:10pt;font-size:small;white-space:nowrap;}
         </style>
      </head>
      <body>
         <xsl:apply-templates select="�����f�[�^�x�[�X" />
      </body>
   </html>
</xsl:template>

<xsl:template match="�����f�[�^�x�[�X">
   <h3>�����f�[�^�x�[�X</h3>
   <xsl:for-each select="����">
   <xsl:sort select="���" />
      <p><table>
         <tr>
            <th>���</th>
            <th>���O</th>
            <th>���[�J�[��</th>
            <th>�l�i</th>
            <th>���e��</th>
         </tr>
         <tr>
            <td><xsl:value-of select="���"/></td>
            <td><xsl:value-of select="���O"/></td>
            <td><xsl:value-of select="���[�J�[��"/></td>
            <td><xsl:value-of select="�l�i"/> <xsl:value-of select="�l�i/@�ʉ�"/></td>
            <td><xsl:value-of select="���e��"/> <xsl:value-of select="���e��/@�P��"/></td>
         </tr>
      </table></p>
   </xsl:for-each>
</xsl:template>

</xsl:stylesheet>