/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import DAO.AulaPraticaDAO;
import Interfaces.ICommander;
import Models.AulaPratica;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrador
 */
public class AulaPraticaAlunoViewAction implements ICommander{

    @Override
    public void executar(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        List<AulaPratica> praticas = new AulaPraticaDAO().getAll();
               
        RequestDispatcher rd = request.getRequestDispatcher("template.jsp?page=aluno/aulaPratica");
        request.setAttribute("praticas", praticas);
        rd.forward(request, response);
        
    }
    
}
