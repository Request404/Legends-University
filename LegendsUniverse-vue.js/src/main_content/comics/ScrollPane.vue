<template>
	<div id="scroll_data">
		<div class="scroll_img_data">
			<slot name="img"></slot>
		</div>
		<div class="scroll_details_data">
			<div class="comics_book_icon">
				<img src="../../assets/img/comics/icon-book.svg" alt="">
			</div>
			<h2 class="scroll_comics_author">
				by <br>
				<slot name="author"></slot>
			</h2>
			<h1 class="scroll_comics_comicName">
				<slot name="comicName"></slot>
			</h1>
			<p class="scroll_comics_description">
				<slot name="description"></slot>
			</p>
		</div>
	</div>
</template>

<script>
	
	
  export default {
    name: "ScrollPane",
	  data(){
      return{
      
      }
	  }
  }
</script>

<style scoped>
	#scroll_data{
		width: 100%;
		height: 100%;
		display: flex;
		user-select: none;
	}
	#scroll_data>.scroll_img_data{
		width: 80%;
		height: 100%;
		border-radius: 1px;
		overflow: hidden;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.scroll_img_data>img{
		width: 105%;
		min-width: 900px;
		height: 100%;
	}
	#scroll_data>.scroll_details_data{
		width: 20%;
		min-width: 300px;
		height: 100%;
		background-color: #111111;
		overflow: hidden;
		
	}
	.comics_book_icon{
		width: 80%;
		display: grid;
		align-content: center;
		justify-items: center;
		margin: 15% auto;
	}
	.comics_book_icon>img{
		width: 3rem;
		height: 3rem;
	}
	.scroll_comics_author{
		color: rgb(196, 185, 152);
		text-transform: uppercase;
		font-family:NSimSun,sans-serif;
		font-size: 1.6rem;
		margin: 2rem auto;
		text-align: center;
		line-height: 1.6rem;
	}
	.scroll_comics_comicName{
		color: rgb(147, 115, 65);
		text-transform: uppercase;
		font-size: 3rem;
		font-family:NSimSun,sans-serif;
		margin: 2rem auto;
		text-align: center;
	}
	.scroll_comics_description{
		color: rgb(196, 185, 152);
		margin: 3rem 5rem;
		text-align: center;
		line-height: 1.3rem;
	}
	
	@media screen and (max-width: 120rem) {
		.scroll_comics_comicName{
			font-size: 2rem;
		}
	}
	@media screen and (min-width: 120rem) {
		.scroll_comics_comicName{
			font-size: 2rem;
		}
	}
</style>
