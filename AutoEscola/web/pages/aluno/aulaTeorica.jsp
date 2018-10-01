<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container" style="margin-top: 50px; margin-bottom: 50px; width: 1000px;">
    <div class="container">

        <table class="table table-striped bg-light">
            <thead>
                <tr>
                    <th>Data</th>
                    <th>Tema</th>
                    <th>Professor</th>
                    <th>Quantidade Alunos</th>
                    <th td colspan="4">Ações</th>
                </tr>
            </thead>

            <tbody  id="tabela">
            <c:if test="${requestScope.teoricas.size() == 0}">
                    <tr>
                        <td colspan="4">  Não há Aulas Teóricas Cadastrados </td>
                    </tr>
                </c:if>
                <c:forEach items="${requestScope.teoricas}" var="m">
                    <tr>
                        <td>${m.dataAula}</td>
                        <td>${m.tema}</td>
                        <td>${m.professorId.nome}</td>
                        <td>${m.alunoList.size()}</td>
                        <td><a href="control?ac=participarTeorica&id=${m.id}"> <button type="button" class="btn btn-warning">Participar</button> </a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </div>
</div>
