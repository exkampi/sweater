<#import "parts/common.ftlh" as c>

<@c.page "Авторизация">
    <h5>${username}</h5>

    <#if message??>
        ${message}
    </#if>

    <form method="post">
        <div class="form-group row">
            <label for="password" class="col-sm-2 col-form-label">Пароль:</label>
            <div class="col-sm-10">
                <input type="password" id="password" name="password" placeholder="Введите пароль"/>
            </div>
        </div>
        <div class="form-group row">
            <label for="email" class="col-sm-2 col-form-label">Email:</label>
            <div class="col-sm-10">
                <input type="email" id="email" name="email" placeholder="Введите адрес электронной почты"
                       value="${email!''}"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <br/>
        <div class="form-group row">
            <div class="col-sm-10">
                <button type="submit"
                        class="btn btn-primary ml-2">Сохранить
                </button>
            </div>
        </div>
    </form>
</@c.page>