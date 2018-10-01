<div class="container" style="margin-top: 50px; margin-bottom: 50px; width: 800px;">
    <div class="container">

        <h3>Dados Pessoais</h3>
        <hr>
        <form action="control" method="POST">
            <input type="hidden" name="ac" value="gravarUser" />
            <div class="form-group">
                <label for="matricula">Matricula:</label>
                <input id="matricula" name="matricula" disabled="disabled" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="nome">Nome Completo:</label>
                <input id="nome" name="nome" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="cpf">CPF:</label>
                <input id="cpf" name="cpf" class="form-control" type="number" max="99999999999" placeholder="Somente números">
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input id="email" name="email" class="form-control" type="email">
            </div>
            <div class="form-group">
                <label for="dt_nasc">Data Nascimento:</label>
                <input id="dt_nasc" class="form-control" name="dt_nasc" type="date">
            </div>
            
            <br>
            <h3>Endereço</h3>
            <hr>
            <div class="form-group">
                <label for="nome">Logradouro:</label>
                <input id="logradouro" name="logradouro" class="form-control" type="text" placeholder="Rua XXX ou avenida XXX">
            </div>
            <div class="form-group">
                <label for="nome">Numero:</label>
                <input id="numero" name="numero" class="form-control" type="number">
            </div>
            <div class="form-group">
                <label for="nome">Complemento:</label>
                <input id="complemento" name="complemento" class="form-control" type="text" placeholder="Apto XXX ou casa XX">
            </div>
            <div class="form-group">
                <label for="nome">Bairro:</label>
                <input id="bairro" name="bairro" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="nome">Cidade:</label>
                <input id="cidade" name="cidade" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="nome">Estado:</label>
                <select class="form-control" name="estado" id="estado">
                    <option value="AC"> AC </option>
                    <option value="AL"> AL </option>
                    <option value="AP"> AP </option>
                    <option value="AM"> AM </option>
                    <option value="BA"> BA </option>
                    <option value="CE"> CE </option>
                    <option value="DE"> DF </option>
                    <option value="ES"> ES </option>
                    <option value="GO"> GO </option>
                    <option value="MA"> MA </option>
                    <option value="MT"> MT </option>
                    <option value="MS"> MS </option>
                    <option value="MG"> MG </option>
                    <option value="PA"> PA </option>
                    <option value="PB"> PB </option>
                    <option value="PR"> PR </option>
                    <option value="PE"> PE </option>
                    <option value="PI"> PI </option>
                    <option value="RJ"> RJ </option>
                    <option value="RN"> RN </option>
                    <option value="RS"> RS </option>
                    <option value="RO"> RO </option>
                    <option value="RR"> RR </option>
                    <option value="SC"> SC </option>
                    <option value="SP"> SP </option>
                    <option value="SE"> SE </option>
                    <option value="TO"> TO </option>
                </select>
            </div>
            
            <br>
            <h3>Login</h3>
            <div class="form-group">
                <label for="cpf">Login:</label>
                <input id="login" name="login" class="form-control" type="text" minlength="8" maxlength="25" placeholder="Digite o Login">
            </div>
            <div class="form-group">
                <label for="cpf">Senha:</label>
                <input id="senha" name="senha" class="form-control" type="password" minlength="10" maxlength="25" placeholder="Digite a Senha">
            </div>
            <div>
                <button class="btn btn-primary" type="submit"> Salvar</button>
            </div>
        </form>
    </div>
</div>
