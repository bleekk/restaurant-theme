<div class="loginform">
    <form action="<{xoAppUrl user.php}>" method="post" role="form">
        <div class="form-group">
            <{$block.lang_username}>
            <input class="form-control" type="text" name="uname" placeholder="<{$smarty.const.THEME_LOGIN}>">
        </div>

        <div class="form-group">
            <{$block.lang_password}>
            <input class="form-control" type="password" name="pass" placeholder="<{$smarty.const.THEME_PASS}>">
        </div>

        <div class="checkbox">
            <label>
                <{if isset($block.lang_rememberme)}>
                    <input type="checkbox" name="rememberme" value="On" class="formButton">
                    <{$block.lang_rememberme}>
                <{/if}>
            </label>
        </div>

        <input type="hidden" name="xoops_redirect" value="<{$xoops_requesturi}>">
        <input type="hidden" name="op" value="login">
        <input type="submit" class="btn btn-primary btn-block btn-sm" value="<{$block.lang_login}>">
        <{$block.sslloginlink}>
    </form>
    <div class="login-buttons">
    <a class="btn btn-info btn-xs pull-left" style="width: 49%" href="<{xoAppUrl user.php}>" title="<{$block.lang_lostpass}>"><{$block.lang_lostpass}></a>
    <a class="btn btn-info btn-xs pull-right" style="width: 49%" href="<{xoAppUrl register.php}>" title="<{$block.lang_registernow}>"><{$block.lang_registernow}></a>
    </div>
</div>
