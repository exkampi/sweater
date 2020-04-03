<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label for="username" class="col-sm-2 col-form-label">Имя:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       value="<#if user??>${user.username}</#if>" id="username" name="username"
                       placeholder="Введите имя"/>
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label for="password" class="col-sm-2 col-form-label">Пароль:</label>
            <div class="col-sm-10">
                <input type="password" class="form-control ${(passwordError??)?string('is-invalid', '')}"
                       id="password" name="password"
                       placeholder="Введите пароль"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <label for="password2" class="col-sm-2 col-form-label">Повторите пароль:</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control ${(password2Error??)?string('is-invalid', '')}"
                           id="password2" name="password2"
                           placeholder="Введите пароль второй раз"/>
                    <#if password2Error??>
                        <div class="invalid-feedback">
                            ${password2Error}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group row">
                <label for="email" class="col-sm-2 col-form-label">Email:</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control ${(emailError??)?string('is-invalid', '')}"
                           value="<#if user??>${user.email}</#if>" id="email" name="email"
                           placeholder="Введите адрес электронной почты"/>
                    <#if emailError??>
                        <div class="invalid-feedback">
                            ${emailError}
                        </div>
                    </#if>
                </div>
            </div>
            <div>
                <div class="g-recaptcha" data-sitekey="6LcBQ-UUAAAAAGB_dcOrHNm6Vny2tV3CfqR5iwbA"></div>
                <#if captchaError??>
                    <div class="alert alert-danger" role="alert">
                        ${captchaError}
                    </div>
                </#if>
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