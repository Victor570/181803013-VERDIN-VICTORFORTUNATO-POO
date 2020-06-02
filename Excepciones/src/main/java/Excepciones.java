
/**
 *
 * @author VICTOR
 */
public class Excepciones {
    public static void main(String args []){
        int numerador=20;
        int denominador=0;
        float division;
        System.out.println("Antes de la division");
        
        try{
        division=numerador/denominador;
        }catch (ArithmeticException e){
            System.out.println(e.getMessage());
            division=0;
        }
        System.out.println(division);
        System.out.println("Despues de la division");
    }
    
}
