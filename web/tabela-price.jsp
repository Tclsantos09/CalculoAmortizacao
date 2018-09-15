<%-- 
    Document   : tabela-price
    Created on : 11/09/2018, 09:55:30
    Author     : Arthur de la Mano
--%>

<%@page import="java.text.DecimalFormat"%>

<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Tabela Price</title>
         <%@include file="WEB-INF/jspf/head.jspf"%>  
    </head>
    
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <%  double capital = 0, j=0, p=0 , a =0 ; 
            double juros = 0; 
            int mes = 2; 
            double parcela = 0 ;
            String parametroC,parametroJ ; %>
        <section class="pt-3 pb-5 ">
            <div class="container py-5 " style="height:400px">
                <div class="row justify-content-center">
                    <div class="col-12 text-center pb-3">
                        <h2>Tabela Price</h2>
                        <p class="text-muted"> Projeto elaborado para compreensão de aplicação do JSP no desenvolvimento de aplicações voltadas para web.</p>
                    </div>
                    <div class="pb-5">
                        <form method='get'>
                            <input type="number" placeholder="Valor Financiado(R$)" name="valorFinanciado"/>
                            <input type="number" placeholder="Período(em meses)" name="periodoFinanciado" min='1'/>
                            <input type="number" placeholder="Taxa de Juros(%)" name="taxaJuros"/>
                            <input type="submit" value="Calcular"/><br>
                        </form>
                    </div>  
         <%
             if (request.getParameter("valorFinanciado")!= null && request.getParameter("periodoFinanciado")!= null && request.getParameter("taxaJuros")!= null){

            capital = Double.parseDouble(request.getParameter("valorFinanciado"));         
            juros = Double.parseDouble(request.getParameter("taxaJuros"));
            mes = Integer.parseInt(request.getParameter("periodoFinanciado"));

            parcela = capital/((1-(Math.pow((1 + (juros/100)),-mes)))/(juros/100));
            double capitalR [] = new double[mes+1];
            double jurosR [] = new double[mes+1];
            double amortizacao[] = new double[mes+1];
            capitalR[0] = capital ;
           for (int z = 1 ; z <= mes ;z++){
               capitalR[z]=0;
               jurosR[z]=0;
               amortizacao[z]=0;
           }
           for (int i = 1 ; i <= mes ; i++){
               jurosR[i] = (capitalR[i-1]/100)*juros;
               amortizacao[i] = parcela - jurosR[i];
               capitalR[i] = capitalR[i-1] - amortizacao[i]; 
           }
        %>
                        <table class="table text-center">
                        <thead >
                            <tr>
                                <th scope="col">Mês</th>
                                <th scope="col">Valor da Parcela</th>
                                <th scope="col">Amortização</th>
                                <th scope="col">Juros</th>
                                <th scope="col">Saldo do Devedor</th>
                            </tr>
                         </thead>
                         <tbody class="bg-white">
                        <% //Criação de um for para apresentação da tabela
                            for(int x = 0 ; x <= mes ; x++){
                        %>
                            <tr>
                                <td><%=x+1%></td>
                                <td><%=String.format("%.2f", parcela)%></td>   
                                <td><%=String.format("%.2f", amortizacao[x])%></td>
                                <td><%=String.format("%.2f", jurosR[x])%></td>
                                <td><%=String.format("%.2f", capitalR[x])%></td>  
                            </tr>
                        <%// Soma dos totais  
                                p = p + capitalR[x];
                                j = j + jurosR[x]; 
                                a = a + amortizacao[x];
                        }%> 
                        </tbody>
                        <tfoot class="bg-danger text-white font-weight-bold">
                            <tr>
                                <td>Total</td>
                                <td><%=String.format("%.2f",parcela*mes)%></td>
                                <td><%=String.format("%.2f",a)%></td>
                                <td><%=String.format("%.2f",j)%></td>
                                <td>--</td>
                            </tr>  
                        </tfoot>                         
                    </table>
                    <% } %>
                </div>
            </div>
        </section>
    </body>
    <%@include file="WEB-INF/jspf/footer.jspf" %>   
</html>
