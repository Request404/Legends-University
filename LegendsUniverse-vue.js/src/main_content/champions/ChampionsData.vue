<template>
	<div id="champions_data_box">
		<div id="champions_data_title">
			<div id="the_champions_ioc"><img src="../../assets/img/champions_other/champions_content_type_icon.png" alt=""></div>
			<div id="the_champions_headline">
				<div id="champions_hr_left"><img src="../../assets/img/champions_other/champions___.png" alt=""></div>
				<div id="the_champions_">champions</div>
				<div id="champions_hr_right"><img src="../../assets/img/champions_other/champions___.png" alt=""></div>
			</div>
		</div>
		<nav id="the_champions_bar">
				<span><img src="../../assets/img/champions_other/champions_content_type_icon.png" alt=""></span>
				<input type="text" id="find_a_champion" placeholder="find a champions" v-model="selectChampions">
				<span class="signInForUniverse" @click.stop="accountSign" >
					<span >{{$store.state.userInfo.signInUser | signInUsername}}</span>
					<span class="sign_out_ico" v-show="isSignIn" @click="signOut">
						<img src="../../assets/img/profile/sign_out.svg" alt="">
					</span>
					<i><img src="../../assets/img/sign-in/sign_in_logo.png" alt=""></i>
				</span>
		</nav>
		<ul  class="champions_ul" v-if="true">
			<li v-for="(champion,index) in $store.state.championsData" class="champions_li"
			    :style="{backgroundImage: 'url('+$store.state.requestUrl+champion.imgUrl+')',
			             backgroundPosition: champion.imgPosition}"
								@mouseenter="paneActive(index)" @mouseleave="paneNoActive">
				<div class="champions_info_pane" :style="activePane!=index?'bottom:-4rem;':'bottom: 0;'">
					<div class="champions_info">
						<span class="champions_info_name">{{champion.name}}</span>
						<span class="champions_info_region">{{champion.region}}</span>
					</div>
					<div class="champions_explore">
						explore
						<img src="../../assets/img/champions_other/explore_arrow.svg" alt="">
					</div>
				</div>
			</li>
		</ul>
		<copyright></copyright>
	</div>
</template>

