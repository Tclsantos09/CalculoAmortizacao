<%-- 
    Document   : amortizacao-constante
    Created on : 11/09/2018, 09:54:43
    Author     : thais.lopes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Constante</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Amortização Constante</h1>
        <form method='get'>
            Valor Financiado (em Reais): <input type="text" name="valorFinaciado"/>
            Período (em meses): <input type="number" name="periodoFinanciado" max='12'/>
            Taxa de Juros (%): <input type="text" name="taxaJuros"/>
            Número de parcelas: <input type="number" name="nParcelas" min='1'/>
            Perído da taxa: <input type="radio" name="periodoTaxa" value="anual"> Anual<br>
                            <input type="radio" name="periodoTaxa" value="mensal"> Mensal<br>
            <input type="submit" value="Calcular"/>
        </form>
            <%-- if(request.getParameter("") = ""){
                try{
                    
			}catch(Exception ex){
                    out.println("Não é valido");
                }
            }
	--%>
    </body>
</html>
