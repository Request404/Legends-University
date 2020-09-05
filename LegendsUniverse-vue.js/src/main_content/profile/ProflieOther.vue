<template>
	<div id="profile_other_wrap">
		<div id="new_comics_push">
				<div id="the_email_box">
					<div class="never_miss_comics">
						NEVER MISS A COMIC!
					</div>
					<span class="comics-subscribe-long">Want to stay updated with our latest comic releases?</span>
					<div class="email_input_contain">
						<input type="text" id="email_input"
						       placeholder="Enter your email address"
						       onblur="this.placeholder='Enter your email address'"
						       onfocus="this.placeholder=''">
						<span id="email_submit">Subscribe</span>
					</div>
				</div>
			<div id="new_comics_img">
				<img src="../../assets/img/profile/comicImage__3KEic.png" alt="">
			</div>
		</div>
		<div id="atl_universe">
			<h2>Alt Universe</h2>
			<div id="atl_universe_list">
				<div id="universe_1st">
					<div class="alt_universe_info">STAR GUARDIAN</div>
				</div>
				<div id="universe_2nd">
					<div class="alt_universe_info">odyssey hero</div>
				</div>
				<div id="universe_3rd">
					<div class="alt_universe_info">K/DA</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>

	
  export default {
    name: "ProflieOther",

  }
</script>

<style scoped>
	#profile_other_wrap{
		width: 85%;
		padding: 5% 7.5%;
		height: auto;
	}
	#new_comics_push{
		width: 100%;
		height: 28rem;
		background-image: url("../../assets/img/profile/comics_background_img.png");
		background-position: center center;
		background-size: cover;
		position: relative;
		display: flex;
		align-items: center;
	}
	#new_comics_img{
		width: auto;
		height: 100%;
		position: absolute;
		right: -6%;
		overflow: hidden;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	#new_comics_img>img{
		width: auto;
		height: 100%;
		vertical-align: middle;
	}
	#the_email_box{
		padding: 10% 0;
		height: 80%;
	}
	#the_email_box .never_miss_comics{
		font-size: 4.5rem;
		font-weight: bold;
		color: #f0e6d2;
		margin:3.2rem 1rem 4rem 1rem;
		font-family: 'STSong', sans-serif;
	}
	#the_email_box .comics-subscribe-long{
		font-size: 1rem;
		color: #e5dbc9;
		margin: 2rem 1rem;
		font-weight: 100;
	}
	.email_input_contain{
		display: flex;
		align-items: center;
		margin: 3rem 1rem;
	}
	
	#email_input{
		width: 30rem;
		height: 3.5rem;
		outline: none;
		background-color: rgba(0,0,0,0);
		border: none;
		border-bottom: 1px solid #e5dbc9;
		color: #e5dbc9;
		font-size: 2rem;
	}
	#email_input::placeholder{
		color: #e5dbc9;
		text-transform: uppercase;
		font-size: 1.5rem;
	}
	
	#email_submit{
		display: flex;
		width: 8rem;
		height: 3.5rem;
		background-color: #1e2328;
		border: 3px solid #bf9e5b;
		color: #b2a781;
		justify-content: center;
		align-items: center;
		transition: .5s ease;
		margin: 0 2rem;
		cursor: pointer;
	}
	#email_submit:hover{
		border: 3px solid #c99c3e;
		color: #d1c9b7;
	}
	
	#atl_universe{
		width: 100%;
		margin-top: 5rem;
		height: auto;
		border-top: 1px solid #937341;
	}
	#atl_universe>h2{
		font-size: 4.5rem;
		font-weight: bold;
		color: #937341;
		font-family: 'STSong', sans-serif;
		text-transform: uppercase;
	}
	
	#atl_universe_list{
		display: flex;
		align-items: center;
	}
	#atl_universe_list>div{
		width: 30%;
		height: 28rem;
		background-position: center center;
		background-size: cover;
		margin-right: 2.5rem;
		border: 1px solid #937341;
		box-shadow: 0px 0px 30px 3px rgba(0,0,0,.8);
		transition: .5s ease;
		cursor: pointer;
		position: relative;
	}
	#atl_universe_list>div:hover{
		transform: scale(1.1,1.1);
	}
	
	#atl_universe_list>#universe_1st{
		background-image: url("../../assets/img/profile/star_guarding_.jpg");
	}
	#atl_universe_list>#universe_2nd{
		background-image: url("../../assets/img/profile/odyssey-hero.png");
	}
	#atl_universe_list>#universe_3rd{
		background-image: url("../../assets/img/profile/KDA_image.jpg");
	}
	
	
	.alt_universe_info{
		width: 100%;
		height: 6rem;
		position: absolute;
		bottom: 0;
		background-color: rgba(9,9,9,.9);
		display: flex;
		justify-content: center;
		align-items: center;
		color: #f0e6d2;
		font-size: 2rem;
		font-family: 'STSong', sans-serif;
		text-transform: uppercase;
		border-top: 1px solid #937341;
	}
	
	@media screen and (max-width: 92rem){
		#new_comics_img{
			display: none;
		}
	}
</style>