<script>

	import Copyright from  '../copyright/Copyright'
  import {asyn} from "../../request/async";
  
  export default {
    name: "ChampionsData",
	  data(){
      return{
        regions: ['Bandle City','Bilgewater','Demacia', 'Freljord', 'Ionia', 'Ixtal',
	            'Noxus','Piltover','Shadow Isles','Shurima','Targon','The Void','Zaun'],
	      activePane: null,
	      selectChampions: null,
        isSignIn: this.$store.state.signInState
      }
	  },
		computed:{
  
		},
	  watch:{
      selectChampions(){
        this.getChampionsByName()
      }
	  },
	  components:{
      Copyright
	  },
	  methods:{
      paneActive(index){
        return this.activePane = index
      },
      paneNoActive(){
        return this.activePane = null
      },
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
		  getChampionsByName(){
        if (this.selectChampions){
          asyn({
	          method: 'get',
	          url: '/champion/getChampionByName',
	          params: {
	            name: this.selectChampions
	          }
          }).then(rs=>{
            this.champions=rs.data
          }).catch(err=>{
            console.log(err);
          })
        } else {
          asyn({
            method: 'get',
            url: '/champion/getAllChampions'
          }).then(rs=>{
            this.champions = rs.data
          }).catch(err=>{
            console.log(err);
          })
        }
		  }
	  },
	  created() {
      this.$store.dispatch('requestChampionsData')
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
	#champions_data_box{
		width: 100%;
		height: auto;
		user-select: none;
	}
	#champions_data_title{
		width: 85%;
		height: auto;
		margin: auto;
		padding: 2.5rem;
	}
	#champions_data_title>#the_champions_ioc{
		width: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	#champions_data_title>#the_champions_ioc img{
		width: 1.5rem;
		height: auto;
		vertical-align: middle;
	}
	#champions_data_title>#the_champions_headline{
		width: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	#the_champions_headline>div{
		margin: 1rem 2rem;
	}
	#the_champions_headline>div>img{
		vertical-align: middle;
	}
	#champions_hr_left{
		transform: rotateZ(180deg);
	}
	#the_champions_{
		font-size: 2.2rem;
		color: #c4b975;
		text-transform: uppercase;
		font-family: STZhongsong,sans-serif;
	}
	#the_champions_bar{
		width: 85%;
		padding: 0 7.5%;
		height: 8rem;
		background-color: #121212;
		margin-bottom: 2.5rem;
		display: flex;
		align-items: center;
		position: relative;
	}
	#the_champions_bar>span>img{
		width: 1.5rem;
		height: auto;
		vertical-align: middle;
	}
	#find_a_champion{
		width: 60%;
		margin: 0 1.5rem;
		font-size: 1.6rem;
		background-color: #121212;
		text-transform: uppercase;
		font-family: STZhongsong  ,sans-serif;
		color: #c4b975;
		outline: none;
		border: none;
	}
	#find_a_champion::placeholder{
		color: #2b251c;
	}
	
	.signInForUniverse{
		color: white;
		position: absolute;
		right: 8%;
		text-transform: uppercase;
		font-weight: 900;
		cursor: pointer;
		display: flex;
		align-items: center;
		justify-content: center;
	}
	.signInForUniverse>i>img{
		width: 3rem;
		height: auto;
		vertical-align: middle;
		margin-left: 1rem;
		border-radius: 50%;
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
	.champions_ul{
		margin: 0 auto;
		width: 85%;
		padding: 0;
		display: grid;
		justify-items: center;
	}
	.champions_ul>.champions_li{
		list-style: none;
		width: 19.5rem;
		height: 32rem;
		margin-bottom: 5rem;
		background-size: auto 100%;
		border: 1px solid #010a13;
		cursor: pointer;
		transition: .5s ease;
		position: relative;
		overflow: hidden;
	}
	.champions_ul>.champions_li:hover{
		border: 1px solid #937341;
		transform: scale(1.06,1.12);
	}
	
	.champions_info_pane{
		width: 100%;
		height: 10rem;
		background-color: rgba(9,9,9,.9);
		position: absolute;
		bottom: -4rem;
		transition: .6s ease;
	}
	.champions_info{
		width: 100%;
		height: 60%;
		border-top: 1px solid #937341;
		text-transform: uppercase;
		display: grid;
		align-content: center;
		justify-items: center;
	}
	.champions_info>.champions_info_name{
		height: 2rem;
		color: #937341;
		font-size: larger;
		font-weight: 900;
		font-family: STZhongsong  ,sans-serif;
	}
	.champions_info>.champions_info_region{
		height: 2rem;
		color: #c4b975;
		font-size: medium;
		font-family:Microsoft JhengHei,sans-serif;
	}
	
	.champions_explore{
		width: 100%;
		height: 40%;
		border-top: 1px solid #937341;
		display: flex;
		justify-content: center;
		align-items: center;
		color: #937341;
		text-transform: uppercase;
		font-family: STZhongsong  ,sans-serif;
	}
	.champions_explore>img{
		margin-left: .5rem;
		width: 1.6rem;
		height: auto;
	}
	
	
	
	
	@media screen and (max-width: 75rem){
		.champions_ul{
			grid-template-columns: 1fr 1fr;
		}
		.champions_ul>.champions_li{
			width: 24rem;
		}
	}
	@media screen and (min-width: 75rem) and (max-width: 96rem){
		.champions_ul{
			grid-template-columns: 1fr 1fr 1fr;
		}
		
	}
	@media screen and (min-width: 96rem) and (max-width: 120rem) {
		.champions_ul{
			grid-template-columns: 1fr 1fr 1fr 1fr;
		}
		
	}
	@media screen and (min-width: 120rem){
		.champions_ul{
			grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
		}
	}
	
</style>
