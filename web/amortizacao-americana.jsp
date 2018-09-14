<%-- 
    Document   : amortizacao-americana
    Created on : 11/09/2018, 09:55:10
    Author     : thais.lopes
--%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Americana</title>
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
        <div style="background-color: #f1f1f1"><h2>Amortização Americana</h2></div>
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
                    int periodoFinanciado = Integer.parseInt(request.getParameter("periodoFinanciado"));
                    double taxaJuros = Double.parseDouble(request.getParameter("taxaJuros"));
                    double valorParcela=0;
                     //calculo de juros
                    double juros = valorFinaciado * (taxaJuros/100);
                    
                    //calculo amortização
                    double amortiz = valorFinaciado;
                    
                    //calculo do saldo devedor
                    double saldoAnterior = valorFinaciado;
                        out.println("<h2>Tabela SAA - Sistema de Amortização Americana</h2><br>");
                        out.println("<table>");
                        out.println("<tr>");
                        out.println("<th>Mês</th>");
                        out.println("<th>Valor da Prestação</th>");
                        out.println("<th>Valor da Amortização</th>");
                        out.println("<th>Valor do Juros</th>");
                        out.println("<th> Saldo Devedor</th>");
                        out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td>0</td>");
                        out.println("<td>-</td>");
                        out.println("<td>-</td>");
                        out.println("<td>-</td>");
                        out.println("<td>" +valorFinaciado+"</td>");
                        out.println("</tr>");
                    
                    for(int i = 1;i<= periodoFinanciado;i++){
                        
                        DecimalFormat nm = new DecimalFormat("0.##");
                        String numero = nm.format(i);
                        
                        DecimalFormat jr = new DecimalFormat("0.##");
                        String vJuros = jr.format(juros);
                       
                        DecimalFormat vf = new DecimalFormat("0.##");
                        String vFinanciado = vf.format(valorFinaciado);
                        
                    out.println("<tr>");
                        out.println("<td>"+numero+"</td>");
                        out.println("<td>"+vJuros+"</td>");
                        out.println("<td>-</td>");
                        out.println("<td>"+vJuros+"</td>");
                        out.println("<td>" +vFinanciado+"</td>");
                        out.println("</tr>");
                    }
                    valorParcela=valorFinaciado+juros;
                  
                    DecimalFormat pf = new DecimalFormat("0.##");
                    String Periodo = pf.format(periodoFinanciado);
                        
                    DecimalFormat vp = new DecimalFormat("0.##");
                    String vParcela = vp.format(valorParcela);
                       
                    DecimalFormat am = new DecimalFormat("0.##");
                    String amortizacao = am.format(amortiz);
                        
                    DecimalFormat jr = new DecimalFormat("0.##");
                    String valorJuros = jr.format(juros);
                    
                    out.println("<tr>");
                        out.println("<td>"+Periodo+"</td>");
                        out.println("<td>"+vParcela+"</td>");
                        out.println("<td>"+amortizacao+"</td>");
                        out.println("<td>"+valorJuros+"</td>");
                        out.println("<td>-</td>");
                        out.println("</tr>");
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
