<template>
	<div id="the_copyright">
		<div id="the_copyright_wrap">
			<div id="the_copyright_header">
				<ul>
					<li>ABOUT LEAGUE OF LEGENDS</li>
					<li>PREPAID</li>
					<li>HELP US IMPROVE</li>
					<li>SERVICE STATUS</li>
					<li>SUPPORT</li>
					<li>ESPORTS PRO SITE</li>
				</ul>
			</div>
			<div id="roit_game_logo">
				<img src="../../assets/img/copyright/riot_games_logo_.png" alt="">
			</div>
			<div id="the_copyright_statement">
				<span>
					© 2020 Riot Games, Inc. All rights reserved. Riot Games, League of Legends and PvP.net are trademarks,
					services marks, or registered trademarks of Riot Games, Inc.
				</span>
			</div>
			<div id="the_copyright_terms">
				<span id="Notice">Privacy Notice</span>
				<span>Terms of Service</span>
			</div>
			<div id="the_copyright_footer">
				<img src="../../assets/img/copyright/the_roit_games_.jpg" alt="">
			</div>
		</div>
	</div>
</template>

<script>
  export default {
    name: "Copyright"
  }
</script>

<style scoped>
	#the_copyright{
		width: 100%;
		height: auto;
		background-color: #111111;
		border-top: 3px solid rgba(26,26,26,.5);
		color: #7e7e7e;
		user-select: none;
	}
	#the_copyright_wrap{
		width: 55%;
		min-width: 900px;
		height: 100%;
		margin: auto;
	}
	#the_copyright_header>ul{
		margin-top: 40px;
		list-style: none;
		display: flex;
		justify-content: center;
		
	}
	#the_copyright_header>ul>li{
		font-size: .9rem;
		font-weight: 900;
		text-align: center;
		margin: 0 1.1rem;
		transition: .5s ease;
		cursor: pointer;
	}
	#the_copyright_header>ul>li:hover{
		color: white;
	}
	
	#roit_game_logo{
		width: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	#roit_game_logo>img{
		width: 13rem;
		height: 7.2rem;
	}
	#the_copyright_statement{
		display: flex;
		justify-content: center;
		align-items: center;
		margin: 10px 0 40px 0;
	}
	#the_copyright_statement>span{
		width: 38rem;
		display: block;
		font-size: 14px;
		text-align: center;
	}
	#the_copyright_terms{
		display: flex;
		justify-content: center;
		align-items: center;
	}
	#the_copyright_terms>span{
		display: block;
		margin: 0 7px;
		font-size: 14px;
		text-decoration: underline #7e7e7e;
		cursor: pointer;
	}
	#the_copyright_terms>#Notice{
		font-weight: 900;
	}
	#the_copyright_footer{
		display: flex;
		justify-content: center;
		align-items: center;
		padding: 45px 0;
	}
	#the_copyright_footer>img{
		width: 450px;
		height: 130px;
	}
</style>
