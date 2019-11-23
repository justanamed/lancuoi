<?xml version='1.0' encoding='UTF-8' ?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:inv="http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1" xmlns:ds="http://www.w3.org/2000/09/xmldsig#">
  <xsl:strip-space elements="*"/>
  <xsl:decimal-format decimal-separator="," grouping-separator="."/>
  <xsl:template name="string-replace-all">
    <xsl:param name="text"/>
    <xsl:param name="replace"/>
    <xsl:param name="by"/>
    <xsl:param name="spl"/>
    <xsl:choose>
      <xsl:when test="contains($text,$replace)">
        <xsl:value-of select="substring-before($text,$replace)"/>
        <xsl:value-of select="$by"/>
        <br/>
        <xsl:value-of select="$spl"/>
        <xsl:call-template name="string-replace-all">
          <xsl:with-param name="text" select="substring-after($text,$replace)"/>
          <xsl:with-param name="replace" select="$replace"/>
          <xsl:with-param name="by" select="$by"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$text"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template name="loop">
    <xsl:param name="var"></xsl:param>
    <xsl:choose>
      <xsl:when test="$var &lt; 10 and $var &gt; 0">
        <tr>
          <td align="center" class= "boxSmallS itemNormal">
            <font class="labelNormal"></font>
          </td>
          <td align="left" class= "boxSmallS itemNormal">
          </td>
          <td align="center" class= "boxSmallS itemNormal">
          </td>
          <td align="right" class= "boxSmallS itemNormal">
          </td>
          <td align="right" class= "boxSmallS itemNormal">
          </td>
          <td align="right" class= "boxSmallS itemNormal">
          </td>
        </tr>
        <xsl:call-template name="loop">
          <xsl:with-param name="var">
            <xsl:number value="number($var)+1" />
          </xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="inv:invoice">
    <html>
      <head>
        <style>
          tbody{
          }
          .header{
          vertical-align:top
          }
          .invoiceName{
          font-weight:bold;
          font-size:18px;
          }
          .titleInvoice{
          font-weight:bold;
          font-style: italic;
          font-size:16px;
          }
          .serif {
          font-family: "Times New Roman", Times, serif;
          }

          .sansserif {
          font-family: Arial, Helvetica, sans-serif;
          }
          .image-box {
          text-align:center;
          }
          .image-box img {
          <!--opacity: 0.3;-->
          width: 350px;
          background-image: none;
          background-repeat: no-repeat;
          background-position: center center;
          background-size: cover;
          margin-top:300px;
          margin-bottom: 100px;
          }
          .image-box img[src=""] {
          display: none;
          }
          img[src=""] {
          display: none;
          }

          .watermark {
          top: 0;
          left: 0;
          bottom: 0;
          right: 0;
          position: absolute;
          z-index: -2;
          margin-left:auto;
          margin-right:auto;
          width:400px;
          margin-top: 0px;
          }

          .itemNormal{
          font-weight: normal;
          padding : 2px 2px 2px 2px
          }

          .itemBold{
          font-weight:bold;
          /*vertical-align:top;*/
          padding : 2px 2px 2px 2px
          }
          .itemUppercase{
          text-transform: uppercase;
          }
          .labelNormal{
          padding : 2px 2px 2px 2px
          }
          .labelNormal{
          padding : 2px 2px 2px 2px
          }

          .labelItalic{
          padding : 2px 2px 2px 2px;
          font-style: italic;
          color: #000000;
          }

          .labelItalicNormal{
          padding : 2px 2px 2px 2px;
          font-style: italic;
          font-weight: normal;
          color: #000000;
          }

          .labelBold{
          font-weight:bold;
          /*vertical-align:top;*/
          padding : 2px 2px 2px 2px
          }



          .boxLarge{
          margin-left:auto;
          margin-right:auto;
          border-collapse: collapse;
          padding : 4px 4px 4px 4px;
          <!--border: 3px solid;-->
          width:838.267px;
          }
          .boxSmall{
          border-collapse: collapse;
          padding : 4px 4px 4px 4px;
          border: 1px solid;
          }
          .boxSmallS{
          border-collapse: collapse;
          padding : 4px 4px 4px 4px;
          border-left: 1px solid;
          border-right: 1px solid;
          border-top: 1px dotted;
          border-bottom: 1px dotted;
          }
          .boxSmallTable{
          border-spacing: 0px;
          padding : 0px 0px 0px 0px;
          border: 1px solid;
          }
          .dataInfoInvoice{
          vertical-align:top;
          font-weight:bold;
          padding : 2px 2px 2px 2px
          }
          <!--Bat buoc phai co - dau hieu nhan biet de change color-->
          <!--Start_color-->
          .invoiceName{
          color: #000000;
          }
          .invoiceNameItalic{
          color: #000000;
          font-style: italic;
          }
          .titleInvoice{
          color: #000000;
          }
          .itemNormal{
          color: #000000;
          }
          .itemBold{
          color: #000000;
          }
          .labelNormal{
          color: #000000;
          }
          .labelBold{
          color: #000000;
          }
          .boxLarge{
          color: #000000;
          <!--border-style: solid;-->
          <!--border-width: medium;-->
          }
          .boxSmall{
          color: #000000;
          }


          .borderBottom{
          border-bottom: 2px solid #4C3F57;
          }
          <!--End_custom_nuoc_lai_chau
                    background-image: url("background.jpg");
                    z-index: -16 !important;
                    -->
          .BG {
          <!--opacity: 0.3;-->
          background-image: url(signature.png);
          background-repeat: no-repeat;
          background-position: center top;
          background-size: 200px 70px;
          }
        </style>
      </head>
      <body >
        <!--<div class = "watermark">
            <div class="image-box">
              <img src="watermark.png" align="middle"/>  
            </div>
        </div>-->
        <table  id='section-to-print' ALIGN="center" class = "serif boxLarge" style="background-image:url(watermark.png); background-repeat:no-repeat;background-position: center 300px;">
          <tr>
            <td align="center" width = "23%" rowspan="2">
              <img src="logo.png" align="middle" style="max-height:130px ; max-width: 100%"/>
            </td>
            <td colspan="2" >
              <table width="100%">
                <tr>
                  <td colspan="3"  align="left">
                    <!--<font class="labelNormal" >Đơn vị bán hàng: </font>-->
                    <font class="labelBold">
                      <xsl:value-of select="inv:invoiceData/inv:seller/inv:sellerLegalName"/>
                    </font>
                  </td>
                </tr>
                <tr>
                  <td colspan="3" align="left">
                    <font class="labelNormal" >Mã số thuế: </font>
                    <font class="labelBold">
                      <!--<strong style = "border: 1px solid #000;"><xsl:value-of select="inv:invoiceData/inv:seller/inv:sellerTaxCode"/></strong>-->
                      <xsl:variable name = "sellerTaxCodeLength" select = "string-length(inv:invoiceData/inv:seller/inv:sellerTaxCode)"/>
                      <xsl:variable name = "sellerTaxCode" select = "inv:invoiceData/inv:seller/inv:sellerTaxCode"/>
                      <xsl:value-of select="$sellerTaxCode"/>
                    </font>
                  </td>
                </tr>
                <tr>
                  <td colspan="3" align="left">
                    <font class="labelNormal" >Địa chỉ: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:seller/inv:sellerAddressLine"/>
                    </font>
                  </td>
                </tr>
                <tr>
                  <td width="15%" style="vertical-align: top">
                    <font class="labelNormal" >Số tài khoản: </font>
                  </td>
                  <td width="20%" style="vertical-align: top">
                    <font class="itemNormal">
                      <xsl:variable name="FeatureInfo" select="inv:invoiceData/inv:seller/inv:sellerBankAccount" />
                      <xsl:call-template name="string-replace-all">
                        <xsl:with-param name="text" select="$FeatureInfo"/>
                        <xsl:with-param name="replace" select="';'"/>
                        <xsl:with-param name="by" select="'&#160;'"/>
                        <xsl:with-param name="spl" select="''"/>
                      </xsl:call-template>
                    </font>
                  </td>
                  <td style="vertical-align: top">
                    <font class="itemNormal">
                      tại <xsl:variable name="FeatureInfo" select="inv:invoiceData/inv:seller/inv:sellerBankName" />
                      <xsl:call-template name="string-replace-all">
                        <xsl:with-param name="text" select="$FeatureInfo"/>
                        <xsl:with-param name="replace" select="';'"/>
                        <xsl:with-param name="by" select="'&#160;'"/>
                        <xsl:with-param name="spl" select="'Tại '"/>
                      </xsl:call-template>
                    </font>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td colspan="2" style="border-top: 3pt solid  #ff0000; padding-top:4mm">
              
            </td>
          </tr>
          <tr>
            <td align="center">
              <!--<img src="logo.png" align="middle" style="max-height:100px ; max-width: 100%"/>-->
            </td>
            <td width="50%" align="center" class="header" style="color:#000000" >
              <font class="invoiceName" style="font-size: 22px">
                <!--<xsl:value-of select="inv:invoiceData/inv:invoiceName"/>-->
                HÓA ĐƠN GIÁ TRỊ GIA TĂNG
              </font>
              <br/>
              <font class="labelBold">Bản thể hiện của hóa đơn điện tử</font>
              <br/>
              <xsl:choose>
                <xsl:when test="inv:invoiceData/inv:invoiceIssuedDate !='null'">
                  <font class="labelNormal">Ngày</font>
                  <xsl:value-of select="substring(inv:invoiceData/inv:invoiceIssuedDate, 9, 2)"/>
                  <font class="labelNormal">tháng</font>
                  <xsl:value-of select="substring(inv:invoiceData/inv:invoiceIssuedDate, 6, 2)"/>
                  <font class="labelNormal">năm</font>
                  <xsl:value-of select="substring(inv:invoiceData/inv:invoiceIssuedDate, 1, 4)"/>
                </xsl:when>
                <xsl:otherwise>Ngày.... tháng.... năm.... </xsl:otherwise>
              </xsl:choose>

            </td>
            <td width="27%" style="vertical-align:top;">
              <!--<table align="right" class= "boxSmall dataInfoInvoice" style = "border: none !important;">-->
              <table align="center" class= "boxSmall" style = "border: none !important;">
                <tr style="vertical-align:top">
                  <td align="left">
                    <font class="labelNormal" >Mẫu số:</font>
                    <font class="labelNormal" >
                      <xsl:value-of select="inv:invoiceData/inv:templateCode"/>
                    </font>
                  </td>
                </tr>
                <tr>
                  <td align="left">
                    <font class="labelNormal" >Ký hiệu:</font>
                    <font class="labelBold" >
                      <xsl:value-of select="inv:invoiceData/inv:invoiceSeries"/>
                    </font>
                  </td>
                </tr>
                <tr>
                  <td align="left">
                    <font class="labelNormal" >Số:</font>
                    <font class="labelBold" >
                      <xsl:value-of select="inv:invoiceData/inv:invoiceNumber"/>
                    </font>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td colspan="3" style="padding-top:1mm; padding-bottom:2mm; border-bottom:2pt solid">
              <table width="100%">
                <tr>
                  <td colspan ="3">
                    <font class="labelNormal" >Đơn vị bán hàng: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:seller/inv:sellerLegalName"/>
                    </font>
                  </td>
                </tr>
                <tr>
                  <td colspan="3">
                    <font class="labelNormal" >Mã số thuế: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:seller/inv:sellerTaxCode"/>
                    </font>
                  </td>
                </tr>
                <tr>
                  <td colspan ="2">
                    <font class="labelNormal" >Địa chỉ: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:seller/inv:sellerAddressLine"/>
                    </font>
                  </td>
                  <td width="35%">
                    <font class="labelNormal" >Kho: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:metadata/inv:warehouse"/>
                    </font>
                  </td>
                </tr>
                
                <tr>
                  <td style="width: 40%">
                    <font class="labelNormal" >Điện thoại: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:seller/inv:sellerPhoneNumber"/>
                    </font>
                  </td>
                  <td colspan ="2">
                    <font class="labelNormal" >Số tài khoản: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:seller/inv:sellerBankAccount"/>
                    </font>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td colspan="3">
              <table width="100%">
                <tr>
                  <td colspan ="2">
                    <font class="labelNormal" >Họ tên người mua hàng: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:buyer/inv:buyerDisplayName"/>
                    </font>
                  </td>
                  <td width="35%">
                    <font class="labelNormal" >Hợp đồng số: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:metadata/inv:contactNo"/>
                    </font>
                  </td>
                </tr>
                <tr>
                  <td colspan ="2">
                    <font class="labelNormal" >Tên đơn vị: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:buyer/inv:buyerLegalName"/>
                    </font>
                  </td>
                  <td colspan ="2">
                    <font class="labelNormal" >Mã KH: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:metadata/inv:buyerCode"/>
                    </font>
                  </td>
                </tr>
                <tr>
                  <td colspan ="3">
                    <font class="labelNormal" >Mã số thuế: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:buyer/inv:buyerTaxCode"/>
                    </font>
                  </td>
                </tr>
                <tr>
                  <td colspan="3">
                    <font class="labelNormal" >Địa chỉ: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:buyer/inv:buyerAddressLine"/>
                    </font>
                  </td>
                </tr>
                <tr>
                  <td style="width: 40%">
                    <font class="labelNormal" >Hình thức thanh toán: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:payments/inv:payment/inv:paymentMethodName"/>
                    </font>
                  </td>
                  <td colspan ="2">
                    <font class="labelNormal" >Số tài khoản: </font>
                    <font class="itemNormal">
                      <xsl:value-of select="inv:invoiceData/inv:buyer/inv:buyerBankAccount"/>
                    </font>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td colspan="3">
              <table width="100%" class= "boxSmallTable">
                <tr width="100%">
                  <td width="5%" align="center" class= "boxSmall">
                    <font class="labelBold" >STT</font>
                  </td>
                  <td width="30%" align="center" class= "boxSmall">
                    <font class="labelBold" >Tên hàng hóa, dịch vụ</font>
                    <!--<font class="labelBold" >TÊN HÀNG HÓA, DỊCH VỤ</font>-->
                  </td>
                  <td width="13%" align="center" class= "boxSmall">
                    <font class="labelBold" >Đơn vị tính</font>
                    <!--<font class="labelBold" >ĐƠN VỊ TÍNH</font>-->
                  </td>
                  <td width="10%" align="center" class= "boxSmall">
                    <font class="labelBold" >Số lượng</font>
                    <!--<font class="labelBold" >SỐ LƯỢNG</font>-->
                  </td>
                  <td width="13%" align="center" class= "boxSmall">
                    <font class="labelBold" >Đơn giá</font>
                    <!--<font class="labelBold" >ĐƠN GIÁ</font>-->
                  </td>
                  <td width="13%" align="center" class= "boxSmall">
                    <font class="labelBold" >Thành tiền</font>
                    <!--<font class="labelBold" >THÀNH TIỀN</font>-->
                  </td>
                </tr>
                <tr width="100%">
                  <td width="5%" align="center" class= "boxSmall itemNormal">1</td>
                  <td width="35%" align="center" class= "boxSmall itemNormal">2</td>
                  <td width="8%" align="center" class= "boxSmall itemNormal">3</td>
                  <td width="10%" align="center" class= "boxSmall itemNormal">4</td>
                  <td width="13%" align="center" class= "boxSmall itemNormal">5</td>
                  <td width="13%" align="center" class= "boxSmall itemNormal">6=(4)x(5)</td>
                </tr>
                <xsl:for-each select="inv:invoiceData/inv:items/inv:item">
                  <tr>
                    <td align="center" class= "boxSmallS itemNormal">
                      <xsl:choose>
                        <xsl:when test="inv:lineNumber > 0">
                           <xsl:value-of select="inv:lineNumber"/>
                        </xsl:when>
                        <xsl:otherwise>
                          <font class="labelNormal" ></font>
                        </xsl:otherwise>
                      </xsl:choose>    
                    </td>
                    <td align="left" class= "boxSmallS itemNormal">
                      <xsl:value-of select="inv:itemName"/>
                    </td>
                    <td align="center" class= "boxSmallS itemNormal">
                      <xsl:value-of select="inv:unitName"/>
                    </td>
                    <td align="right" class= "boxSmallS itemNormal">
                      <xsl:choose>
                        <xsl:when test="string-length(inv:quantity) = 0">
                        </xsl:when>
                        <xsl:when test="inv:quantity = null">
                          <xsl:value-of select="format-number(inv:quantity, '###.###,####')"/>
                        </xsl:when>
                        <xsl:when test="string-length(inv:quantity) = 0">
                        </xsl:when>
                        <xsl:when test="string-length(inv:quantity) > 0">
                          <xsl:value-of select="format-number(inv:quantity, '###.###,####')"/>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:value-of select="format-number(inv:quantity, '###.###,####')"/>
                        </xsl:otherwise>
                      </xsl:choose>
                    </td>
                    <td align="right" class= "boxSmallS itemNormal">
                      <xsl:if test="inv:unitPrice != 'null' and inv:unitPrice > 0">
                        <xsl:value-of select="format-number(inv:unitPrice, '###.###,####')"/>
                      </xsl:if>
                    </td>
                    <td align="right" class= "boxSmallS itemNormal">
                      <xsl:if test="inv:itemTotalAmountWithoutVat != 'null' and inv:itemTotalAmountWithoutVat > 0">
                        <xsl:value-of select="format-number(inv:itemTotalAmountWithoutVat, '###.###,####')"/>
                      </xsl:if>
                    </td>
                  </tr>
                </xsl:for-each>
                <xsl:call-template name="loop">
                  <xsl:with-param name="var">
                    <xsl:value-of select="count(//inv:invoiceData/inv:items/inv:item)"/>
                  </xsl:with-param>
                </xsl:call-template>
                <tr>
                  <td align="right" colspan="5" class= "boxSmall">
                    <font class="labelNormal" >Cộng tiền hàng</font>
                    <font class="labelBold"> (7) </font>
                  </td>
                  <td align="right" class= "boxSmall itemNormal">
                    <xsl:if test="inv:invoiceData/inv:totalAmountWithoutVAT != 'null' and inv:invoiceData/inv:totalAmountWithoutVAT > 0">
                      <xsl:value-of select="format-number(inv:invoiceData/inv:totalAmountWithoutVAT, '###.##0,####')"/>
                    </xsl:if>
                  </td>
                </tr>
                <xsl:choose>
                  <xsl:when test="inv:invoiceData/inv:invoiceTaxBreakdowns/inv:invoiceTaxBreakdowns != 'null'">
                    <xsl:for-each select="inv:invoiceData/inv:invoiceTaxBreakdowns/inv:invoiceTaxBreakdowns">
                      <tr>
                        <td align="right"  colspan="5" class= "boxSmall labelNormal">
                          <font class="labelNormal">Thuế suất GTGT</font>
                          <font class="labelNormal">
                            <xsl:value-of select="inv:vatPercentage"/>%
                          </font>
                          <font class="labelBold"> x (7) </font>
                          <font class="labelNormal"> = Tiền thuế GTGT</font>
                          <font class="labelBold"> (8) </font>
                        </td>
                        <xsl:choose>
                          <xsl:when test="inv:vatPercentage != 'null' and inv:vatPercentage >= 0">
                            <td align="right" colspan="1" class= "boxSmall itemNormal">
                              <xsl:if test="inv:vatTaxAmount != 'null' and inv:vatTaxAmount >= 0">
                                <font class = "itemNormal">
                                  <xsl:value-of select="format-number(inv:vatTaxAmount, '###.##0,####')"/>
                                </font>
                              </xsl:if>
                            </td>
                          </xsl:when>
                          <xsl:otherwise>
                            <td align="right" colspan="1" class= "boxSmall itemNormal">
                              <font class="labelNormal">.....\.....</font>
                            </td>
                          </xsl:otherwise>
                        </xsl:choose>
                      </tr>
                    </xsl:for-each>
                  </xsl:when>
                  <xsl:otherwise>
                    <tr>
                      <td align="right"  colspan="5" class= "boxSmall labelNormal">
                        <font class="labelNormal">Thuế suất GTGT:</font>
                        <font class="labelNormal">
                          .....\.....%
                        </font>
                        <font class="labelBold"> x (7) </font>
                        <font class="labelNormal"> = Tiền thuế GTGT</font>
                        <font class="labelBold"> (8) </font>
                      </td>
                      <td align="right" colspan="1" class= "boxSmall itemNormal">
                        <font class="labelNormal">.....\.....</font>
                      </td>
                    </tr>
                  </xsl:otherwise>
                </xsl:choose>
                <tr>
                  <td align="right" colspan="5" class= "boxSmall">
                    <font class="labelNormal" >Tổng cộng</font>
                    <font class="labelBold"> (9) = (7) + (8)</font>
                  </td>
                  <td align="right" class= "boxSmall itemNormal">
                    <xsl:if test="inv:invoiceData/inv:totalAmountWithoutVAT != 'null' and inv:invoiceData/inv:totalVATAmount != 'null' and (inv:invoiceData/inv:totalAmountWithoutVAT + inv:invoiceData/inv:totalVATAmount) > 0">
                      <xsl:value-of select="format-number(inv:invoiceData/inv:totalAmountWithoutVAT + inv:invoiceData/inv:totalVATAmount, '###.##0,####')"/>
                    </xsl:if>
                  </td>
                </tr>
                <tr>
                  <td align="right" colspan="5" class= "boxSmall">
                    <font class="labelNormal" >Chiết khấu thanh toán</font>
                    <font class="labelBold"> (10) </font>
                  </td>
                  <td align="right" class= "boxSmall itemNormal">
                    <xsl:if test="inv:invoiceData/inv:discountAmount != 'null' and inv:invoiceData/inv:discountAmount > 0">
                      <xsl:value-of select="format-number(inv:invoiceData/inv:discountAmount, '###.##0,####')"/>
                    </xsl:if>
                  </td>
                </tr>
                <tr>
                  <td align="right" colspan="5" class= "boxSmall">
                    <font class="labelNormal" >Tổng cộng tiền thanh toán</font>
                    <font class="labelBold"> (11) = (9) - (10) </font>
                  </td>
                  <td align="right" class= "boxSmall itemNormal">
                    <xsl:if test="inv:invoiceData/inv:totalAmountWithVAT != 'null' and inv:invoiceData/inv:totalAmountWithVAT > 0">
                      <xsl:value-of select="format-number(inv:invoiceData/inv:totalAmountWithVAT, '###.##0,####')"/>
                    </xsl:if>
                  </td>
                </tr>
                <tr>
                  <td align="left" colspan="6" class= "boxSmall">
                    <font class=" labelBold labelItalic" >Số tiền viết bằng chữ:</font>
                    <font class = "labelItalic">
                      <xsl:value-of select="inv:invoiceData/inv:totalAmountWithVATInWords"/>
                    </font>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td colspan="3">
              <table width="100%">
                <tr>
                  <td align="center" width="50%" style="vertical-align:top;">
                    <font class="labelBold">
                      Người mua hàng
                    </font>
                    <!--<br/>
                    <font class="labelItalic">
                      (Ký, ghi rõ họ tên)
                    </font>-->
                  </td>
                  <td  align="center" width="50%">

                    <font class="labelBold" >
                      Người bán hàng
                    </font>
                    <!--<br/>
                    <font class="labelItalic">
                      (Ký, ghi rõ họ tên)
                    </font>-->
                    <br/>
                    <div class="BG">
                      <div style="height: 30px"  ></div>
                      <xsl:if test="inv:invoiceData/inv:seller/inv:sellerLegalName != 'null'">
                        <font class="labelBold" style="font-weight:bold;color: #FF0000;word-wrap:break-word">
                          Ký bởi <xsl:value-of select="inv:invoiceData/inv:seller/inv:sellerLegalName"/>
                        </font>
                      </xsl:if>
                      <div style="height: 10px"  ></div>
                    </div>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td colspan="3">
              <table width="100%">
                <!--<Tr>
                  <td align="center">
                    <font class="labelItalic">Cần kiểm tra đối chiếu khi lập, giao, nhận hóa đơn</font>
                  </td>
                </Tr>-->
                <tr>
                  <td align="center" style="border-top: dotted">
                    <font class="labelItalic"> Đơn vị cung cấp dịch vụ Hóa đơn điện tử: Tập đoàn Công nghiệp - Viễn thông Quân đội(Viettel), MST: 0100109106 </font>
                  </td>
                </tr>
                <tr>
                  <td align="center" >
                    <font class="labelItalic labelBold" style="font-size: 13pt">Tra cứu hóa đơn điện tử tại Website: https://sinvoice.viettel.vn/tracuuhoadon. Mã số bí mật:</font>
                    <font class = "labelBold">
                      <xsl:value-of
                          select ="inv:invoiceData/inv:customDefines/inv:reservationCode" />
                    </font>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:transform>