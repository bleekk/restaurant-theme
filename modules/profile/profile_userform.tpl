<div class="col-lg-6">	

<form action="user.php" method="post">

<legend class="bold"><{$lang_login}></legend>
<div class="form-group">
    <label for="username"><{$lang_username}></label>
    <input type="text" class="form-control" name="uname" style="width:250px" value="<{$usercookie}>" />
</div>
<div class="form-group">
    <label for="username"><{$lang_password}></label>
    <input type="password" class="form-control" name="pass" style="width:250px" />
</div>
    <{if isset($lang_rememberme)}>
    <div class="checkbox">
    	<label>
        <input type="checkbox" name="rememberme" value="On" checked /> <{$lang_rememberme}>
        </label>
    </div>
    <{/if}>
    
    <input type="hidden" name="op" value="login" />
    <input type="hidden" name="xoops_redirect" value="<{$redirect_page}>" />
    <input class="btn btn-success" type="submit" value="<{$lang_login}>" />
  </form>
  <br />
  <a name="lost"></a>
  <div><{$lang_notregister}><br /></div>


</div>
<div class="col-lg-6">
<fieldset class="pad10">
  <legend class="bold"><{$lang_lostpassword}></legend>
  <div><{$lang_noproblem}></div>
  <form action="lostpass.php" method="post">
  	<div class="form-group">
    	<label for="username"><{$lang_youremail}></label> 
    	<input type="text" class="form-control" name="email"  />
    </div>
    <input type="hidden" name="op" value="mailpasswd" />
    <input type="hidden" name="t" value="<{$mailpasswd_token}>" />
    <input type="submit" class="btn btn-success" value="<{$lang_sendpassword}>" />
  </form>
</fieldset>
</div>