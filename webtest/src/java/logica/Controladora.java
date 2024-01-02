/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.util.List;
import persistence.ControladoraPersistencia;


/**
 *
 * @author gabyg
 */
public class Controladora {

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    //create
    public void crearOradores(Oradores oro){
        controlPersis.crearOrador(oro);
    }
    
    //lectura
    public List<Oradores> traerOradores(){
        return controlPersis.traerOradores();
}
}
