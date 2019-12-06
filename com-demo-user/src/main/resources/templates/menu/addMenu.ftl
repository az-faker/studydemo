<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>新建菜单</title>
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

<form action="${ctx}/addMenu" method="get">
    <div>
        <label for="weChatType">微信类型*</label>
        <div>
            <input type="text" id="weChatType" name="weChatType"" required>
        </div>
    </div>
    <div>
        <label for="menuInfo">菜单json*</label>
        <div>
            <textarea id="menuInfo" name="menuInfo" required></textarea>
        </div>
    </div>
    <div>
        <label for="param">参数</label>
        <div>
            <input type="text" id="param" name="param">
        </div>
    </div>
    <div>
        <label for="menuKey">菜单key</label>
        <div>
            <div>
                <p>如果用来初始化菜单信息，必须与weChatType相等</p>
            </div>
            <input type="text" id="menuKey" name="menuKey" required>
        </div>
    </div>
    <div>
        <div>
            <button type="submit">
                <strong>保存</strong>
            </button>

            <a href="${ctx}/listMenus">
                <button type="button">取消</button>
            </a>
        </div>
    </div>
</form>

</body>
<script type="text/javascript">

</script>
</html>
