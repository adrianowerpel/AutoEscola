/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Models.Aluno;
import Models.Login;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author Administrador
 */
public class AlunoDAO extends GenericDAO{
    
    public void save(Aluno aluno) {
    
        EntityManager em = null;
        try{
            em = Open();
            em.getTransaction().begin();
            em.persist(aluno);
            em.getTransaction().commit();
        }
        finally{
            if(em != null){
                em.close();
            }
        }
    }
    
    public Aluno BuscarPorLogin(Login idLogin) {
    
        EntityManager em = null;
        try{            
            em = Open();
            String jpql = "select a from Aluno a where a.loginId = :idLogin";
            
            Query q = em.createQuery(jpql);
            q.setParameter("idLogin", idLogin);
            
            Aluno aluno = (Aluno) q.getSingleResult();
            
            return aluno;
        }
        catch(NoResultException e){
            return null;
        }
        catch(NonUniqueResultException e){
            return null;
        }
        finally{
           if(em != null){
                em.close();
            } 
        }
    }
    
    public void edit(Aluno aluno) {
        EntityManager em = null;
        try {
            em = Open();
            em.getTransaction().begin();
            em.merge(aluno);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }    
    }
    
}
