<template>
	<div id="profile_wrap">
		<nav>
			<span id="profile_title">-- We Enthusiasm.We League Of Legends.</span>
			<span id="profile_sign_in" @click="accountSign">
				<span>
					{{$store.state.userInfo.signInUser | signInUsername}}
				</span>
				<span class="sign_out_ico" v-show="isSignIn" @click="signOut">
					<img src="../../assets/img/profile/sign_out.svg" alt="">
				</span>
				<img src="../../assets/img/sign-in/sign_in_logo.png" alt="">
			</span>
		</nav>
		<account-info></account-info>
		<profile-other></profile-other>
		<copyright></copyright>
	</div>
</template>

<script>
  import ProfileOther from './ProflieOther'
  import AccountInfo from './account-info/AccountInfo'
  import Copyright from '../copyright/Copyright'
	
  export default {
    name: "Profile",
	  data(){
      return {
        isSignIn: this.$store.state.signInState
      }
	  },
    components: {
      ProfileOther, Copyright,AccountInfo
    },
	  methods:{
      accountSign(){
        if(!this.$store.state.signInState){
          setTimeout(()=>{this.$router.push('/account for Universe-of-league-of-legends')},300)
        }
      },
      signOut(){
        setTimeout(()=>{
          this.$store.commit('changeSignInState',false)
          this.$store.commit('changeUserId',null)
          this.$store.commit('changeUserName',null)
          this.$store.commit('changeUserEmail',null)
	        this.$store.commit('putUserPurchaseHistory',null)
	        this.$store.commit('putUserStarComics',null)
          this.isSignIn = this.$store.state.signInState
        },500)
      },
	  },
	  filters:{
      signInUsername(signInUser){
        if(signInUser==null){
          signInUser = 'SIGN IN'
        }else {
          signInUser = 'USER: '+signInUser
        }
        return signInUser
      }
	  },
	  updated() {
      this.isSignIn = this.$store.state.signInState
    }
  }
</script>

<style scoped>
	#profile_wrap{
		width: 100%;
		height: auto;
		background-color: rgba(22,22,22,0.97);
		user-select: none;
	}
	#profile_wrap>nav{
		width: 85%;
		height: auto;
		padding:5rem 7.5%;
		position: relative;
		display: flex;
		align-items: center;
	}
	#profile_title{
		color: #f0e6d2;
		font-size: 2.8rem;
		font-family: 'STSong', sans-serif;
		font-weight: 900;
	}
	#profile_sign_in{
		position: absolute;
		right: 7.5%;
		color: white;
		font-size: 1.2rem;
		font-weight: 900;
		display: flex;
		align-items: center;
		justify-content: center;
		cursor: pointer;
	}
	.sign_out_ico{
		width: 1.8rem;
		height: 100%;
		margin-left: .5rem;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	.sign_out_ico>img{
		width: 1.6rem;
		height: 1.6rem;
		vertical-align: middle;
		transition: .25s ease;
	}
	.sign_out_ico>img:hover{
		width: 1.7rem;
		height: 1.7rem;
	}
	
	#profile_sign_in>img{
		width: auto;
		height: 3.8rem;
		border-radius: 50%;
		vertical-align: middle;
		margin-left: 1rem;
	}
	
	@media screen and (max-width: 92rem){
		#profile_title{
			color: #f0e6d2;
			font-size: 2rem;
			font-family: 'STSong', sans-serif;
		}
	}
</style>
