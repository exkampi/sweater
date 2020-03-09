<#import "parts/common.ftlh" as c>
<#import "parts/list.ftlh" as l>

<@c.page "Добавить новое сообщение">
    <div class="form-group mt-3">
        <form action="/addMessage" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control" name="text" placeholder="Введите сообщение"/>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="tag" placeholder="Тэг"/>
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