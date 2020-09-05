<template>
	<div id="comics_data_wrap">
		<div v-for="comic in $store.state.comicsStore" class="comics_list_box" @click="buyComics(buyNow,comic)">
			<div class="comics_img"><img :src="$store.state.requestUrl+comic.comicsImg" alt=""></div>
			<div class="comics_star" >
				<img v-show="!$store.getters.isStarFilter(comic.comicsId)" @click.stop="comicsCollection(comic.comicsId)" src="../../assets/img/comics/collect_star.svg" alt="">
				<img v-show="$store.getters.isStarFilter(comic.comicsId)" @click.stop="comicsRelease(comic.comicsId)" src="../../assets/img/comics/collect_star_active.svg" alt=""/>
			</div>
			<div class="comics_info_warp">
				<div class="comics_info_pane">
					<div class="comics_info_details">{{comic.comicsDetails}}</div>
					<div class="comics_info_name">{{comic.comicsName}}: {{comic.comicsDescription}}</div>
					<div class="comics_info_price" v-show="!$store.getters.isPurchasedFilter(comic.comicsId)">{{comic.comicsPrice | getFinalPrice}}</div>
					<div class="comics_info_unlock" v-show="$store.getters.isPurchasedFilter(comic.comicsId)">Unlock</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import {asyn} from "../../request/async";

  export default {
    name: "MainComicsData",
	  data(){
      return{
        buyNow:true,
      }
	  },
	  methods:{
      comicsCollection(comicsId){
        if(this.$store.state.signInState){
          asyn({
	          method: 'post',
	          url: '/profile/insertUserStar',
	          data: {
              starUser: this.$store.state.userInfo.signInUser,
              starComicsId: comicsId
	          }
          }).then(rs=>{
	          this.$store.dispatch('requestUserStar')
          })
        } else {
          setTimeout(()=>{this.$router.push('/account for Universe-of-league-of-legends')},300)
	      }
      },
      comicsRelease(comicsId){
        asyn({
          method: 'post',
          url: '/profile/cancelUserStar',
          data: {
            starUser: this.$store.state.userInfo.signInUser,
            starComicsId: comicsId
          }
        }).then(rs=>{
          console.log(rs.data);
          this.$store.dispatch('requestUserStar')
        }).catch(err=>{
          console.log(err);
        })
      },
      buyComics(buy,comicsObj){
        setTimeout(()=>{this.$emit("buyTheComic",buy,comicsObj)},300)
      }
	  },
	  filters:{
      getFinalPrice(comicsPrice){
        if(comicsPrice==0){
          comicsPrice = 'FREE'
        }else{
          comicsPrice = '$ '+comicsPrice.toFixed(2)
        }
        return comicsPrice
      }
	  },
	  created() {
      //异步请求
      this.$store.dispatch('requestComicsData')
    }
  }
</script>

<style scoped>
	#comics_data_wrap{
		width: 100%;
		height: 100%;
		display: grid;
		
	}
	@media screen and (max-width: 92rem){
		#comics_data_wrap{
			grid-template-columns: 1fr 1fr;
		}
		.comics_list_box{
			width: 28rem;
			height: 30rem;
		}
	}
	@media screen and (min-width: 92rem) and (max-width: 120rem) {
		#comics_data_wrap{
			grid-template-columns: 1fr 1fr 1fr;
		}
		.comics_list_box{
			width: 24rem;
			height: 30rem;
			
		}
	}
	@media screen and (min-width: 120rem){
		#comics_data_wrap{
			grid-template-columns: 1fr 1fr 1fr 1fr;
		}
		.comics_list_box{
			width: 23rem;
			height: 30rem;
		}

	}
	.comics_list_box{
		margin: 1rem 0;
		overflow: hidden;
		position: relative;
		transition: .35s ease;
		border: 1px solid rgba(255,255,255,0);
		cursor: pointer;
	}
	.comics_list_box:hover{
		border: 1px solid #f0e6d2;
	}
	.comics_img{
		width: 100%;
		height: 100%;
		overflow: hidden;
		display: grid;
		justify-content: center;
		justify-items: center;
		position: absolute;
		z-index: 1;
	}
	.comics_img img{
		width: 100.5%;
		height: auto;
	}
	.comics_info_warp{
		width: 100%;
		height: 100%;
		position: absolute;
		top: 0;
		z-index: 2;
		background-color: rgba(0,0,0,.1);
	}
	.comics_info_warp>.comics_info_pane{
		width: 100%;
		height: 25%;
		background: linear-gradient(155deg,rgba(140,140,140,.8),rgba(20,20,20,.8),rgba(20,20,20,.8),rgba(140,140,140,.5));
		position: absolute;
		bottom: 0;
	}
	.comics_info_details{
		margin: 1.5rem 5px;
		font-size: 1rem;
		color: #c6b78d;
		font-weight: 400;
		font-family: 微软雅黑,sans-serif;
	}
	.comics_info_name{
		margin: 1.6rem 5px;
		font-size: 1.8rem;
		text-transform: uppercase;
		font-weight: 700;
		color: #f0e6d2;
		font-family: NSimSun,sans-serif;
	}
	.comics_info_price{
		width: 5.5rem;
		height: 2rem;
		background-color: rgba(243,156,18,.9);
		position: absolute;
		right: .3rem;
		bottom: 1rem;
		display: flex;
		justify-content: center;
		align-items: center;
		color: #f0e6d2;
		font-weight: bold;
	}
	.comics_info_unlock{
		width: 5.5rem;
		height: 2rem;
		background-color: #27ae60;
		position: absolute;
		right: 1rem;
		bottom: 1.5rem;
		display: flex;
		justify-content: center;
		align-items: center;
		color: #f0e6d2;
		font-size: .9rem;
		text-transform: uppercase;
		font-weight: 900;
	}
	.comics_star{
		position: absolute;
		right: 5px;
		top: 5px;
		z-index: 5;
	}
	.comics_star img{
		width: 2rem;
		height: 2rem;
	}

</style>
