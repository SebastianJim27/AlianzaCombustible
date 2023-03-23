<%@page import="NavesAlianza.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>calculo</title>
        <link href="jsp.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="fondo">
        <h1>Datos de todas las naves</h1>
        <%
            //Halcon
            String tipoNaveHM = request.getParameter("tipoNaveHM");
            int nPersonasHM = Integer.parseInt(request.getParameter("nPersonasHM"));
            double consumoHM = Double.parseDouble(request.getParameter("combustibleHM"));
            int nTipoNavesHM = Integer.parseInt(request.getParameter("nNavesHM"));
            double distanciaHM = Double.parseDouble(request.getParameter("distanciaHM"));
            
            Naves nv = new Naves();
            nv.setTipo(tipoNaveHM);
            nv.setCantidadTipos(nTipoNavesHM);
            nv.setPersonasTransportadas(nPersonasHM);
            nv.setConsumoPorParsec(consumoHM);
            nv.setDistancia(distanciaHM);
            double consumoToHM = nv.consumoTotal(nv.getConsumoPorParsec(),nv.getDistancia());
            String datosHM = nv.imprimirNaves();
        %>
        <h2><%= datosHM%> consumo de cada nave <%= consumoToHM%></h2>
        
        <%
            //Destructor estelar
            String tipoNaveDE = request.getParameter("tipoNaveDE");
            int nPersonasDE = Integer.parseInt(request.getParameter("nPersonasDE"));
            double consumoDE = Double.parseDouble(request.getParameter("combustibleDE"));
            int nTipoNavesDE = Integer.parseInt(request.getParameter("nNavesDE"));
            double distanciaDE = Double.parseDouble(request.getParameter("distanciaDE"));
            
            Naves nv2 = new Naves();
            nv2.setTipo(tipoNaveDE);
            nv2.setCantidadTipos(nTipoNavesDE);
            nv2.setPersonasTransportadas(nPersonasDE);
            nv2.setConsumoPorParsec(consumoDE);
            nv2.setDistancia(distanciaDE);
            double consumoToDE = nv2.consumoTotal(nv2.getConsumoPorParsec(),nv2.getDistancia());
            String datosDE = nv2.imprimirNaves();        
        %>
        
            <h2><%= datosDE%> consumo de cada nave <%= consumoToDE%></h2>
        
        <%
            //lanzadera Imperial
            String tipoNaveLI = request.getParameter("tipoNaveLI");
            int nPersonasLI = Integer.parseInt(request.getParameter("nPersonasLI"));
            double consumoLI = Double.parseDouble(request.getParameter("combustibleLI"));
            int nTipoNavesLI = Integer.parseInt(request.getParameter("nNavesLI"));
            double distanciaLI = Double.parseDouble(request.getParameter("distanciaLI"));
            
            Naves nv3 = new Naves();
            nv3.setTipo(tipoNaveLI);
            nv3.setCantidadTipos(nTipoNavesLI);
            nv3.setPersonasTransportadas(nPersonasLI);
            nv3.setConsumoPorParsec(consumoLI);
            nv3.setDistancia(distanciaLI);
            double consumoToLI = nv3.consumoTotal(nv3.getConsumoPorParsec(),nv3.getDistancia());
            String datosLI = nv3.imprimirNaves();
        %>    
            <h2><%= datosLI%> consumo de cada nave <%= consumoToLI%></h2>
            
            
        <%
            //Supremacy
            String tipoNaveS = request.getParameter("tipoNaveS");
            int nPersonasS = Integer.parseInt(request.getParameter("nPersonasS"));
            double consumoS = Double.parseDouble(request.getParameter("combustibleS"));
            int nTipoNavesS = Integer.parseInt(request.getParameter("nNavesS"));
            double distanciaS = Double.parseDouble(request.getParameter("distanciaS"));
            int nNavesS = Integer.parseInt(request.getParameter("nNavesTraS"));
            
            Supremacy sp = new Supremacy();
            sp.setTipo(tipoNaveS);
            sp.setCantidadTipos(nTipoNavesS);
            sp.setPersonasTransportadas(nPersonasS);
            sp.setConsumoPorParsec(consumoS);
            sp.setDistancia(distanciaS);
            sp.setNumNaves(nNavesS);
            
            double consumoToS = sp.consumoTotal(sp.getConsumoPorParsec(),sp.getDistancia());
            double consumotoS2 = sp.calculoCombusSup(consumoToS,nNavesS);
            String datosS = sp.imprimirNaves(); 
        %>
            <h2><%= datosS%> consumo de cada nave <%= consumotoS2%></h2>
        
        <%
            //At At
            String tipoNaveAt = request.getParameter("tipoNaveAt");
            int nPersonasAt = Integer.parseInt(request.getParameter("nPersonasAt"));
            double consumoAt = Double.parseDouble(request.getParameter("combustibleAt"));
            int nTipoNavesAt = Integer.parseInt(request.getParameter("nNavesAt"));
            double distanciaAt = Double.parseDouble(request.getParameter("distanciaAt"));
            
            Atat at = new Atat();
            at.setTipo(tipoNaveAt);
            at.setCantidadTipos(nTipoNavesAt);
            at.setPersonasTransportadas(nPersonasAt);
            at.setConsumoPorParsec(consumoAt);
            at.setDistancia(distanciaAt);
            
            double consumoToAt = at.consumoTotal(at.getConsumoPorParsec(),at.getDistancia());
            double consumoToAt2 = at.calculoCombusAt(consumoToAt);
            String datosAt = at.imprimirNaves();   
        %>
        
            <h2><%= datosAt%> consumo de cada nave <%= consumoToAt2%></h2>
            
        <%
            Naves tot = new Naves();
            double totalCom = tot.totalcombustible(consumoToHM,nTipoNavesHM,consumoToDE,nTipoNavesDE,consumoToLI,nTipoNavesLI,consumotoS2,nTipoNavesS,consumoToAt2,nTipoNavesAt);
        %>
            <br><h1>Total de combustible para la guerra es <%= totalCom%></h1>
        </div>
    </body>
</html>
