<%-- 
    Document   : amortizacao-americana
    Created on : 11/09/2018, 09:55:10
    Author     : thais.lopes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Americana</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Amortização Americana</h1>
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
                    
                    for(int i = 1;i<periodoFinanciado;i++){
                    out.println("<tr>");
                        out.println("<td>"+i+"</td>");
                        out.println("<td>"+juros+"</td>");
                        out.println("<td>-</td>");
                        out.println("<td>"+juros+"</td>");
                        out.println("<td>" +valorFinaciado+"</td>");
                        out.println("</tr>");
                    }
                  valorParcela=valorFinaciado+juros;
                    out.println("<tr>");
                        out.println("<td>"+periodoFinanciado+"</td>");
                        out.println("<td>"+valorParcela+"</td>");
                        out.println("<td>"+amortiz+"</td>");
                        out.println("<td>"+juros+"</td>");
                        out.println("<td>-</td>");
                        out.println("</tr>");
                    
                }catch(Exception ex){
                    out.println("Não é valido");
                }
            }
            %>
        </table>
    </body>
</html>
