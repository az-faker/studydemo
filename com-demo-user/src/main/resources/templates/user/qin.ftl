<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>do you need qin ?</title>


    <style type="text/css">
        body {
            padding-top: 13%;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            max-width: 300px;
            padding: 19px 29px 29px;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
        }

        .form-signin input[type="text"], .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }

        .btn-large {
            padding: 9px 14px;
            font-size: 16px;
            line-height: normal;
            border-radius: 5px
        }

        .btn-primary {
            color: #fff;
            background-color: #337ab7;
            border-color: #2e6da4
        }

        .form-control {
            display: block;
            width: 90%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
    </style>
</head>

<body>

<div class="container">
    <form action="${ctx}/login/qin" class="form-signin" id="qinForm" method="POST">
        <h3 class="form-signin-heading">是否需要庆余年？</h3>

        <button class="btn btn-large btn-primary" type="submit">是</button>
        <button class="btn btn-large btn-primary" type="button"><a href="${ctx}/login/login">否</a></button>
        <br>
        <br>
    </form>
</div>

</body>
</html>
