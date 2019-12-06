<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台管理系统</title>
</head>

<style>
    #wrapper{
        padding-top: 100px;
        padding-left: 30%;
        border: 5px;
        align: center;
    }

    .aclass{
        text-decoration: none;
        display: block;
        width: 100px;
        height: 100px;
        font-size: 20px;
    }

    li{
        list-style: none;
    }
</style>

<body>
<div id="wrapper">
    <ul>
        <li><a href="${ctx}/listMenus" class="aclass">菜单管理</a></li>
        <li><a href="${ctx}/listAuth" class="aclass">auth管理</a></li>
        <li><a href="${ctx}/listReply" class="aclass">自动回复</a></li>
    </ul>
</div>

<script>

</script>
</body>
</html>
