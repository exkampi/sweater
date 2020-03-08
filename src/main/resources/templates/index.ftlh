<#import "parts/common.ftlh" as c>
<#import "parts/auth.ftlh" as a>

<@c.page "Главная страница">
    <h1>Добро пожаловать на главную страницу!</h1>

    <form action="/" method="get">
        <input type="text" name="filter" placeholder="Введите тэг" value="${filter!}" />
        <button type="submit">Найти</button>
    </form>

    <p>Список сообщений:</p>
    <#list  messages as message>
        <div>
            <span>${message.id}</span>
            <b>${message.tag}</b>
            <i>${message.text}</i>
            <strong>${message.authorName}</strong>
            <div>
                <#if message.filename??>
                    <img src="/img/${message.filename}" alt="${message.filename}">
                </#if>
            </div>
        </div>
    <#else>
        No messages
    </#list>

    <p><a href="/greeting">Позвольте поздороваться с вами</a></p>
    <p><a href="/addMessage">Добавить сообщение</a></p>
    <p><a href="/user">Список пользователей</a></p>
    <@a.logout/>

</@c.page>