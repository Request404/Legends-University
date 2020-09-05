<template>
	<div id="star_comics_wrap">
		<ul id="star_comics_ul" v-show="$store.getters.getUserStarComics.length">
			<li v-for="star in $store.getters.getUserStarComics">
				<div class="star_comics_img">
					<img :src="$store.state.requestUrl+star.comicsImg" alt="">
				</div>
				<div class="star_comics_pane">
					<div class="star_comics_info">
						<span class="star_comics_details">{{star.comicsDetails}}</span>
						<span class="star_comics_name">{{star.comicsName}}: {{star.comicsDescription}}</span>
					</div>
					<div class="star_comics_price">{{star.comicsPrice | getFinalPrice}}</div>
					<div class="cancel_star" @click="cancelStar(star.comicsId)">
						<img src="../../../assets/img/profile/cancel_star_.svg" alt="">
					</div>
				</div>
			</li>
		</ul>
		<div v-show="!$store.getters.getUserStarComics.length" id="empty_collected">
			<span>Empty Collected</span>
		</div>
	</div>
</template>

<script>
  import {asyn} from "../../../request/async";
	
  export default {
    name: "Stared",
    data(){
      return{
	      totalPrice: 0
      }
    },
    computed:{
    
    },
	  methods:{
      cancelStar(comicsId){
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
	  },
    filters:{
      getFinalPrice(comicsPrice){
        return comicsPrice = '$ '+comicsPrice.toFixed(2)
      }
    }
  }
</script>

<style scoped>
	#star_comics_wrap{
		width: 100%;
		height: auto;
		min-height: 26.4rem;
		position: relative;
	}
	#star_comics_ul{
		width: 98%;
		height: auto;
		margin: auto;
		padding: 0;
		list-style: none;
		display: grid;
		align-items: center;
	}
	#star_comics_ul>li{
		width: 100%;
		height: 15rem;
		margin: 1% 0;
		background-color: rgba(12,12,12,.8);
		display: flex;
		align-items: center;
		position: relative;
		transition: 1s ease;
		border-radius: 0 5px 5px 0;
		box-shadow: 0 0 30px 3px rgba(0,0,0,.8);
		border: 1px solid #d8bd70;
		cursor: pointer;
	}
	
	.star_comics_img{
		width: 12rem;
		height: 100%;
		overflow: hidden;
	}
	.star_comics_img>img{
		width: 100%;
		height: auto;
		vertical-align: middle;
	}
	
	.star_comics_pane{
		width: auto;
		height: 100%;
		display: flex;
		align-items: center;
	}
	
	.star_comics_info{
		width: auto;
		height: 90%;
		margin: 10% 5%;
	}
	.star_comics_info>.star_comics_details{
		display: block;
		font-size: 2rem;
		padding: 1rem;
		color: #c6b78d;
		font-weight: 100;
		font-family: 微软雅黑,sans-serif;
	}
	.star_comics_info>.star_comics_name{
		display: block;
		font-size: 2.5rem;
		padding: 2rem 1rem;
		font-weight: 700;
		color: #f0e6d2;
		font-family: NSimSun,sans-serif;
	}
	
	.star_comics_select img{
		width: 2rem;
		height: 2rem;
		vertical-align: middle;
	}
	.star_comics_select>span{
		margin-left: .5rem;
		font-size: 1.5rem;
		color: #f0e6d2;
		font-weight: bold;
		text-transform: uppercase;
	}
	.star_comics_price{
		width: 5.5rem;
		height: 2rem;
		background-color: rgba(243,156,18,.9);
		position: absolute;
		right: .5rem;
		bottom: .5rem;
		display: flex;
		justify-content: center;
		align-items: center;
		color: #f0e6d2;
		font-weight: bold;
	}
	
	.cancel_star{
		width: 1.8rem;
		height: 1.8rem;
		position: absolute;
		top: .5rem;
		right: .5rem;
	}
	.cancel_star img{
		width: 100%;
		height: 100%;
	}
	#select_all>img{
		width: 2rem;
		height: 2rem;
		vertical-align: middle;
	}
	#select_all>span{
		margin-left: .5rem;
		font-size: 1.5rem;
		color: #f0e6d2;
		font-weight: bold;
		text-transform: uppercase;
	}
	
	#empty_collected{
		width: 100%;
		height: 20rem;
		font-size: 3rem;
		color: #f0e6d2;
		display: flex;
		align-items: center;
		justify-content: center;
		text-transform: uppercase;
		font-family: NSimSun,sans-serif;
		font-weight: bold;
		letter-spacing: 5px;
	}
</style>
