<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>微信自动回复管理</title>
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
            <h2>微信自动回复管理</h2>
        </div>
        <div>
            <a href="${ctx}/addReplies">
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
                <th>自动回复内容</th>
                <th>回复参数</th>
                <th class="text-right">操作</th>
            </tr>
            </thead>
            <tbody>
					<#list replies as n>
                    <tr>
                        <td>${n.weChatType}</td>
                        <td>${n.replyContent}</td>
                        <td>${n.replyArg}</td>
                        <td>
                            <div>
                                <a href="${ctx }/findReply?id=${n.id}">
                                    <button id="edit">编辑</button>
                                </a>
                                <a href="${ctx }/delReply?id=${n.id}">
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
