<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="margin-top: 50px; margin-bottom: 50px; margin-left: 5px; margin-right: 5px;">
    <div>

        <table class="table table-striped table-bordered bg-light">
            <thead>
                <tr>
                    <th>Matricula</th>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>Data de Nascimento</th>
                    <th>Email</th>
                    <th>Matriculado</th>
                    <th>Pagamento</th>
                    <th colspan="4">Ações</th>
                </tr>
            </thead>

            <tbody  id="tabela">
            <c:if test="${requestScope.alunos.size() == 0}">
                    <tr>
                        <td colspan="4">  Não há Alunos Cadastrados </td>
                    </tr>
                </c:if>
                <c:forEach items="${requestScope.alunos}" var="a">
                    <tr>
                        <td>${a.matricula}</td>
                        <td>${a.nome}</td>
                        <td>${a.cpf}</td>
                        <td>${a.dataNascimento}</td>
                        <td>${a.email}</td>
                        
                        <c:if test="${a.matriculado}">
                            <td>SIM</td>
                        </c:if>
                        <c:if test="${!a.matriculado}">
                            <td>PRÉ MATRICULADO</td>
                        </c:if>
                           
                        <c:if test="${a.pagamentoId != null}">
                            <td>${a.pagamentoId.situacao}</td>
                        </c:if>
                        <c:if test="${a.pagamentoId == null}">
                            <td>A PAGAR</td>
                        </c:if>
                        <td><a href="control?ac=dadosAluno&id=${a.matricula}"> <button type="button" class="btn btn-warning">Alterar Dados</button> </a></td>
                        <td><a href="control?ac=cancelaMatricula&id=${a.matricula}"> <button type="button" class="btn btn-danger">Cancelar Matrícula</button> </a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </div>
</div>