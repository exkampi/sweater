<#import "parts/common.ftlh" as c>
<#import "parts/auth.ftlh" as a>

<@c.page "Авторизация">
    <h1>Залогиньтесь пожалуйста</h1>
    <@a.login "/login" />

    <br/>
    <a href="/registration">Регистрация</a>
</@c.page>