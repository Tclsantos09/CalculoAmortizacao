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
        <style>
            body{
                padding-bottom:100px;
            }
            
             h2,h3{
                text-align: center;
                font-size: x-large;
            }
            
            p{
                text-align: center;
            }
            
            #alinha{
                width:2000px;
                height:80px;
                margin:0px auto;
            }
            
            #alinha h5{
                font-family: arial;
                font-style: italic;
                font-weight: normal;
                font-size: medium;
                width:300px;
                height:auto;
                margin:0;
                padding:0;
                display:inline-block;
            }
            
            #alinha1{
                width: 1600px;
                height: 80px;
                margin: 0px auto;  
            }
            
            #alinha1 ul{
                  width:450px;
                height:auto;
                margin:0;
                padding:0;
                display:inline-block;
            }
        </style>    
    </head>
    
    <div class="header">
        <%@include file="WEB-INF/jspf/header.jspf" %>
    </div>
    
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Home</h1>
        <h2> Amortização constante e americana </h2>
        <p> Projeto elaborado para compreenção de aplicação do JSP no desenvolvimento de aplicações voltadas para web.</p>
        <h3>Equipe de desenvolvimento</h3>
        <div id="alinha">
            <h5>Cassiano Lucas Vieira</h5><h5>Andrea Xavier</h5><h5> Arthur de la mano</h5> <h5>Gustavo carvalho</h5><h5>Thaís Lopes</h5>
        </div>
        <div id ="alinha1">
            <ul>   
                <h4>Amortização Constante</h4>
                <li><p1>Sistema de Amortização Constante ou (SAC) é uma forma de amortização de um empréstimo por prestações que incluem os juros, amortizando assim partes iguais do valor total do empréstimo. Nesse sistema o saldo devedor é reembolsado em valores de amortização iguais.</p1></li><br>
            </ul>
            &ensp;&ensp;&ensp;&ensp;
            <ul>
                <h4>Amortização Americana</h4>
                <li><p1>Sistema de Amortização Americano é uma forma de pagamento de empréstimos que se caracteriza pelo pagamento apenas dos juros da dívida,deixando o valor da dívida constante, que pode ser paga em apenas um único pagamento.</p1></li><br>
            </ul>
            &ensp;&ensp;&ensp;&ensp;
            <ul>
                <h4>Tabela Price</h4>
                <li><p1>Tabela Price, também chamado de sistema francês de amortização, é um método usado em amortização de empréstimo cuja principal característica é apresentar prestações (ou parcelas) iguais, usa o regime de juros compostos para calcular o valor das parcelas de um empréstimo.</p1></li>
            </ul>
        </div>
    </body>
    
    <div class="footer">
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </div>
    
</html>
