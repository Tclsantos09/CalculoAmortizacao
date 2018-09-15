<%-- 
    Document   : home
    Created on : 11/09/2018, 09:53:33
    Author     : thais.lopes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <%@include file="WEB-INF/jspf/head.jspf"%>   
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <section class="py-3">
            <div class="container py-5">
                <div class="row">
                    <div class="col-12 text-center pb-3">
                        <h2> Amortização constante e americana </h2>
                        <p class="text-muted"> Projeto elaborado para compreensão de aplicação do JSP no desenvolvimento de aplicações voltadas para web.</p>
                    </div>
                    <div class="col-lg-4">
                        <div class="card text-center">
                            <div class="card-header">
                             <h5 class="card-title">Amortização Constante</h5>
                            </div>
                            <div class="card-body" >
                              <p class="card-text">Sistema de Amortização Constante ou (SAC) é uma forma de amortização de um empréstimo por prestações que incluem os juros, amortizando assim partes iguais do valor total do empréstimo. Nesse sistema o saldo devedor é reembolsado em valores de amortização iguais.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card text-center">
                            <div class="card-header">
                             <h5 class="card-title">Amortização Americana</h5>
                            </div>
                            <div class="card-body" style="height: 209px!important;">
                              <p class="card-text">Sistema de Amortização Americano é uma forma de pagamento de empréstimos que se caracteriza pelo pagamento apenas dos juros da dívida,deixando o valor da dívida constante, que pode ser paga em apenas um único pagamento.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card text-center">
                            <div class="card-header">
                              <h5 class="card-title">Tabela Price</h5>
                            </div>
                            <div class="card-body">
                              <p class="card-text">Tabela Price, também chamado de sistema francês de amortização, é um método usado em amortização de empréstimo cuja principal característica é apresentar prestações (ou parcelas) iguais, usa o regime de juros compostos para calcular o valor das parcelas de um empréstimo.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </section>

        
      
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
    
 
</html>
