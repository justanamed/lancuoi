<?xml version='1.0' encoding='UTF-8' ?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:inv="http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1" xmlns:ds="http://www.w3.org/2000/09/xmldsig#">
  <xsl:strip-space elements="*"/>
  <xsl:decimal-format decimal-separator="," grouping-separator="."/>
  <xsl:template name="loop">
    <xsl:param name="var"></xsl:param>
    <xsl:choose>
      <xsl:when test="$var &lt; 7 and $var &gt; 0">
        <tr>
          <td align="center" class= "boxSmall itemNormal">
            <font class="labelNormal" ></font>
          </td>
          <td align="left" class= "boxSmall itemNormal">
          </td>
          <td align="center" class= "boxSmall itemNormal">
          </td>
          <td align="right" class= "boxSmall itemNormal">
          </td>
          <td align="right" class= "boxSmall itemNormal">
          </td>
          <td align="right" class= "boxSmall itemNormal">
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
          font-size:16pt;
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
          <!--opacity: 0.9;-->
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
          padding : 5px 5px 5px 5px;
          border: 3px double;
          width:838.267px;
          }
          .boxSmall{
          border-collapse: collapse;
          padding : 5px 5px 5px 5px;
          border: 0.5px solid;
          }
          .boxSmallTable{
          border-spacing: 0px;
          padding : 0px 0px 0px 0px;
          border: 0.5px solid;
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
          font-size: 15pt
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
          border-style: double;
          border-width: medium;
          }
          .boxSmall{
          color: #000000;
          }


          .borderBottom{
          border-bottom: 2px solid #4C3F57;
          }
          .BG {
          <!--opacity: 0.3;-->
          background-image: url(signature.png);
          background-repeat: no-repeat;
          background-position: center top;
          background-size: 200px 70px;
          }
          img[src=""] {
          display: none;
          }
          <!--End_custom_nuoc_lai_chau
                    background-image: url("background.jpg");
                    z-index: -16 !important;
                    -->
        </style>
      </head>
      <body >
        <table  id='section-to-print' ALIGN="center" class = "serif boxLarge" style="background-image:url(watermark.png); background-repeat:no-repeat;background-position: center 350px;">
          <tr>
            <td colspan="3" align="center">
              <img src="logo.png" style="max-height: 200px; max-width: 100%;" align="middle"/>
            </td>
          </tr>
          <tr class = "borderBottom">
            <td width="22%" align="center">
            </td>
            <td align="center" class="header" style="color:#000000" >
              <font class="invoiceName">
                HÓA ĐƠN GIÁ TRỊ GIA TĂNG
              </font>
              <br/>
              <font class="invoiceNameItalic">
                INVOICE (VAT)
              </font>
              <br/>
              <font class="titleInvoice">Bản thể hiện của hóa đơn điện tử</font>
              <br/>
              <font class="labelItalic">
                (Electronic invoice display)
              </font>
              <br/>
              <xsl:choose>
                <xsl:when test="inv:invoiceData/inv:invoiceIssuedDate !='null'">
                  <font class="labelNormal">Ngày</font>
                  <font class="labelItalic" >(date) </font>
                  <xsl:value-of select="substring(inv:invoiceData/inv:invoiceIssuedDate, 9, 2)"/>
                  <font class="labelNormal"> tháng</font>
                  <font class="labelItalic" >(month) </font>
                  <xsl:value-of select="substring(inv:invoiceData/inv:invoiceIssuedDate, 6, 2)"/>
                  <font class="labelNormal"> năm</font>
                  <font class="labelItalic" >(year) </font>
                  <xsl:value-of select="substring(inv:invoiceData/inv:invoiceIssuedDate, 1, 4)"/>
                </xsl:when>
                <xsl:otherwise>
                  Ngày<font class="labelItalic" >(date) </font>..... tháng<font class="labelItalic" >(month) </font>..... năm<font class="labelItalic" >(year) </font>....
                </xsl:otherwise>
              </xsl:choose>

            </td>
            <td width="30%" style="vertical-align:top; padding-right: 5px">
              <!--<table align="right" class= "boxSmall dataInfoInvoice" style = "border: none !important;">-->
              <table align="right" class= "boxSmall" style = "border: none !important;">
                <tr style="vertical-align:top">
                  <!--<td align="left" class="labelBold">Mẫu số (Form): </td>-->
                  <td align="left">
                    <font class="labelBold" >Mẫu số</font>
                    <font class="labelItalic" >(Form): </font>
                    <font class="labelItalic" >
                      <xsl:value-of select="inv:invoiceData/inv:templateCode"/>
                    </font>
                  </td>
                </tr>
                <tr>
                  <td align="left">
                    <font class="labelBold" >Ký hiệu</font>
                    <font class="labelItalic" >(Serial): </font>
                    <font class="labelItalic" >
                      <xsl:value-of select="inv:invoiceData/inv:invoiceSeries"/>
                    </font>
                  </td>
                </tr>
                <tr>
                  <!--<td align="left" class="labelBold">Số (No.): </td>-->
                  <td align="left">
                    <font class="labelBold" >Số hóa đơn</font>
                    <font class="labelItalic" >(Invoice No.): </font>
                    <font class="labelItalic" >
                      <xsl:value-of select="inv:invoiceData/inv:invoiceNumber"/>
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
                  <td>
                    <table width="100%">
                      <tr>
                        <td>
                          <font class="labelNormal" >Họ tên người mua hàng</font>
                          <font class="labelItalic" >(Buyer's name): </font>
                          <font class="itemNormal">
                            <xsl:value-of select="inv:invoiceData/inv:buyer/inv:buyerDisplayName"/>
                          </font>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td >
                    <table align="left" width="100%">
                      <tr>
                        <td >
                          <font class="labelNormal" >Tên đơn vị</font>
                          <font class="labelItalic" >(Company): </font>
                          <font class="itemNormal">
                            <xsl:value-of select="inv:invoiceData/inv:buyer/inv:buyerLegalName"/>
                          </font>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td>
                    <table align="left" width="100%">
                      <tr>
                        <td>
                          <font class="labelNormal" >Mã số thuế</font>
                          <font class="labelItalic" >(Tax code): </font>
                          <font class="itemNormal">
                            <xsl:value-of select="inv:invoiceData/inv:buyer/inv:buyerTaxCode"/>
                          </font>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td>
                    <table align="left" width="100%">
                      <tr>
                        <td>
                          <font class="labelNormal" >Địa chỉ</font>
                          <font class="labelItalic" >(Address): </font>
                          <font class="itemNormal">
                            <xsl:value-of select="inv:invoiceData/inv:buyer/inv:buyerAddressLine"/>
                          </font>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td>
                    <table width="100%">
                      <tr>
                        <td style="width: 50%">
                          <font class="labelNormal" >Hình thức thanh toán</font>
                          <font class="labelItalic" >(Payment form): </font>
                          <font class="itemNormal">
                            <xsl:value-of select="inv:invoiceData/inv:payments/inv:payment/inv:paymentMethodName"/>
                          </font>
                        </td>
                        <td style="width: 50%">
                          <font class="labelNormal" >Số tài khoản</font>
                          <font class="labelItalic" >(Account Number): </font>
                          <font class="itemNormal">
                            <xsl:value-of select="inv:invoiceData/inv:buyer/inv:buyerBankAccount"/>
                          </font>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td colspan="3">
              <table width="100%" class= "boxSmallTable">
                <tr width="100%">
                  <!--<th width="5%" align="center" class= "boxSmall labelBold">STT <br/>(No.)</th>-->
                  <th width="5%" align="center" class= "boxSmall"  style="text-align: center">
                    <font class="labelBold" >STT</font>
                    <br/>
                    <font class="labelItalicNormal">(No.)</font>
                  </th>
                  <!--<th width="32%" align="center" class= "boxSmall labelBold">Tên hàng hóa, dịch vụ <br/> (Description)</th>-->
                  <th width="30%" align="center" class= "boxSmall"  style="text-align: center">
                    <font class="labelBold" >Tên hàng hóa, dịch vụ</font>
                    <br/>
                    <font class="labelItalicNormal" >(Description)</font>
                  </th>
                  <!--<th width="11%" align="center" class= "boxSmall labelBold">Đơn vị tính <br/>(Unit)</th>-->
                  <th width="11%" align="center" class= "boxSmall"  style="text-align: center">
                    <font class="labelBold" >Đơn vị tính</font>
                    <br/>
                    <font class="labelItalicNormal" >(Unit)</font>
                  </th>
                  <!--<th width="10%" align="center" class= "boxSmall labelBold">Số lượng <br/>(Quantity)</th>-->
                  <th width="12%" align="center" class= "boxSmall"  style="text-align: center">
                    <font class="labelBold" >Số lượng</font>
                    <br/>
                    <font class="labelItalicNormal" >(Quantity)</font>
                  </th>
                  <!--<th width="13%" align="center" class= "boxSmall labelBold">Đơn giá <br/>(Unit price)</th>-->
                  <th width="13%" align="center" class= "boxSmall"  style="text-align: center">
                    <font class="labelBold" >Đơn giá</font>
                    <br/>
                    <font class="labelItalicNormal" >(Unit price)</font>
                  </th>
                  <!--<th width="13%" align="center" class= "boxSmall labelBold">Thành tiền <br/>(Amount)</th>-->
                  <th width="13%" align="center" class= "boxSmall"  style="text-align: center">
                    <font class="labelBold" >Thành tiền</font>
                    <br/>
                    <font class="labelItalicNormal" >(Amount)</font>
                  </th>
                </tr>
                <tr width="100%">
                  <th align="center" class= "boxSmall labelNormal"  style="text-align: center">1</th>
                  <th align="center" class= "boxSmall labelNormal" style="text-align: center">2</th>
                  <th align="center" class= "boxSmall labelNormal"  style="text-align: center">3</th>
                  <th align="center" class= "boxSmall labelNormal" style="text-align: center">4</th>
                  <th align="center" class= "boxSmall labelNormal" style="text-align: center">5</th>
                  <th align="center" class= "boxSmall labelNormal" style="text-align: center">6 = 4 x 5</th>
                </tr>
                <xsl:for-each select="inv:invoiceData/inv:items/inv:item">
                  <tr>
                    <td align="center" class= "boxSmall itemNormal">
                      <xsl:choose>
                        <xsl:when test="inv:lineNumber > 0">
                          <xsl:value-of select="inv:lineNumber"/>
                        </xsl:when>
                        <xsl:otherwise>
                          <font class="labelNormal" ></font>
                        </xsl:otherwise>
                      </xsl:choose>
                    </td>
                    <td align="left" class= "boxSmall itemNormal">
                      <xsl:value-of select="inv:itemName"/>
                    </td>
                    <td align="center" class= "boxSmall itemNormal">
                      <xsl:value-of select="inv:unitName"/>
                    </td>
                    <td align="right" class= "boxSmall itemNormal">
                      <xsl:choose>
                        <xsl:when test="string-length(inv:quantity) = 0">
                        </xsl:when>
                        <xsl:when test="inv:quantity = null">
                          <xsl:value-of select="format-number(inv:quantity, '###.##0,####')"/>
                        </xsl:when>
                        <xsl:when test="string-length(inv:quantity) = 1">
                          <xsl:value-of select="format-number(inv:quantity, '###.##0,####')"/>
                        </xsl:when>
                        <xsl:when test="string-length(inv:quantity) > 1">
                          <xsl:value-of select="format-number(inv:quantity, '###.##0,####')"/>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:value-of select="format-number(inv:quantity, '###.##0,####')"/>
                        </xsl:otherwise>
                      </xsl:choose>
                    </td>
                    <td align="right" class= "boxSmall itemNormal">
                      <xsl:if test="inv:unitPrice != 'null' and inv:unitPrice > 0">
                        <xsl:value-of select="format-number(inv:unitPrice, '###.##0,####')"/>
                      </xsl:if>
                    </td>
                    <td align="right" class= "boxSmall itemNormal">
                      <xsl:if test="inv:itemTotalAmountWithoutVat != 'null' and inv:itemTotalAmountWithoutVat > 0">
                        <xsl:value-of select="format-number(inv:itemTotalAmountWithoutVat, '###.##0,####')"/>
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
                    <font class="labelNormal" >Chiết khấu</font>
                    <font class="labelItalic" >(Discount):</font>
                  </td>
                  <td align="right" class= "boxSmall itemNormal">
                    <xsl:if test="inv:invoiceData/inv:discountAmount != 'null' and inv:invoiceData/inv:discountAmount > 0">
                      <xsl:value-of select="format-number(inv:invoiceData/inv:discountAmount, '###.##0,####')"/>
                    </xsl:if>
                  </td>
                </tr>
                <tr>
                  <td align="right" colspan="5" class= "boxSmall">
                    <font class="labelNormal" >Cộng tiền hàng</font>
                    <font class="labelItalic" >(Sub total):</font>
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
                        <td align="center"  colspan="3" class= "boxSmall labelNormal">
                          <font style = "" class="labelNormal">Thuế suất GTGT</font>
                          <font style = "" class="labelItalic">(VAT rate):</font>
                          <font style = "" class="labelNormal">
                           
                            <xsl:choose>
                              <xsl:when test="inv:vatPercentage != 'null' and inv:vatPercentage >= 0">
                                <xsl:value-of select="inv:vatPercentage"/>%
                              </xsl:when>
                              <xsl:otherwise>
                                <td align="right" colspan="1" class= "boxSmall itemNormal">
                                  .....\.....%
                                </td>
                              </xsl:otherwise>
                            </xsl:choose>
                          </font>
                        </td>
                        <td align="right"  colspan="2" class= "boxSmall labelNormal">
                          <font style= "" class="labelNormal">Tiền thuế GTGT</font>
                          <font style= "" class="labelItalic">(VAT payable):</font>                          
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
                              .....\.....
                            </td>
                          </xsl:otherwise>
                        </xsl:choose>
                      </tr>
                    </xsl:for-each>
                  </xsl:when>
                  <xsl:otherwise>
                    <tr>
                      <td align="center"  colspan="3" class= "boxSmall labelNormal">
                        <font style = "" class="labelNormal">Thuế suất GTGT</font>
                        <font style = "" class="labelItalic">(VAT rate):</font>
                        <font style = "" class="labelNormal">
                          .....\.....%
                        </font>
                      </td>
                      <td align="right"  colspan="2" class= "boxSmall labelNormal">
                        <font style= "" class="labelNormal">Tiền thuế GTGT</font>
                        <font style= "" class="labelItalic">(VAT payable):</font>                        
                      </td>
                      <td align="right" colspan="1" class= "boxSmall itemNormal">
                        <font style = "" class="labelNormal">
                          .....\.....
                        </font>
                      </td>
                    </tr>
                  </xsl:otherwise>
                </xsl:choose>
                <tr>
                  <td align="right" colspan="5" class= "boxSmall">
                    <font class="labelNormal" >Tổng cộng tiền thanh toán</font>
                    <font class="labelItalic" >(Grand total):</font>
                  </td>
                  <td align="right" class= "boxSmall itemNormal">
                    <xsl:if test="inv:invoiceData/inv:totalAmountWithVAT != 'null' and inv:invoiceData/inv:totalAmountWithVAT > 0">
                      <xsl:value-of select="format-number(inv:invoiceData/inv:totalAmountWithVAT, '###.##0')"/>
                    </xsl:if>
                  </td>
                </tr>
                <tr>
                  <td align="left" colspan="9" class= "boxSmall">
                    <font class="labelNormal" >Số tiền viết bằng chữ</font>
                    <font class="labelItalic" >(Amount in words):</font>
                    <font class = "itemNormal">
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
                  <td align="center" width="50%" style="vertical-align: top">
                    <font class="labelBold" text-align="top">Người mua hàng</font>
                    <font class="labelItalic" >(Buyer)</font>
                    <br/>
                    <font class="labelNormal" >(Ký, ghi rõ họ, tên)</font>
                    <br/>
                    <font class="labelItalic" >Sign &amp; full name</font>
                  </td>
                  <td  align="center" width="50%">
                    <font class="labelBold" >Người bán hàng</font>
                    <font class="labelItalic" >(Seller)</font>
                    <br/>
                    <font class="labelNormal" >(Ký, ghi rõ họ, tên)</font>
                    <br/>
                    <font class="labelItalic" >Sign &amp; full name</font>
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
                <tr>
                  <td align="center">
                    <font font-size="7pt" class="labelItalic"> (Cần kiểm tra, đối chiếu khi lập, giao, nhận hóa đơn) </font>
                  </td>
                </tr>
                <tr>
                  <td align="center" style="border-top: dotted">
                    <font font-size="7pt" class="labelItalic"> Đơn vị cung cấp dịch vụ Hóa đơn điện tử: Tập đoàn Công nghiệp - Viễn thông Quân đội (Viettel), MST: 0100109106 </font>
                  </td>
                </tr>
                <tr>
                  <td align="center" >
                    <font font-size="7pt" class="labelItalic">Tra cứu hóa đơn điện tử tại Website: https://sinvoice.viettel.vn/tracuuhoadon, Mã số bí mật:</font>
                    <font font-size="7pt" class = "itemNormal">
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