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
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <h1>Home</h1>
        
            <h4 align="center">Andrea de Oliveira Xavier</h4>
            <h4 align="center">Arthur de La Mano</h4>
            <h4 align="center">Cassiano Lucas Vieira</h4>
            <h4 align="center">Gustavo Carvalho Pessoa</h4>
            <h4 align="center">Thais do Carmo Lopes dos Santos</h4><br><br>
        
        <h4>Amortização Constante</h4>
        <p>Sistema de Amortização Constante ou (SAC) é uma forma de amortização de um empréstimo por prestações que incluem os juros, amortizando assim partes iguais do valor total do empréstimo. Nesse sistema o saldo devedor é reembolsado em valores de amortização iguais.</p><br>
        <h4>Amortização Americana</h4>
        <p>Sistema de Amortização Americano é uma forma de pagamento de empréstimos que se caracteriza pelo pagamento apenas dos juros da dívida,deixando o valor da dívida constante, que pode ser paga em apenas um único pagamento.</p><br>
        <h4>Tabela Price</h4>
        <p>Tabela Price, também chamado de sistema francês de amortização, é um método usado em amortização de empréstimo cuja principal característica é apresentar prestações (ou parcelas) iguais, usa o regime de juros compostos para calcular o valor das parcelas de um empréstimo.</p><br>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
