package NavesAlianza;

public class Atat extends Naves{

    public Atat() {
    }

    public Atat(String tipo, int personasTransportadas, double consumoPorParsec, int cantidadTipos, double distancia) {
        super(tipo, personasTransportadas, consumoPorParsec, cantidadTipos, distancia);
    }
    
    public double calculoCombusAt(double com){
        
        return com-(com*0.25);
    }
    
}
