<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>编辑auth策略</title>
</head>

<style type="text/css">
    body {
        text-align: center;
    }

    input[type=text] {
        width: 200px;
    }

    #replaceField {
        width: 400px;
    }
    #serviceApiParam {
        width: 400px;
    }

    #url {
        width: 800px;
    }
    #serviceApiName {
        width: 800px;
    }
</style>

<body>

<form action="${ctx}/editAuth" method="get">
    <input type="hidden" name="idStr" value="${auth.id}"/>
    <div>
        <label for="serviceType">微信类型*</label>
        <div>
            <input type="text" id="serviceType" name="serviceType" value="${auth.serviceType}" required>
        </div>
    </div>
    <div>
        <label for="code">code*</label>
        <div>
            <input type="text" id="code" name="code" value="${auth.code}" required>
        </div>
    </div>
    <div>
        <label for="url">url*</label>
        <div class="bigbox">
            <input type="text" id="url" name="url" value="${auth.url}" required>
        </div>
    </div>
    <div>
        <label for="replaceField">替换参数</label>
        <div>
            <input class="box" type="text" id="replaceField" name="replaceField" value="${auth.replaceField}">
        </div>
    </div>
    <div>
        <label for="isNeed">是否需要业务处理(1是0否)*</label>
        <div>
            <input type="text" id="isNeed" name="isNeed" value="${auth.isNeed}" required>
        </div>
    </div>
    <div>
        <label for="invokeType">调用方式(0PHP1Java)</label>
        <div>
            <input type="text" id="invokeType" name="invokeType" value="${auth.invokeType}">
        </div>
    </div>
    <div>
        <label for="serviceApiCode">业务系统名</label>
        <div>
            <input type="text" id="serviceApiCode" name="serviceApiCode" value="${auth.serviceApiCode}">
        </div>
    </div>
    <div>
        <label for="serviceApiName">PHP对应服务名Java对应url</label>
        <div>
            <input class="bigbox" type="text" id="serviceApiName" name="serviceApiName" value="${auth.serviceApiName}">
        </div>
    </div>
    <div>
        <label for="serviceApiMethod">PHP对应方法名Java对应请求方式</label>
        <div>
            <input type="text" id="serviceApiMethod" name="serviceApiMethod" value="${auth.serviceApiMethod}">
        </div>
    </div>
    <div>
        <label for="serviceApiParam">调用服务所需参数，逗号分隔</label>
        <div>
            <input class="box" type="text" id="serviceApiParam" name="serviceApiParam" value="${auth.serviceApiParam}">
        </div>
    </div>
    <div>
        <div>
            <button type="submit">
                <strong>保存</strong>
            </button>

            <a href="${ctx}/listAuth">
                <button type="button">返回</button>
            </a>
        </div>
    </div>
</form>

</body>
<script type="text/javascript">

</script>
</html>
