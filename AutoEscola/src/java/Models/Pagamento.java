/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Administrador
 */
@Entity
@Table(catalog = "auto_escola", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Pagamento.findAll", query = "SELECT p FROM Pagamento p")
    , @NamedQuery(name = "Pagamento.findById", query = "SELECT p FROM Pagamento p WHERE p.id = :id")
    , @NamedQuery(name = "Pagamento.findBySituacao", query = "SELECT p FROM Pagamento p WHERE p.situacao = :situacao")
    , @NamedQuery(name = "Pagamento.findByAvista", query = "SELECT p FROM Pagamento p WHERE p.avista = :avista")
    , @NamedQuery(name = "Pagamento.findByValor", query = "SELECT p FROM Pagamento p WHERE p.valor = :valor")
    , @NamedQuery(name = "Pagamento.findByNumParcelas", query = "SELECT p FROM Pagamento p WHERE p.numParcelas = :numParcelas")
    , @NamedQuery(name = "Pagamento.findByValorParcelas", query = "SELECT p FROM Pagamento p WHERE p.valorParcelas = :valorParcelas")})
public class Pagamento implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(nullable = false)
    private Integer id;
    @Basic(optional = false)
    @Column(nullable = false, length = 15)
    private String situacao;
    @Basic(optional = false)
    @Column(nullable = false)
    private short avista;
    @Basic(optional = false)
    @Column(nullable = false)
    private long valor;
    @Column(name = "num_parcelas")
    private Integer numParcelas;
    @Column(name = "valor_parcelas")
    private Long valorParcelas;
    @OneToMany(mappedBy = "pagamentoId")
    private List<Aluno> alunoList;

    public Pagamento() {
    }

    public Pagamento(Integer id) {
        this.id = id;
    }

    public Pagamento(Integer id, String situacao, short avista, long valor) {
        this.id = id;
        this.situacao = situacao;
        this.avista = avista;
        this.valor = valor;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

    public short getAvista() {
        return avista;
    }

    public void setAvista(short avista) {
        this.avista = avista;
    }

    public long getValor() {
        return valor;
    }

    public void setValor(long valor) {
        this.valor = valor;
    }

    public Integer getNumParcelas() {
        return numParcelas;
    }

    public void setNumParcelas(Integer numParcelas) {
        this.numParcelas = numParcelas;
    }

    public Long getValorParcelas() {
        return valorParcelas;
    }

    public void setValorParcelas(Long valorParcelas) {
        this.valorParcelas = valorParcelas;
    }

    @XmlTransient
    public List<Aluno> getAlunoList() {
        return alunoList;
    }

    public void setAlunoList(List<Aluno> alunoList) {
        this.alunoList = alunoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Pagamento)) {
            return false;
        }
        Pagamento other = (Pagamento) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Models.Pagamento[ id=" + id + " ]";
    }
    
}
