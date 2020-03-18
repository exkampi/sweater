<#import "parts/common.ftlh" as c>
<#import "parts/list.ftlh" as l>

<@c.page "Добавить новое сообщение">
    <div class="form-group mt-3">
        <form action="/addMessage" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control ${(textError??)?string('is-invalid', '')}" name="text"
                       placeholder="Введите сообщение" value="<#if message??>${message.text}</#if>"/>
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <input type="text" class="form-control ${(tagError??)?string('is-invalid', '')}" name="tag"
                       placeholder="Тэг" value="<#if message??>${message.tag}</#if>"/>
                <#if tagError??>
                    <div class=" invalid-feedback">
                        ${tagError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <label class="custom-file-label" for="customFile"></label>
                    <input type="file" class="form-control" id="customFile" name="file"/>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit" class="btn btn-primary">Добавить</button>
        </form>
    </div>

    <@l.message messages/>
</@c.page>