<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>PDV Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="<?=base_url();?>/favicon.ico" type="image/x-icon">
    <link rel="icon" href="<?=base_url();?>/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="<?=base_url();?>assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?=base_url();?>assets/css/logar.css">
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900">
    <style media="screen">
    body {
            background: url(<?=base_url()?>assets/img/login.jpg) no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
         }
         .start {background: linear-gradient(50deg, #000000e3 0%, #6c101aed 100%);
             width:100%;
             height:100%;
         }
    </style>
</head>
<body>
        <div class='start'>     
<div class='login'>
   <div class="logomarca"> <?php if($this->setting->logo){ ?><img src="<?=base_url()?>files/Setting/<?=$this->setting->logo;?>" alt="logo" ><?php } else { ?><img src="<?=base_url()?>assets/img/logo.png" alt="logo"><?php } ?></div>
 <div class="alerta"><h4><?=label('Loginaccount');?></h4></div>
  <div class='login_fields'>
      
       <?php if(isset($message)){echo "<div class=''>".$message."</div>";}?>
               <?php
              $attributes = array('class' => '');
              echo form_open('login', $attributes);
              ?>
              
    <div class='login_fields__user'>
      <div class='icon'>
       <img src="<?=base_url()?>assets/img/login/usuario.png">
      </div>
      <input type='text' name="username" value="<?=isset($username)?$username:''?>" placeholder="<?=label("Username");?>" required>
        <div class='validation'>
           <img src="<?=base_url()?>assets/img/login/chave.png">
        </div>
      </input>
    </div>
    <div class='login_fields__password'>
      <div class='icon'>
          <img src="<?=base_url()?>assets/img/login/senha.png">
        
      </div>
      <input type="password" name="password" placeholder="<?=label("Password");?>" required>
      <div class='validation'>
          <img src="<?=base_url()?>assets/img/login/chave.png">
       
      </div>
    </div>
    <div class='login_fields__submit'>
         <input type='submit' label="Login" value='<?=label("Login");?>'>
      
      <div class='forgot'>
        <a href='#'>Esqueceu a senha?</a>
      </div>
    </div>
  </div>
  <div class='success'>
    <h2>Authentication Success</h2>
    <p>Welcome back</p>
  </div>
  <div class='disclaimer'>
    <p><center><spam> &copy; <?=date("Y");?> <?=$this->setting->companyname?></spam></center></p>
  </div>
</div>
<div class='authent'>
  <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/puff.svg'>
  <p>Authenticating...</p>
</div>
    </div>
              
	<!-- jQuery -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery-2.2.2.min.js"></script>
      <script type="text/javascript" src="<?=base_url()?>assets/js/logar.js"></script>

</body>
</html>
