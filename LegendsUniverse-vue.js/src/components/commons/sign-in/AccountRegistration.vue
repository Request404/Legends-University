<template>
	<div id="main_register_box">
		<div id="account_register_form" v-show="!registerSuccess">
			<span class="sign_in_span" >Account Registration</span>
			<div ref="username" id="sign_in_user" class="input_framework">
				<label for="username" class="info_label">USERNAME</label>
				<input type="text" id="username" class="info_input" v-model.trim="Username"/>
			</div>
			<div ref="password" id="sign_in_password" class="input_framework">
				<label for="password" class="info_label">PASSWORD</label>
				<input :type="psdType" id="password" class="info_input" v-model="Password"/>
				<div class="password_visitable" @click="psdVisitable">
					<img src="../../../assets/img/sign-in/password_visitable.svg" alt="" v-show="Visitable">
					<img src="../../../assets/img/sign-in/password_unvisitable.svg" alt="" v-show="!Visitable">
				</div>
			</div>
			<div ref="confirm" id="confirm_password" class="input_framework">
				<label for="confirm" class="info_label">CONFIRM PASSWORD</label>
				<input :type="psdType" id="confirm" class="info_input" v-model="Confirm"/>
			</div>
			<div ref="email" id="register_email" class="input_framework">
				<label for="email" class="info_label">EMAIL ACCOUNT</label>
				<input type="text" id="email" class="info_input"  v-model="Email"/>
			</div>
			<div  id="sign_in_save">
				<input type="checkbox" id="save-info" value="agree" v-model="Agree">
				<label for="save-info" ref="agree">I agree to the user agreement</label>
			</div>
			<div id="sign_in_btn" ref="registration">
				<button type="button" :disabled="disableRegistration" @click="accountRegistration">Registration</button>
			</div>
			<p class="sign_in_p" @click="signIn">Already have an account?</p>
		</div>
		<div v-show="registerSuccess" id="success_pane">
			<h1>Account Registration Successful!</h1>
			<h2>account: <span>Username</span></h2>
			<div>cilck here to <span id="account_sgin_in" @click="signIn"><i>SIGN IN</i></span></div>
		</div>
	</div>
</template>

<script>
  import {asyn} from "../../../request/async";

  export default {
    name: "AccountRegistration",
	  data(){
		  return{
		    Visitable: false,
        psdType: 'password',
			  Username: null,
        UsernamePass: false,
			  Password: null,
			  PasswordPass: false,
        Confirm: null,
			  ConfirmPass: false,
			  Email: null,
			  EmailPass: false,
			  Agree: null,
        AgreeRegistration: false,
        disableRegistration: true,
			  registerSuccess: false
		  }
	  },
	  watch:{
      Username(){
        if(this.Username){
          this.userIsExist()
        }else {
          this.UsernamePass = false
          this.$refs.username.style.borderColor="rgba(66,66,66,.9)"
        }
      },
      Password(){
        if(this.Password&&this.Confirm){
          this.comfirmPassword()
        }else {
          this.PasswordPass = false
          this.$refs.password.style.borderColor="rgba(66,66,66,.9)"
          this.$refs.confirm.style.borderColor="rgba(66,66,66,.9)"
        }
      },
      Confirm(){
        if(this.Password&&this.Confirm){
          this.comfirmPassword()
        }else {
          this.ConfirmPass = false
          this.$refs.password.style.borderColor="rgba(66,66,66,.9)"
          this.$refs.confirm.style.borderColor="rgba(66,66,66,.9)"
        }
      },
      Email(){
        if(this.Email) {
          this.isEmail();
        }
        else {
          this.EmailPass = false
          this.$refs.email.style.borderColor = "rgba(66,66,66,.9)"
        }
      },
      Agree(){
        if (this.Agree){
          this.AgreeRegistration = true
          this.$refs.agree.style.color="rgb(22,22,22)"
        }
        else {
          this.AgreeRegistration =false
          this.$refs.agree.style.color="#9e9e9e"
        }
      }
	  },
	  methods:{
      psdVisitable(){
        this.Visitable = !this.Visitable
				if(this.Visitable){
				  this.psdType = 'text'
				}else {
				  this.psdType = 'password'
				}
        return this.Visitable,this.psdType
      },
		  signIn(){
        this.$emit('SignIn','signIn')
		  },
      userIsExist(){
        asyn({
	        method: 'get',
	        url: '/profile/userIsExist',
	        params: {
	          username: this.Username
	        }
        }).then(rs=>{
          if(rs.data){
            this.UsernamePass = false
            this.$refs.username.style.borderColor="#d13639"
          }else {
            this.UsernamePass = true
            this.$refs.username.style.borderColor="#27ae60"
          }
        })
      },
		  comfirmPassword(){
        if(this.Password&&this.Confirm){
          if (this.Password== this.Confirm){
						this.PasswordPass = true
            this.$refs.password.style.borderColor="#27ae60"
	          this.ConfirmPass = true
            this.$refs.confirm.style.borderColor="#27ae60"
          }else {
            this.PasswordPass = false
            this.$refs.password.style.borderColor="#d13639"
            this.ConfirmPass = false
            this.$refs.confirm.style.borderColor="#d13639"
          }
        }
		  },
      isEmail() {
        //正则表达式
        if (this.Email.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1) {
          this.EmailPass = true
          this.$refs.email.style.borderColor="#27ae60"
        } else{
          this.EmailPass = false
          this.$refs.email.style.borderColor="#d13639"
        }
      },
      accountRegistration(){
        asyn({
          method: 'post',
	        url: '/profile/insertUser',
	        data: {
            username: this.Username,
		        password: this.Password,
		        email: this.Email
	        }
        }).then(rs=>{
          if(rs.data){
            this.registerSuccess=true
          }
        }).catch(err=>{
          console.log(err);
        })
      },
	  },
	  updated() {
			if(this.UsernamePass&&this.PasswordPass&&this.ConfirmPass&&this.EmailPass&&this.AgreeRegistration){
			  this.disableRegistration=false
        this.$refs.registration.style.backgroundColor="#2ecc71"
			}else {
			  this.disableRegistration=true
        this.$refs.registration.style.backgroundColor="#535353"
			}
    }
  }
