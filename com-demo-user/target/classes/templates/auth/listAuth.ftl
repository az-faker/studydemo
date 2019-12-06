<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>微信auth策略管理</title>
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
            <h2>微信auth策略管理</h2>
        </div>
        <div>
            <a href="${ctx}/addAuths">
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
                <th>code</th>
                <th>url</th>
                <th>替换参数</th>
                <th>是否需要业务处理</th>
                <th>调用方式</th>
                <th>业务系统名</th>
                <th>服务名/URL</th>
                <th>方法名</th>
                <th>所需参数</th>
                <th class="text-right">操作</th>
            </tr>
            </thead>
            <tbody>
					<#list strategies as n>
                    <tr>
                        <td>${n.serviceType }</td>
                        <td>${n.code }</td>
                        <td>${n.url }</td>
                        <td>${n.replaceField}</td>
                        <td>${n.isNeed}</td>
                        <td>${n.invokeType}</td>
                        <td>${n.serviceApiCode}</td>
                        <td>${n.serviceApiName}</td>
                        <td>${n.serviceApiMethod}</td>
                        <td>${n.serviceApiParam}</td>
                        <td>
                            <div>
                                <a href="${ctx }/findAuth?id=${n.id}">
                                    <button id="edit">编辑</button>
                                </a>
                                <a href="${ctx }/delAuth?id=${n.id}">
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
