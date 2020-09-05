<template>
	<div id="comics_wrap">
		<section v-if="!isBuy">
			<div id="comics_the_lines">
				-- Exploring  the  unknown  land  of  runes
			</div>
			<scroll-data></scroll-data>
			<main-comics>
				<template v-slot:the_comics >
					<main-comics-data @buyTheComic="buyComics"></main-comics-data>
				</template>
			</main-comics>
			<copyright></copyright>
		</section>
		<buy-comics v-else :comicsObject="comicsObj" @cancelBuy="cancelBuy"></buy-comics>
	
	</div>
</template>

<script>
	import ScrollData from './ScrollData'
	import MainComics from './MainComics'
  import BuyComics from './BuyAComics'
	import MainComicsData from './MainComicsData'
	import Copyright from '../copyright/Copyright'
	
	
  export default {
    name: "Comics",
	  data(){
      return{
        isBuy:false,
        comicsObj:null
      }
	  },
	  components:{
      ScrollData,
		  MainComics,
      BuyComics,
      MainComicsData,
		  Copyright,
	  },
	  methods:{
      buyComics(buy,comicsObj){
        return this.isBuy = buy,this.comicsObj = comicsObj
      },
      cancelBuy(noBuy){
        return this.isBuy = noBuy

      }
	  }
  }
</script>

<style scoped>
	#comics_wrap{
		width: 100%;
		min-width: 920px;
		height: auto;
		background-color: rgba(1,10,19,.95);
	}
	#comics_the_lines{
		width: 80%;
		margin: auto;
		font-size: 2rem;
		font-weight: 900;
		font-family: NSimSun,sans-serif;
		color: rgb(147, 115, 65);
		padding-top: 1.25rem;
		text-transform: uppercase;
	}
</style>
