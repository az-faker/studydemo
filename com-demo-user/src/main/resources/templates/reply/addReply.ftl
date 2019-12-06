<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>添加自动回复</title>
</head>

<style type="text/css">
    body {
        text-align: center;
    }

    #replyContent {
        width: 70%;
        height: 251px;
    }

    #replyArg {
        width: 70%;
        height: 251px;
    }
</style>

<body>

<form action="${ctx}/addReply" method="get">
    <div>
        <div>
            <p>如果已存在会创建失败</p>
        </div>
        <label for="weChatType">微信类型*</label>
        <div>
            <input type="text" id="weChatType" name="weChatType"" required>
        </div>
    </div>
    <div>
        <label for="replyContent">自动回复内容*</label>
        <div>
            <textarea id="replyContent" name="replyContent" required></textarea>
        </div>
    </div>
    <div>
        <label for="replyArg">回复参数</label>
        <div>
            <textarea id="replyArg" name="replyArg"></textarea>
        </div>
    </div>
    <div>
        <div>
            <button type="submit">
                <strong>保存</strong>
            </button>

            <a href="${ctx}/listReply">
                <button type="button">返回</button>
            </a>
        </div>
    </div>
</form>

</body>
<script type="text/javascript">

</script>
</html>
