<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>编辑菜单</title>
</head>

<style type="text/css">
    body {
        text-align: center;
    }

    #menuInfo {
        width: 70%;
        height: 500px;
    }

    input[type=text] {
        width: 200px;
    }
</style>

<body>

<form action="${ctx}/editMenu" method="get">
    <input type="hidden" name="idStr" value="${menu.id }" />
    <div>
        <label for="weChatType">微信类型</label>
        <div>
            ${menu.weChatType }
        </div>
    </div>
    <div>
        <label for="menuInfo">菜单json</label>
        <div>
            <textarea id="menuInfo" name="menuInfo" required>${menu.menuInfo }</textarea>
        </div>
    </div>
    <div>
        <label for="param">参数</label>
        <div>
            <input type="text" id="param" name="param" value="${menu.param }" required>
        </div>
    </div>
    <div>
        <label for="menuKey">菜单key</label>
        <div>
            <input type="text" id="menuKey" name="menuKey" value="${menu.menuKey }" required>
        </div>
    </div>
    <div>
        <div>
            <button type="submit">
                <strong>保存</strong>
            </button>

            <a href="${ctx}/listMenus">
                <button type="button">返回</button>
            </a>
        </div>
    </div>
</form>

</body>
<script type="text/javascript">

</script>
</html>
