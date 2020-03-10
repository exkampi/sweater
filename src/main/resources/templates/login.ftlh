<#import "parts/common.ftlh" as c>
<#import "parts/auth.ftlh" as a>

<@c.page "Авторизация">
    <#if message??>
        ${message}
    </#if>

    <h3 class="mb-4">Вход</h3>
    <@a.login "/login" false/>
</@c.page>