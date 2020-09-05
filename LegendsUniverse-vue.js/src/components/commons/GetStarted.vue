<template>
	<div id="get_started" >
		<div id="get_started_content">
			<video src="../../assets/img/get_started/the_volibear_Trim.mp4" autoplay="" muted=""
			       loop="" id="background_video" poster="../../assets/img/get_started/the_volibear_.jpg"></video>
			<div id="content_box">
				<h1><img src="../../assets/img/get_started/logo_.png" alt=""></h1>
				<section id="lol_logo"><img src="../../assets/img/get_started/league-of-legends.png" alt=""></section>
				<h2>We Enthusiasm,We<br><span>League Of Legends </span></h2>
				<div id="get_started_btn" @click="getStarted()">Get Started</div>
			</div>
			<footer id="get_started_copyright">
				© 2020 Riot Games, Inc. All rights reserved. Riot Games, League of Legends and PvP.net are trademarks,
				services marks, or registered trademarks of Riot Games, Inc.
			</footer>
		</div>
	</div>
</template>

<script>
  export default {
    name: "GetStarted",
    data(){
      return{

      }
    },
    methods:{
      getStarted(){
        this.$router.replace('/universe')
      }
    }
  }
</script>

<style scoped>
	#get_started{
		width: 100%;
		min-width: 920px;
		height: 100%;
		position: relative;
		background-color: #010a13;
	}
	#get_started_content{
		width: 100%;
		min-width: 920px;
		height: 100%;
		min-height: 600px;
		color: #d8bd70;
		display: flex;
		justify-content: center;
		align-items: center;
		position: absolute;
		z-index: 1;
	}
	#background_video{
		width: 100%;
		height: 100%;
		object-fit: cover;
		position: absolute;
		z-index: 0;
	}
	#content_box{
		width: 40rem;
		height: 20rem;
		display: grid;
		align-content: center;
		justify-items: center;
		text-align: center;
		user-select: none;
	}
	#content_box>h1>img{
		width: 28rem;
		height: 10rem;
	}
	#content_box>h2{
		font-size: 3.5rem;
		font-weight: 100;
		font-family: 'STSong', sans-serif;
		position: relative;
	}
	#content_box>h2>span{
		margin-top: .5rem;
		font-size: 4rem;
		font-family: 'STSong', sans-serif;
		text-transform: capitalize;
	}
	#content_box>div{
		width: 18rem;
		height: 4.8rem;
		line-height: 4.8rem;
		font-size: 1.8rem;
		text-transform: uppercase;
		text-decoration: none;
		border-radius: 2.6rem;
		border: 0.25rem solid #d8bd70;
		cursor: pointer;
		transition: 0.6s ease;
		font-family: 微软雅黑,sans-serif;
		position: relative;
	}
	#content_box>div:hover{
		/*color: #937341;*/
		/*border: 0.25rem solid #937341;*/
		/*border: 0.2rem solid #d8bd70;*/
	}
	#lol_logo img{
		width: 16rem;
		height: 11rem;
	}
	
	#get_started_copyright{
		position: absolute;
		bottom: 2px;
		width: 100%;
		font-weight: 100;
		text-align: center;
		font-size: 1rem;
		color: #d8bd70;
		font-family: 微软雅黑,sans-serif;
	}
	@media screen and (max-width: 92rem){
		#lol_logo{
			position: absolute;
			right: 2rem;
			top: -1rem;
		}
		#content_box>h1{
			position: absolute;
			top: -3rem;
			left: 0rem;
		}
		
	}
	@media screen and (min-width: 92rem)  and (max-width: 120rem) {
		#lol_logo{
			position: absolute;
			right: 3rem;
			top: -1rem;
		}
		#content_box>h1{
			position: absolute;
			top: -2rem;
			left: 2rem;
		}
	}
	@media screen  and (min-width: 120rem) {
		#lol_logo{
			position: absolute;
			right: 0rem;
			top: -1rem;
		}
		#content_box>h1{
			position: absolute;
			top: -3rem;
			left: 0rem;
		}
	}
</style>