</script>

<style scoped>
	#main_register_box{
		width: 80%;
		height: 80%;
	}
	#account_register_form{
		width: 100%;
		height: 100%;
		transition: 0.35s ease;
	}
	.sign_in_span{
		display: block;
		width: 100%;
		text-align: center;
		font-size: 2.3rem;
		margin:1rem 0 2rem 0;
		font-weight: 600;
	}
	#sign_in_user{
		margin: 2rem 0;
	}
	
	#sign_in_password{
		position: relative;
	}
	.password_visitable{
		width: 2rem;
		height: 2rem;
		position: absolute;
		right: 1rem;
		top: 2rem;
	}
	.password_visitable img{
		width: 100%;
		height: 100%;
	}
	#confirm_password{
		margin: 2rem 0;
		position: relative;
	}
	.input_framework{
		width: 99%;
		height: 4.8rem;
		border-radius: 5px;
		transition: .35s ease;
		color: rgb(151,151,151);
		font-size: .9rem;
		font-weight: 600;
		border: 3px solid rgba(66,66,66,.9);
		background-color: rgba(230,230,230,.9);
	}
	
	.info_label{
		display: block;
		padding: 5px 8px;
	}
	
	.info_input{
		width: 90%;
		height: 60%;
		margin-left: 8px;
		font-size: 1.4rem;
		font-weight: 900;
		border: none;
		outline: none;
		background-color: rgba(230,230,230,.9);
	}
	
	#sign_in_save>input{
		width: 1.2rem;
		height: 1.2rem;
	}
	#sign_in_save>label{
		font-weight: 900;
		font-family: 'Poppins', sans-serif;
		font-size: 1.1rem;
		margin: 0 10px;
		
	}
	
	#sign_in_save{
		width: 99%;
		margin: 2rem auto;
		display: flex;
		align-items: center;
		color: #9e9e9e;
		transition: .35s ease;
	}
	#sign_in_save:hover{
		color: #535353;
	}
	#sign_in_btn{
		width: 100%;
		height: 3rem;
		margin: 2rem auto;
		border-radius: 1.5rem;
		background-color: #535353;
		border: 2px solid white;
		transition: 1s ease;
	}
	/*#sign_in_btn:hover{*/
	/*	background-color: #27ae60;*/
	/*}*/
	#sign_in_btn>button{
		width: 100%;
		height: 100%;
		border: none;
		border-radius: 1.5rem;
		outline: none;
		background-color: rgba(255,255,255,0);
		cursor: pointer;
		color: white;
		text-transform: uppercase;
		font-size: 1.5rem;
	}
	.sign_in_p{
		width: 100%;
		text-align: center;
		margin: 1rem 0;
		cursor: pointer;
		font-size: .9rem;
		font-weight: 900;
		text-transform: uppercase;
		color:  #9e9e9e;
		transition: .5s ease;
	}
	.sign_in_p:hover {
		color: black;
	}
	
	#success_pane{
		width: auto;
		height: 60%;
		text-align: center;
		font-family: 华文楷体;
	}
	#success_pane>h1{
		font-size: 3.5rem;
		user-select: none;
	}
	#success_pane>h2{
		font-size: 2.5rem;
		font-weight: 100;
		color: #1e2328;
		font-family: "微软雅黑 Light";
	}
	#success_pane>h2>span{
		color:#9e9e9e;
	}
	#success_pane>div{
		margin: 5rem 0;
		font-family: 微软雅黑;
		user-select: none;
		font-size: 1.5rem;
	}
	#account_sgin_in{
		font-weight: 900;
		color: #27ae60;
		cursor: pointer;
	}
	
	
</style>
