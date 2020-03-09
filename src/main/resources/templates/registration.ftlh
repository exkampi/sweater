<#import "parts/common.ftlh" as c>
<#import "parts/auth.ftlh" as a>

<@c.page "Регистрация">
    <#if message??>
        ${message}
    </#if>

    <h3 class="mb-4">Новый пользователь</h3>
    <@a.login "/registration" true/>
</@c.page>