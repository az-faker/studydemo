<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>编辑自动回复</title>
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

<form action="${ctx}/editReply" method="get">
    <input type="hidden" name="idStr" value="${reply.id}" />
    <div>
        <label for="weChatType">微信类型*(如果重复，会创建失败)</label>
        <div>
        ${reply.weChatType }
        </div>
    </div>
    <div>
        <label for="replyContent">自动回复内容*</label>
        <div>
            <textarea id="replyContent" name="replyContent" required>${reply.replyContent}</textarea>
        </div>
    </div>
    <div>
        <label for="replyArg">回复参数</label>
        <div>
            <textarea id="replyArg" name="replyArg">${reply.replyArg}</textarea>
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
