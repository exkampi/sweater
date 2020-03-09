<#import "parts/common.ftlh" as c>
<#import "parts/list.ftlh" as list>

<@c.page "Главная страница">
    <div class="form-row row">
        <div class="form-group col">
            <form action="/" method="get" class="form-inline">
                <input type="text" class="form-control col" name="filter" placeholder="Поиск по тэгу" value="${filter!}"/>
                <button type="submit" class="btn btn-primary ml-2">Найти</button>
            </form>
        </div>
    </div>

    <@list.message messages/>
</@c.page>