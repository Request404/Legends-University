<template>
	<div id="sign-wrap" ref="sign_wrap">
		<h1 id="sign-logo"><img src="../../../assets/img/sign-in/sign_in_logo.png" alt=""></h1>
		<div id="sign-pane">
			<div id="cancel_btn" @click="cancelSignIn"></div>
			<sign-in-form v-if="countState=='signIn'" @registerAccount='registerAccount' @alterAccount="alterAccount"></sign-in-form>
			
			<alter-account-info v-else-if="countState=='alter'" @SignIn="SignIn"></alter-account-info>
			<account-registration v-else-if="countState=='register'" @SignIn="SignIn"></account-registration>
		</div>
		<div id="sign_in_end">
			THIS SITE IS PROTECTED BY RECAPTCHA AND THE GOOGLE
			<br>
			<a href="#">PRIVACY NOTICE</a>
			AND
			<a href="#">TERMS OF SERVICE</a>
		</div>
	</div>
</template>

<script>
	import SignInForm from './SignInForm'
	import AlterAccountInfo from './AlterAccountInfo'
	import AccountRegistration from './AccountRegistration'
	
  export default {
    name: "SignIn",
	  data(){
      return{
        countState: 'signIn'
      }
	  },
	  methods:{
      registerAccount(state){
        return this.countState = state
      },
      alterAccount(state){
        return this.countState = state
      },
      SignIn(state){
        return this.countState = state
      },
      cancelSignIn(){
        this.$refs.sign_wrap.style.transform = 'scale(0.5,0.5)'
	      setTimeout(()=>{this.$router.back()},330)
      }
	  },
	  components:{
      SignInForm,
      AlterAccountInfo,
      AccountRegistration
	  }
  }
</script>

<style scoped>
	#sign-wrap{
		width: 100%;
		min-width: 920px;
		height: 100%;
		min-height: 920px;
		background-image: url("../../../assets/img/sign-in/sign_bgc.jpg");
		background-position: center center;
		background-size: cover;
		position: absolute;
		top: 0;
		left: 0;
		z-index: 50;
		display: flex;
		justify-content: center;
		align-items: center;
		transition: .35s ease;
	}
	#sign-logo{
		position: absolute;
		left: 2rem;
		top: 1rem;
	}
	#sign-logo img{
		width: 4.5rem;
		height: 4.5rem;
		border-radius: 50%;
	}
	#sign-pane{
		width: 39rem;
		height: 60%;
		height: 52rem;
		background-color: rgba(255,255,255,.9);
		box-shadow: 0px 3px 3px 3px rgba(22,22,22,.5);
		position: relative;
		display: flex;
		justify-content: center;
		align-items: center;
		font-family: 'FF Mark W05', sans-serif;
	}
	#cancel_btn{
		width: 3rem;
		height: 3rem;
		border-radius: 50%;
		position: absolute;
		right: 1rem;
		top: .5rem;
		transition: 0.5s ease;
		background-image: url("../../../assets/img/sign-in/cancel.svg");
		background-position: center center;
		background-size: 100% 100%;
	}
	#cancel_btn:hover{
		background-image: url("../../../assets/img/sign-in/cancal_active.svg");
	}
	#sign_in_end{
		width: 100%;
		position: absolute;
		bottom: 0;
		font-weight: 900;
		color: #9e9e9e;
		text-align: center;
		background-color: rgba(0,0,0,.3);
		padding-bottom: 5px;
	}
	#sign_in_end a{
		color: #7e7e7e;
		transition: .5s ease;
	}
	#sign_in_end a:hover{
		color: snow;
	}
</style>
