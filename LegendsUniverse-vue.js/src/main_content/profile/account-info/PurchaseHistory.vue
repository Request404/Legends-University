<template>
	<div id="purchase_history_wrap">
		<ul class="purchase_history_ul" v-if="$store.getters.getUserPurchaseHistory.length">
			<li v-for="history in $store.getters.getUserPurchaseHistory">
				<div class="history_comics_img">
					<img :src="$store.state.requestUrl+history.purchaseComics.comicsImg" alt="">
				</div>
				<div class="purchase_history_info">
					<div class="purchase_comics_info_">
						<span class="purchase_comics_details">{{history.purchaseComics.comicsDetails}}</span>
						<span class="purchase_comics_name">{{history.purchaseComics.comicsName}}: {{history.purchaseComics.comicsDescription}}</span>
						<span class="purchase_comics_ordNo">No. {{history.purchaseOrderId | getFinalOderId}}</span>
					</div>
					<div class="purchase_comics_price">{{history.purchasePay | getFinalPrice}}</div>
					<span class="purchase_comics_data">{{history.purchaseDate}}</span>
					<div></div>
				</div>
			</li>
		</ul>
		<div id="is_empty_history" v-else>
			<p>No Purchase History!</p>
		</div>
	</div>
</template>

<script>
  
  export default {
    name: "PurchaseHistory",
	  data(){
      return{
        myHistory: this.$store.getters.getUserPurchaseHistory
      }
	  },
    filters:{
      getFinalPrice(comicsPrice){
        return comicsPrice = '$ '+comicsPrice.toFixed(2)
      },
      getFinalOderId(purchaseOrderId){
        return 'COMIC-'+(Array(10).join('0') + purchaseOrderId).slice(-10);
      }
    }
  }
</script>

<style scoped>
	#purchase_history_wrap{
		width: 100%;
		height: auto;
	}
	.purchase_history_ul{
		width: 98%;
		height: auto;
		margin: auto;
		padding: 0;
		list-style: none;
		display: grid;
		align-items: center;
	}
	.purchase_history_ul>li{
		width: 100%;
		height: 15rem;
		margin: 1% 0;
		background-color: rgba(12,12,12,.8);
		display: flex;
		align-items: center;
		position: relative;
		border: 2px solid #d8bd70;
	}
	.history_comics_img{
		width: 12rem;
		height: 100%;
		overflow: hidden;
	}
	.history_comics_img>img{
		width: 100%;
		height: auto;
		vertical-align: middle;
	}
	
	.purchase_history_info{
		width: auto;
		height: 100%;
		display: flex;
		align-items: center;
	}
	.purchase_comics_info_{
		width: auto;
		height: 90%;
		margin: 10% 5%;
	}
	.purchase_comics_details{
		display: block;
		font-size: 2rem;
		padding: 1rem;
		color: #c6b78d;
		font-weight: 100;
		font-family: 微软雅黑,sans-serif;
	}
	.purchase_comics_name{
		display: block;
		font-size: 2rem;
		padding: 1rem;
		font-weight: 700;
		color: #f0e6d2;
		font-family: NSimSun,sans-serif;
	}
	.purchase_comics_ordNo{
		display: block;
		font-size: .9rem;
		padding: 1.2rem;
		color: #d8bd70;
		font-family: "微软雅黑 Light",sans-serif;
	}
	.purchase_comics_price{
		position: absolute;
		right: 1rem;
		top: 30%;
		font-size: 1.5rem;
		color: #d8bd70;
	}
	.purchase_comics_data{
		position: absolute;
		right: 1rem;
		font-size: 1.2rem;
		font-weight: 900;
		top: 50%;
		color: #f0e6d2;
		font-family: NSimSun,sans-serif;
	}
	
	#is_empty_history{
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
