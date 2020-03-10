<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label for="username" class="col-sm-2 col-form-label">Имя:</label>
            <div class="col-sm-10">
                <input type="text" id="username" name="username" placeholder="Введите имя"/>
            </div>
        </div>
        <div class="form-group row">
            <label for="password" class="col-sm-2 col-form-label">Пароль:</label>
            <div class="col-sm-10">
                <input type="password" id="password" name="password" placeholder="Введите пароль"/>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <label for="email" class="col-sm-2 col-form-label">Email:</label>
                <div class="col-sm-10">
                    <input type="email" id="email" name="email" placeholder="Введите адрес электронной почты"/>
                </div>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <br/>
        <div class="form-group row">
            <div class="col-sm-10">
                <#if !isRegisterForm><a href="/registration">Новый пользователь</a><#else><a
                        href="/login">Войти</a></#if>
                <button type="submit"
                        class="btn btn-primary ml-2"><#if isRegisterForm>Создать<#else>Войти</#if></button>
            </div>
        </div>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-primary">Выйти</button>
    </form>
</#macro>