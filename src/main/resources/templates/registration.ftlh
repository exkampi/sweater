<#import "parts/common.ftlh" as c>
<#import "parts/auth.ftlh" as a>

<@c.page "Регистрация">
<h1>Страница регистрации</h1>

<p>Форма регистрации:</p>
<@a.login "/registration" />

<br/>
<a href="/login">Войти</a>

</@c.page>