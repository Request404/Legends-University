<template>
	<div id="my_comics_wrap">
		<ul class="my_comics_ul_">
			<li class="my_comics_list_" v-for="myComic in $store.getters.getUserPurchaseComics">
				<div class="my_comics_img"><img :src="$store.state.requestUrl+myComic.comicsImg" alt=""></div>
				<div class="my_comics_info_">
					<span class="my_comics_detail_">{{myComic.comicsDetails}}</span>
					<span class="my_comics_name_">{{myComic.comicsName}}: {{myComic.comicsDescription}}</span>
				</div>
			</li>
			<li class="my_comics_add" @click="addComics"><img src="../../../assets/img/profile/add.svg" alt=""></li>
		</ul>
	</div>
</template>r

<script>
	
  export default {
    name: "MyComics",
	  data(){
      return{
        myComics: this.$store.getters.getUserPurchaseComics
      }
	  },
	  watch:{
      myComics(){
        console.log(myComics);
      }
	  },
	  methods:{
      addComics(){
        this.$router.push('/universe/comics');
      }
	  }
  }
</script>

<style scoped>
	#my_comics_wrap{
		width: 100%;
		height: auto;
	}
	.my_comics_ul_{
		width: 100%;
		height: auto;
		padding: 0;
		margin: 0;
		list-style: none;
		display: grid;
	}
	.my_comics_ul_>li{
		height: 25rem;
		margin: .7rem auto;
		position: relative;
		box-shadow: 0 0 30px 3px rgba(0,0,0,.8);
		transition: .5s ease;
		cursor: pointer;
		display: flex;
		align-items: center;
		border: 2px solid #d8bd70;
	}
	.my_comics_ul_>li:hover{
		transform: scale(1.1,1.1);
	}
	.my_comics_add{
		background-color: rgba(66,66,66,.7);
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.my_comics_add>img{
		width: 6rem;
		height: auto;
		vertical-align: middle;
	}
	
	.my_comics_img{
		height: 100%;
		width: 100%;
		position: absolute;
		z-index: 0;
		top: 0;
		left: 0;
		overflow: hidden;
	}
	.my_comics_img>img{
		width: 100%;
		height: auto;
	}
	.my_comics_info_{
		width: 100%;
		height: 25%;
		position: absolute;
		z-index: 1;
		bottom: 0;
		background: linear-gradient(155deg,rgba(140,140,140,.8),rgba(20,20,20,.8),rgba(20,20,20,.8),rgba(140,140,140,.5));
		display: grid;
		align-content: center;
	}
	.my_comics_detail_{
		display: block;
		margin: .5rem 5px;
		font-size: .9rem;
		color: #c6b78d;
		font-weight: 400;
		font-family: 微软雅黑,sans-serif;
	}
	.my_comics_name_{
		display: block;
		font-size: 1.4rem;
		font-weight: 700;
		color: #f0e6d2;
		font-family: NSimSun,sans-serif;
		margin: .3rem 5px;
	}
	
	@media screen and (max-width: 75rem){
		.my_comics_ul_{
			grid-template-columns: 1fr 1fr;
		}
		.my_comics_ul_>li{
			width: 23rem;
		}
	}
	@media screen and (min-width: 75rem) and (max-width: 100rem){
		.my_comics_ul_{
			grid-template-columns: 1fr 1fr 1fr;
		}
		.my_comics_ul_>li{
			width: 20rem;
		}
	}
	@media screen and (min-width: 100rem) and (max-width: 120rem) {
		.my_comics_ul_{
			grid-template-columns: 1fr 1fr 1fr 1fr;
		}
		.my_comics_ul_>li{
			width: 20rem;
		}
	}
	@media screen and (min-width: 120rem){
		.my_comics_ul_{
			grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
		}
		.my_comics_ul_>li{
			width: 19rem;
		}
	}
	
</style>
