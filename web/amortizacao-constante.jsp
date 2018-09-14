<%-- 
    Document   : amortizacao-constante
    Created on : 11/09/2018, 09:54:43
    Author     : thais.lopes
--%><%@page import="java.text.DecimalFormat"%>

<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Constante</title>
        <style>
            body{
                padding-bottom:100px;
            }
            h2,h3{
                text-align: center;
                font-size: x-large;
            }
            div:not(header) {
                table {
                    border-collapse: collapse;
                }

                table, th, td {
                    border: 1px solid black;
                }
                th, td {
                    text-align: center;
                }
            }
        </style>
    </head>
    
    <div class="header">
        <%@include file="WEB-INF/jspf/header.jspf" %>
    </div>
    
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div style="background-color: #f1f1f1"><h2>Amortização Constante</h2></div>
        <form method='get'>
            <input type="number" placeholder="Valor Financiado(R$)" name="valorFinaciado"/>
            <input type="number" placeholder="Período(em meses)" name="periodoFinanciado" min='1'/>
            <input type="number" placeholder="Taxa de Juros(%)" name="taxaJuros"/>
            <input type="submit" value="Calcular"/><br>
        </form>
        <table>
            <% if(request.getParameter("valorFinaciado") != null){
                try{
                   
                    
                    double valorFinaciado = Double.parseDouble(request.getParameter("valorFinaciado"));
                    double periodoFinanciado = Double.parseDouble(request.getParameter("periodoFinanciado"));
                    double taxaJuros = Double.parseDouble(request.getParameter("taxaJuros"));
                    double valorParcela = 0;
                     //calculo de juros
                    double juros = valorFinaciado * (taxaJuros/100);
                    
                    //calculo amortização
                    double amortiz = valorFinaciado / periodoFinanciado;
                    
                    //calculo do saldo devedor
                    double saldoAnterior = valorFinaciado;
                        out.println("<h2>Tabela SAC - Sistema de Amortização Constante</h2><br>");
                        out.println("<table>");
                        out.println("<tr>");
                        out.println("<th>Período &ensp;</th>");
                        out.println("<th>Valor da Prestação &ensp;</th>");
                        out.println("<th>Valor da Amortização &ensp;</th>");
                        out.println("<th>Valor do Juros &ensp;</th>");
                        out.println("<th>Saldo Devedor</th>");
                        out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td>0</td>");
                        out.println("<td>-</td>");
                        out.println("<td>-</td>");
                        out.println("<td>-</td>");
                        out.println("<td>" + valorFinaciado + "</td>");
                        out.println("</tr>");
                    for(int i = 1; i <= periodoFinanciado; i++){
                        juros = saldoAnterior * (taxaJuros/100);
                        saldoAnterior = saldoAnterior - amortiz;
                        //calculo do valor da parcela
                        valorParcela = amortiz + juros;
                        
                        DecimalFormat vp = new DecimalFormat("0.##");
                        String Parcela = vp.format(valorParcela);
                        
                        DecimalFormat am = new DecimalFormat("0.##");
                        String amortizacao = am.format(amortiz);
                       
                        DecimalFormat jr = new DecimalFormat("0.##");
                        String valorJuros = jr.format(juros);
                        
                        DecimalFormat sa = new DecimalFormat("0.##");
                        String valorAnterior = sa.format(saldoAnterior);
                        
                        out.println("<tr>");
                        out.println("<td>" +(i)+"</td>");
                        out.println("<td>" +Parcela+"</td>");
                        out.println("<td>" +amortizacao+"</td>");
                        out.println("<td>" +valorJuros+"</td>");
                        out.println("<td>" +valorAnterior+"</td>");
                        out.println("</tr>");
                        
                    }
                    out.println("</table>");
                    
                }catch(Exception ex){
                    out.println("Não é valido");
                }
            }
            %>
        </table><br>
    </body>
    
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
    
</html>
