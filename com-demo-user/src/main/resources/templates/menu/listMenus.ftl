<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>微信菜单管理</title>
</head>

<style>
    a {
        text-decoration: none;
    }
</style>

<body>

<div>
    <div>
        <div>
            <h2>微信菜单管理</h2>
        </div>
        <div>
            <a href="${ctx}/addMenus">
                <button>新建</button>
            </a>
        </div>
        <div>
            <a href="${ctx}/index">
                <button>返回</button>
            </a>
        </div>
    </div>

    <div>
        <table border="1">
            <thead>
            <tr>
                <th>微信类型</th>
                <th>菜单json</th>
                <th>参数</th>
                <th>菜单key</th>
                <th class="text-right">操作</th>
            </tr>
            </thead>
            <tbody>
					<#list menus as n>
                    <tr>
                        <td>${n.weChatType }</td>
                        <td>${n.menuInfo }</td>
                        <td>${n.param}</td>
                        <td>${n.menuKey}</td>
                        <td>
                            <div>
                                <a href="${ctx }/findMenu?id=${n.id}">
                                    <button id="edit">编辑</button>
                                </a>
                                <a href="${ctx }/delMenu?id=${n.id}">
                                    <button id="edit">删除</button>
                                </a>

                            </div>
                        </td>
                    </tr>
                    </#list>
            </tbody>
        </table>

    </div>
</div>


<script>
</script>
</body>
</html>
