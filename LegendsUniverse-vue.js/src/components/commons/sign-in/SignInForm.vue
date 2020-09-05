<template>
	<div id="sign_in_form" >
		<span class="sign_in_span">Sign In</span>
		<div ref="username" id="sign_in_user" class="input_framework">
			<label for="username" class="info_label">USERNAME</label>
			<input type="text" id="username" class="info_input" v-model="username" @keyup.enter="keySignIn"/>
		</div>
		<div ref="password" id="sign_in_password" class="input_framework">
			<label for="password" class="info_label">PASSWORD</label>
			<input :type="psdType" id="password" class="info_input" v-model="password" @keyup.enter="keySignIn"/>
			<div class="password_visitable" @click="psdVisitable">
				<img src="../../../assets/img/sign-in/password_visitable.svg" alt="" v-show="Visitable">
				<img src="../../../assets/img/sign-in/password_unvisitable.svg" alt="" v-show="!Visitable">
			</div>
		</div>
		<div id="sign_in_save">
			<input type="checkbox" id="save-info">
			<label for="save-info">Stay Signed in</label>
		</div>
		<div id="hint_wrong" ref="wrong">
			<span>Username or password was wrong !</span>
		</div>
		<div id="sign_in_btn" ref="submit_Btn">
			<button type="button" :disabled="disSubmit" @click="signInToUniverse"></button>
		</div>
		<p class="sign_in_p" @click="alterAccount"> Can't sign in?</p>
		<p class="sign_in_p" @click="registerAccount">Create Account</p>
	</div>
</template>

<script>
  import {asyn} from "../../../request/async";

  export default {
    name: "SignInForm",
    data(){
      return{
        disSubmit: true,
        Visitable: false,
        psdType: 'password',
	      username: '',
	      password: '',
      }
    },
    methods:{
      requestUserData(data){
        this.$store.commit('changeSignInState',true)
        this.$store.commit('changeUserId',data.id)
        this.$store.commit('changeUserName',data.username)
        this.$store.commit('changeUserEmail',data.email)
        this.$store.dispatch('requestUserPurchaseHistory')
        this.$store.dispatch('requestUserStar')
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
      alterAccount(){
        this.$emit('alterAccount','alter')
      },
      registerAccount(){
        this.$emit('registerAccount','register')
      },
      keySignIn(){
        if (!this.disSubmit){
          this.signInToUniverse()
        }
      },
	    signInToUniverse(){
        asyn({
	        method: 'post',
	        url: '/profile/getUserByNameAndPassword',
	        data: {
	          username: this.username,
		        password: this.password
	        }
        }).then(rs=>{
          if (rs.data){
            this.$router.back()
            this.requestUserData(rs.data);
          } else {
	          this.password=''
            this.$refs.wrong.style.opacity= 1
	          this.$refs.username.style.borderColor='#d13639'
            this.$refs.password.style.borderColor='#d13639'
	          setTimeout(()=>{
              this.$refs.wrong.style.opacity= 0
              this.$refs.username.style.borderColor='rgba(66,66,66,.9)'
              this.$refs.password.style.borderColor='rgba(66,66,66,.9)'
	          },1000)
          }
        }).catch(err=>{
          console.log(err);
        })
	    }
    },
    updated() {
      if(this.username.trim()!=''&&this.password!=''){
        this.$refs.submit_Btn.style.backgroundColor = '#d13639';
        this.$refs.submit_Btn.style.border = '2px solid #d13639';
        return this.disSubmit = false
      }else {
        this.$refs.submit_Btn.style.backgroundColor = '#FFFFFF';
        this.$refs.submit_Btn.style.border = '2px solid #f0f0f0';
        return this.disSubmit = true
      }
    }
  }
</script>

<style scoped>
	#sign_in_form{
		width: 74%;
		height: 74%;
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
	#sign_in_save>input{
		width: 2rem;
		height: 2rem;
	}
	#sign_in_save>label{
		font-weight: 900;
		font-family: 'Poppins', sans-serif;
		font-size: 1.2rem;
		margin: 0 10px;
		
	}
	#sign_in_btn{
		width: 6rem;
		height: 6rem;
		margin: 4.5rem auto;
		border-radius: 1.5rem;
		background-color: white;
		border: 2px solid #f0f0f0;
		transition: .2s ease;
	}
	
	#sign_in_btn>button{
		width: 100%;
		height: 100%;
		border: none;
		border-radius: 1.5rem;
		outline: none;
		background-color: rgba(255,255,255,0);
		background-image: url("../../../assets/img/sign-in/sgin_in_next.svg");
		background-position: center center;
		background-size: 50% 50%;
		background-repeat: no-repeat;
		cursor: pointer;
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
	
	#hint_wrong{
		opacity: 0;
		width: auto;
		height: 2rem;
		color: #e74c3c;
		text-align: center;
		font-size: 1.5rem;
		font-weight: 100;
		transition: 0.6s ease;
	}
</style>
