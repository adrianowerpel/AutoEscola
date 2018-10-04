package Models;

import Models.AulaPratica;
import Models.AulaTeorica;
import Models.Login;
import Models.Pagamento;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-10-01T15:39:53")
@StaticMetamodel(Aluno.class)
public class Aluno_ { 

    public static volatile SingularAttribute<Aluno, Pagamento> pagamentoId;
    public static volatile SingularAttribute<Aluno, String> cidade;
    public static volatile SingularAttribute<Aluno, String> estado;
    public static volatile SingularAttribute<Aluno, Login> loginId;
    public static volatile SingularAttribute<Aluno, String> numero;
    public static volatile SingularAttribute<Aluno, String> bairro;
    public static volatile SingularAttribute<Aluno, String> nome;
    public static volatile ListAttribute<Aluno, AulaTeorica> aulaTeoricaList;
    public static volatile SingularAttribute<Aluno, String> complemento;
    public static volatile SingularAttribute<Aluno, Short> matriculado;
    public static volatile ListAttribute<Aluno, AulaPratica> aulaPraticaList;
    public static volatile SingularAttribute<Aluno, String> logradouro;
    public static volatile SingularAttribute<Aluno, Integer> matricula;
    public static volatile SingularAttribute<Aluno, String> cpf;
    public static volatile SingularAttribute<Aluno, Date> dataNascimento;
    public static volatile SingularAttribute<Aluno, String> email;

}