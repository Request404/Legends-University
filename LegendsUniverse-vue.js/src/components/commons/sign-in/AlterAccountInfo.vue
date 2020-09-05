<template>
	<div id="alter_form">
		<div v-show="!passVerification">
			<span class="sign_in_span">Change Password</span>
			<div ref="username" class="input_framework">
				<label for="username" class="info_label">USERNAME</label>
				<input type="text" id="username" class="info_input" v-model="username" @keyup.enter="keyVerification"/>
			</div>
			<div ref="email" class="input_framework">
				<label for="username" class="info_label">EMAIL</label>
				<input type="text" id="email" class="info_input" v-model="email" @keyup.enter="keyVerification"/>
			</div>
			<div ref="wrong" id="info_no_match">Username and email wasn't match</div>
			<button @click="Verification" ref="verification" class="verification_info" :disabled="disVerification">
				verification
			</button>
		</div>
		<div v-show="passVerification">
			<span class="sign_in_span">New Password</span>
			<div ref="password" class="input_framework">
				<label for="password" class="info_label">NEW PASSWORD</label>
				<input :type="psdType" id="password" class="info_input" v-model="password" @keyup.enter="keyChange"/>
				<div class="password_visitable" @click="psdVisitable">
					<img src="../../../assets/img/sign-in/password_visitable.svg" alt="" v-show="Visitable">
					<img src="../../../assets/img/sign-in/password_unvisitable.svg" alt="" v-show="!Visitable">
				</div>
			</div>
			<div ref="confirm" class="input_framework">
				<label for="confirm" class="info_label">CONFIRM PASSWORD</label>
				<input :type="psdType" id="confirm" class="info_input" v-model="confirm" @keyup.enter="keyChange"/>
			</div>
			<div ref="success" id="change_successful">Password was update successful , Go sign in now !</div>
			<button @click="changeNewPassword" ref="change" class="verification_info" :disabled="disChange">
				change
			</button>
		</div>
		<div id="cancel_change_password">
			<p @click="cancelChange">cancel change password</p>
		</div>
		
	</div>
</template>

<script>
  import {asyn} from "../../../request/async";

  export default {
    name: "AlterAccountInfo",
	  data(){
      return{
        disVerification: true,
	      username: null,
	      usernamePass: false,
	      email: null,
	      emailPass: false,
	      passVerification: false,

        Visitable: false,
        psdType: 'password',
        disChange: true,
        password: null,
        confirm: null,
        confirmPass: false,
      }
	  },
	  watch:{
      username(){
        if (this.username){
          this.usernamePass=true
          this.$refs.username.style.borderColor="#27ae60"
        }else {
          this.usernamePass=false
          this.$refs.username.style.borderColor="rgba(66,66,66,.9)"
        }
      },
      email(){
        if(this.email){
          this.isEmail()
        }else {
          this.$refs.email.style.borderColor="rgba(66,66,66,.9)"
        }
      },
      confirm(){
        if(this.confirm){
          this.isSamePassword()
        }else {
          this.$refs.password.style.borderColor="rgba(66,66,66,.9)"
          this.$refs.confirm.style.borderColor="rgba(66,66,66,.9)"
	        this.confirmPass=false
        }
      }
	  },
	  methods:{
      cancelChange(){
        this.$emit('SignIn','signIn')
      },
      isEmail() {
        if (this.email.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1) {
          this.$refs.email.style.borderColor="#27ae60"
	        this.emailPass=true
        } else{
          this.$refs.email.style.borderColor="#d13639"
          this.emailPass=false
        }
      },
		  isSamePassword(){
        if (this.password==this.confirm){
          this.$refs.password.style.borderColor="#27ae60"
          this.$refs.confirm.style.borderColor="#27ae60"
	        this.confirmPass=true
        } else {
          this.$refs.password.style.borderColor="#d13639"
          this.$refs.confirm.style.borderColor="#d13639"
          this.confirmPass=false
        }
		  },
      Verification(){
        asyn({
	        method: 'post',
	        url: '/profile/getUserWithNameAndEmail',
	        data: {
	          username: this.username,
		        email: this.email
	        }
        }).then(rs=>{
          if(rs.data){
            this.passVerification=true
          }else {
            this.username = null
	          this.email = null
	          this.$refs.wrong.style.opacity=1
	          setTimeout(()=>{
              this.$refs.wrong.style.opacity=0
	          },1000)
          }
        }).catch(err=>{
          console.log(err);
        })
      },
      keyVerification(){
				if(!this.disVerification){
				  this.Verification()
				}
      },
      psdVisitable(){
        this.Visitable = !this.Visitable
        if(this.Visitable){
          this.psdType = 'text'
        }else {
          this.psdType = 'password'
        }
        return this.Visitable,this.psdType
      },
      changeNewPassword(){
        asyn({
	        method: 'post',
	        url: '/profile/updateUserPassword',
	        data: {
	          username: this.username,
		        password: this.password
	        }
        }).then(rs=>{
          if(rs.data){
            this.$refs.success.style.opacity=1
	          setTimeout(()=>{
	            this.cancelChange()
	          },1750)
          }
        })
      },
      keyChange(){
        if(!this.disChange){
          this.changeNewPassword()
        }
      }
	  },
	  updated() {
      if (this.usernamePass&&this.emailPass){
        this.disVerification=false
        this.$refs.verification.style.backgroundColor="#27ae60"
      } else {
        this.disVerification=true
        this.$refs.verification.style.backgroundColor="#9e9e9e"
      }
      if(this.confirmPass){
        this.disChange=false
        this.$refs.change.style.backgroundColor="#27ae60"
      }else {
        this.disChange=true
        this.$refs.change.style.backgroundColor="#9e9e9e"
      }
    }
  }
</script>

<style scoped>
	#alter_form{
		width: 74%;
		height: 74%;
		position: relative;
	}
	.sign_in_span{
		display: block;
		width: 100%;
		text-align: center;
		font-size: 2.3rem;
		margin:1rem 0 2rem 0;
		font-weight: 600;
		user-select: none;
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
		margin: 3rem 0;
		position: relative;
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
	#info_no_match{
		opacity: 0;
		width: 100%;
		height: 1rem;
		line-height: 1rem;
		color: #e74c3c;
		font-size: 1rem;
		text-align: center;
		margin: .5rem;
		transition: .75s ease;
	}
	.verification_info{
		width: 100%;
		height: 3.2rem;
		border: 2px solid lightgoldenrodyellow;
		text-align: center;
		line-height: 3rem;
		border-radius: 1rem;
		outline: none;
		margin: .5rem auto;
		font-size: 1.8rem;
		text-transform: uppercase;
		color: white;
		background-color: #9e9e9e;
		transition: .5s ease;
		cursor: pointer;
		letter-spacing: 3px;
	}
	
	#cancel_change_password{
		position: absolute;
		bottom: 0rem;
		width: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	#cancel_change_password>p{
		text-align: center;
		color:  #9e9e9e;
		transition: .5s ease;
		font-weight: 900;
		font-size: .9rem;
		cursor: pointer;
		user-select: none;
		text-transform: uppercase;
	}
	#cancel_change_password>p:hover{
		color: black;
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
	#change_successful{
		width: 100%;
		height: 1.1rem;
		line-height: 1.1rem;
		color: #27ae60;
		font-size: 1.1rem;
		text-align: center;
		margin: .5rem;
		transition: .2s ease;
		opacity: 0;
	}
</style>
