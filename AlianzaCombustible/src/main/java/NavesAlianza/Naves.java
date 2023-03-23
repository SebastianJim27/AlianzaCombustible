package NavesAlianza;

public class Naves {
    
    protected String tipo;
    protected int personasTransportadas;
    protected double consumoPorParsec;
    protected int cantidadTipos;
    protected double distancia;

    public Naves(){
        
    }
    
    public Naves(String tipo, int personasTransportadas, double consumoPorParsec, int cantidadTipos, double distancia) {
        this.tipo = tipo;
        this.personasTransportadas = personasTransportadas;
        this.consumoPorParsec = consumoPorParsec;
        this.cantidadTipos = cantidadTipos;
        this.distancia = distancia;
    }
    
    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    public int getPersonasTransportadas() {
        return personasTransportadas;
    }

    public void setPersonasTransportadas(int personasTransportadas) {
        this.personasTransportadas = personasTransportadas;
    }

    public double getConsumoPorParsec() {
        return consumoPorParsec;
    }

    public void setConsumoPorParsec(double consumoPorParsec) {
        this.consumoPorParsec = consumoPorParsec;
    }

    public int getCantidadTipos() {
        return cantidadTipos;
    }

    public void setCantidadTipos(int cantidadTipos) {
        this.cantidadTipos = cantidadTipos;
    }

    public double getDistancia() {
        return distancia;
    }

    public void setDistancia(double distancia) {
        this.distancia = distancia;
    }


    public double consumoTotal(double con, double dis) {
        return dis*con;
    }
    
    public double totalcombustible(double con,int cant, double con2,int cant2,double con3,int cant3,double con4,int cant4,double con5,int cant5){
        return ((con*cant) + (con2*cant2) + (con3*cant3) + (con4*cant4) + (con5*cant5));
    }
    
    
    public String imprimirNaves() {
        return "<br>Tipo: " + tipo +
                "<br><br>Personas transportadas: " + personasTransportadas +
                "<br>Consumo por parsec: " + consumoPorParsec + " L" +
                "<br>Distancia recorrida en parsecs " + distancia +
                "<br>Cantidad de tipos de nave: " + cantidadTipos + "<br>"; 
                
    }
}
