<#macro message items>
    <div class="card-columns">
        <#list  items as message>
            <div class="card my-3">
                <#if message.filename??>
                    <img class="card-img-top" src="/img/${message.filename}" alt="${message.filename}">
                </#if>
                <div class="card-body m-2">
                    <h5 class="card-title">${message.tag}</h5>
                    <p class="card-text">${message.text}</p>
                </div>
                <div class="card-footer">
                    <i>${message.authorName}</i>
                </div>
            </div>
        <#else>
            No messages
        </#list>
    </div>
</#macro>