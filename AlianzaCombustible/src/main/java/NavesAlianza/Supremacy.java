package NavesAlianza;

public class Supremacy extends Naves{
    
    private int numNaves;

    public int getNumNaves() {
        return numNaves;
    }

    public void setNumNaves(int numNaves) {
        this.numNaves = numNaves;
    }
    
    public Supremacy(){
        
    }

    public Supremacy(int numNaves, String tipo, int personasTransportadas, double consumoPorParsec, int cantidadTipos, double distancia) {
        super(tipo, personasTransportadas, consumoPorParsec, cantidadTipos, distancia);
        this.numNaves = numNaves;
    }
    
    public double calculoCombusSup(double com, int numnav){
        
        return com+(com*0.1*numnav);    
    }
    @Override
    public String imprimirNaves() {
        return "<br>Tipo: " + tipo +
                "<br><br>Personas transportadas: " + personasTransportadas +
                "<br>Consumo por parsec: " + consumoPorParsec + " L" +
                "<br>Distancia recorrida en parsecs " + distancia +
                "<br>Cantidad de tipos de nave: " + cantidadTipos +
                "<br>Cantidad de naves que transporta " + numNaves ;
    }
    /*public void imprimirSp(String imp){
        
        imprimirNaves();
   
        imp = "Numero de naves que transporta: " + numNaves;
        
    }*/
}
