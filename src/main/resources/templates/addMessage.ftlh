<#import "parts/common.ftlh" as c>

<@c.page "Добавить новое сообщение">
    <form action="/addMessage" method="post">
        <input type="text" name="text" placeholder="Введите сообщение"/>
        <input type="text" name="tag" placeholder="Тэг"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Добавить</button>
    </form>

    <p>Список сообщений:</p>
    <#list  messages as message>
        <div>
            <span>${message.id}</span>
            <b>${message.tag}</b>
            <i>${message.text}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
        No messages
    </#list>

</@c.page>