<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>注册用户</title>
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
    #serviceApiName  {
        width: 800px;
    }
</style>

<body>

<form action="${ctx}/user" id="user" method="post">
    <div>
        <label for="username">用户名*</label>
        <div>
            <input type="text" id="username" name="username" required>
        </div>
    </div>
    <div>
        <label for="realName">真实姓名*</label>
        <div>
            <input type="text" id="realName" name="realName" required>
        </div>
    </div>
    <div>
        <label for="password">密码*</label>
        <div>
            <input class="text" type="text" id="password" name="password" required>
        </div>
    </div>
    <div>
        <label for="email">邮箱*</label>
        <div>
            <input class="box" type="text" id="email" name="email">
        </div>
    </div>
    <div>
        <label for="mobile">手机号*</label>
        <div>
            <input type="text" id="mobile" name="mobile" required>
        </div>
    </div>
    <div>
        <label for="address">地址*</label>
        <div>
            <input type="text" id="address" name="address">
        </div>
    </div>
    <div>
        <label for="sex">性别*(男输入1，女输入0)</label>
        <div>
            <input type="text" id="sex" name="sex">
        </div>
    </div>
    <div>
        <div>
            <button type="submit">
                <strong>保存</strong>
            </button>

            <a href="${ctx}/login/login">
                <button type="button">取消</button>
            </a>
        </div>
    </div>
</form>

</body>
<script type="text/javascript">

</script>
</html>
