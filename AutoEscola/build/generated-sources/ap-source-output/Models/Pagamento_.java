package Models;

import Models.Aluno;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-10-01T15:39:53")
@StaticMetamodel(Pagamento.class)
public class Pagamento_ { 

    public static volatile SingularAttribute<Pagamento, String> situacao;
    public static volatile ListAttribute<Pagamento, Aluno> alunoList;
    public static volatile SingularAttribute<Pagamento, Long> valor;
    public static volatile SingularAttribute<Pagamento, Long> valorParcelas;
    public static volatile SingularAttribute<Pagamento, Short> avista;
    public static volatile SingularAttribute<Pagamento, Integer> id;
    public static volatile SingularAttribute<Pagamento, Integer> numParcelas;

}