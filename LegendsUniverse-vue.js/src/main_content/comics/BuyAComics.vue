<template>
	<div id="buy_comics_pane" ref="buy_comics_pane">
		<div id="buy_comics_content" v-show="!goToBuy">
			<div id="buy_comics_content_img">
				<img :src="$store.state.requestUrl+comicsObject.comicsImg" class="left_comics_img" alt="">
				<img :src="$store.state.requestUrl+comicsObject.detailUrl" class="right_comics_img" alt="">
			</div>
			<div id="buy_of_comics_info">
				<div id="buy_of_comics_name">{{comicsObject.comicsName}}: {{comicsObject.comicsDescription}}</div>
				<div id="buy_of_comics_details">{{comicsObject.comicsDetails}}</div>
				<div id="buy_of_comics_contents">
					{{comicsObject.contentDes}}
				</div>
				<div id="buy_of_comics_btn">
					<div id="pay_this_comic" @click="jumpGoToConfirm" v-if="!$store.getters.isPurchasedFilter(comicsObject.comicsId)">
						{{comicsObject.comicsPrice | getFinalPrice}}
					</div>
					<div id="is_Unlock" v-else-if="$store.getters.isPurchasedFilter(comicsObject.comicsId)">Unlock</div>
					<div id="cancel_buy_btn" @click="cancelBuy(noBuy)">
						CANCEL
					</div>
				</div>
			</div>
		</div>
		<div id="confirm_buy_pane" v-show="goToBuy">
			<div v-show="!confirmBuy" id="purchase_message">
				<div id="purchase_comics_image">
					<img :src="$store.state.requestUrl+comicsObject.comicsImg" alt="">
				</div>
				<div id="purchase_message_pane">
					<p id="purchase_message_word">Do you went to buy  <span>{{comicsObject.comicsName}}: {{comicsObject.comicsDescription}}</span>  for you account ?</p>
					<div>
						<input id="confirm_check" type="checkbox" v-model="checkOutToPay" value="checkOut">
						<label for="confirm_check" id="message_check_label">This purchase is not refundable,please check out !</label>
					</div>
					<div id="choose_button_pane">
						<button ref="passConfirm" @click="submitByComics(comicsObject)" id="pass_confirm_button" :disabled="disPay">Pay {{comicsObject.comicsPrice | getFinalPrice}}</button>
						<button id="cancel_confirm_button" @click="returnBuy">Return</button>
					</div>
				</div>
			</div>
			<div v-show="confirmBuy" id="thanks_pane">
				<div id="thanks_box">
					<p id="thanks_word">Thank you for your purchase!</p>
					<button id="return_button" @click="successBuy(noBuy)">ok</button>
				</div>
			</div>
		</div>
		<copyright></copyright>
	</div>
</template>

<script>
  
  import Copyright from '../copyright/Copyright'
  import {asyn} from "../../request/async";
  
  export default {
    name: "BuyAComics",
	  props:{
      comicsObject:{
        type: Object,
        default(){
          return  {comicsId:null,comicsImg: null, comicsName:null,comicsDetails: null,comicsDescription: null,comicsPrice: null,contentDes: null,detailUrl:null}
			  },
		  }
	  },
	  watch:{
      checkOutToPay(){
        if (this.checkOutToPay){
          this.disPay = false;
	        this.$refs.passConfirm.style.backgroundColor='#2ecc71'
        }else {
          this.disPay = true;
          this.$refs.passConfirm.style.backgroundColor='#9e9e9e'
        }
		  }
	  },
	  data(){
      return{
        noBuy: false,
	      goToBuy: false,
        confirmBuy: false,
        checkOutToPay: null,
        disPay: true,
      }
	  },
	  methods:{
      getDatetime() {
        let date = new Date();
	      let year =  date.getFullYear();
        let month = date.getMonth()+1;
        let day = date.getDate();
        let hour = date.getHours();
        let min = date.getMinutes();
        let seconds = date.getSeconds()
        return year+"-"+month+"-"+day+" "+hour+":"+min+":"+seconds;
      },
      jumpGoToConfirm(){
        if(this.$store.state.signInState){
          this.goToBuy = true
        }else {
          setTimeout(()=>{this.$router.push('/account for Universe-of-league-of-legends')},300)
        }
      },
      cancelBuy(noBuy){
        this.$emit('cancelBuy',noBuy)
      },
			submitByComics(comicsObject){
        asyn({
	        method: 'post',
	        url: '/profile/insertPurchaseHistory',
	        data: {
            purchaseUserName: this.$store.state.userInfo.signInUser,
            purchaseDate: this.getDatetime(),
            purchasePay: comicsObject.comicsPrice,
            purchaseComicsId: comicsObject.comicsId,
	        }
        }).then(rs=>{
          if (rs.data){
            this.confirmBuy=true
            this.$store.dispatch('requestUserPurchaseHistory')
          } else {
            console.log(rs);
          }
        }).catch(err=>{
          console.log(err);
        })
			},
      returnBuy(){
        this.goToBuy = false
      },
      successBuy(noBuy){
        this.confirmBuy = false
        this.goToBuy = false
        this.$emit('cancelBuy',noBuy)
      }
	  },
	  components:{
      Copyright
	  },
    filters:{
      getFinalPrice(comicsPrice){
        return  comicsPrice = '$ '+comicsPrice.toFixed(2)
      }
    }
  }
</script>

<style scoped>
	#buy_comics_pane{
		width: 100%;
		height: auto;
		background-color: rgba(1,10,19,.95);
		position: relative;
	}
	#buy_comics_content{
		width: 80%;
		height: auto;
		margin: auto;
		padding: 2.5%;
		display: flex;
		align-items: center;
	}
	#buy_comics_content_img{
		width: auto;
		height: 33rem;
		display: flex;
		margin: 1rem 1.5rem 1rem 1.5rem;
		align-items: center;
		box-shadow: 0px 0px 30px 3px rgba(0,0,0,.8);
	}
	#buy_comics_content_img>img{
		width: 22rem;
		height: 33rem;
		vertical-align: middle;
	}
	#buy_of_comics_info{
		width: auto;
		height: 33rem;
		position: relative;
	}
	#buy_of_comics_name{
		font-size: 2.5rem;
		text-transform: uppercase;
		font-weight: 700;
		color: #f0e6d2;
		font-family: NSimSun,sans-serif;
	}
	#buy_of_comics_details{
		margin: 1.5rem 0;
		font-size: 1.5rem;
		color: #c6b78d;
		font-weight: 400;
		font-family: 微软雅黑,sans-serif;
	}
	#buy_of_comics_contents{
		margin: 1.5rem 0;
		font-size: 1.1rem;
		color: #f0f0f0;
		font-weight: 100;
		line-height: 2rem;
		font-family: "微软雅黑 Light",sans-serif;
		height: 20rem;
		overflow: scroll;

	}
	#buy_of_comics_contents::-webkit-scrollbar {
		display: none;
	}
	#buy_of_comics_contents{
		-ms-overflow-style: none;
		overflow: -moz-scrollbars-none;
	}
	#buy_of_comics_btn{
		width: auto;
		height: auto;
		display: flex;
		position: absolute;
		bottom: 0;
		right: 0;
	}
	#pay_this_comic{
		width: 6rem;
		height: auto;
		padding: .6rem 0;
		margin: 0 .5rem;
		border: 1px solid rgba(0,0,0,0);
		background-color: #2ecc71;
		display: flex;
		justify-content: center;
		align-items: center;
		color: #f0e6d2;
		font-weight: bold;
		cursor: pointer;
		transition: .5s ease;
	}
	
	#pay_this_comic:hover{
		background-color: #0be881;
		border: 1px solid snow;
	}
	#is_Unlock{
		width: 6rem;
		height: auto;
		padding: .6rem 0;
		margin: 0 .5rem;
		border: 1px solid rgba(0,0,0,0);
		background-color: #7e7e7e;
		display: flex;
		justify-content: center;
		align-items: center;
		color: #f0e6d2;
		font-weight: bold;
		cursor: pointer;
		transition: .5s ease;
		text-transform: uppercase;
		user-select: none;
	}
	#is_Unlock:hover{
		border: 1px solid snow;
	}
	
	#cancel_buy_btn{
		width: 6rem;
		height: auto;
		padding: .6rem 0;
		margin: 0 .5rem;
		border: 1px solid rgba(0,0,0,0);
		background-color: #e74c3c;
		display: flex;
		justify-content: center;
		align-items: center;
		color: #f0e6d2;
		font-weight: bold;
		cursor: pointer;
		transition: .5s ease;
	}
	
	#cancel_buy_btn:hover{
		background-color: #e55039;
		border: 1px solid snow;
	}
	
	#confirm_buy_pane{
		width: 80%;
		height: auto;
		margin: auto;
		padding: 2.5%;
		user-select: none;
	}
	#purchase_message{
		width: 100%;
		height: auto;
		display: flex;
		justify-content: center;
	}
	#purchase_comics_image{
		width: 16rem;
		height: auto;
		padding-right: 5rem;
	}
	#purchase_comics_image>img{
		width: 100%;
		height: auto;
	}
	
	#purchase_message_pane{
		width: auto;
		max-width: 50rem;
		height: auto;
		position: relative;
	}
	
	#purchase_message_word{
		font-size: 2rem;
		color: white;
	}
	#purchase_message_word>span{
		font-family: NSimSun,sans-serif;
		font-weight: 900;
		color: #d8bd70;
	}
	#confirm_check{
		width: 1.2rem;
		height: 1.2rem;
		margin: 3rem .5rem 2rem 0rem;
		cursor: pointer;
	}
	
	#message_check_label{
		font-size: 1.2rem;
		font-weight: 100;
		color: #f0f0f0;
		position: relative;
		top: -.2rem;
		cursor: pointer;
	}
	
	#choose_button_pane{
		position: absolute;
		bottom: .5rem;
		right: .5rem;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	#pass_confirm_button{
		width: 6rem;
		height: auto;
		padding: .6rem 0;
		margin: 0 .5rem;
		border: 1px solid rgba(0,0,0,0);
		background-color: #9e9e9e;
		display: flex;
		justify-content: center;
		align-items: center;
		color: #f0e6d2;
		font-weight: bold;
		cursor: pointer;
		transition: .5s ease;
		text-transform: uppercase;
		outline: none;
	}
	#pass_confirm_button:hover{
		border: 1px solid snow;
	}
	
	#cancel_confirm_button{
		width: 6rem;
		height: auto;
		padding: .6rem 0;
		margin: 0 .5rem;
		border: 1px solid rgba(0,0,0,0);
		background-color: #e74c3c;
		display: flex;
		justify-content: center;
		align-items: center;
		color: #f0e6d2;
		font-weight: bold;
		cursor: pointer;
		transition: .5s ease;
		outline: none;
		text-transform: uppercase;
	}
	#cancel_confirm_button:hover{
		background-color: #e55039;
		border: 1px solid snow;
	}
	
	#thanks_pane{
		width: 100%;
		height: 20rem;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	#thanks_box{
		width: 33rem;
		height: 18rem;
		border: 2px solid #937341;
		border-radius: 2px;
		display: grid;
		justify-items: center;
		background-image: url("../../assets/img/comics/purchase_success_.jpg");
		background-position: center center;
		background-size: 120% 120%;
		overflow: hidden;
	}
	#thanks_word{
		padding: 2.5rem 0;
		font-size: 2rem;
		font-family: "微软雅黑 Light";
		color: #d8bd70;
	}
	#return_button{
		width: 6rem;
		height: 2.5rem;
		padding: .6rem 0;
		margin: 0 .5rem;
		border: 1px solid #937341;
		background-color: #2ecc71;
		display: flex;
		font-size: 1.2rem;
		line-height: 1.2rem;
		justify-content: center;
		align-items: center;
		color: #f0e6d2;
		font-weight: bold;
		cursor: pointer;
		transition: .5s ease;
		text-transform: uppercase;
		letter-spacing: 2px;
	}
	
	.left_comics_img{
		border: 1px solid #937341;
		border-right: none;
	}
	.right_comics_img{
		border: 1px solid #937341;
	}
	@media screen and (max-width: 92rem){
		#buy_comics_content{
			display: block;
		}
	}
	@media screen and (min-width: 92rem) and (max-width: 120rem) {
		#buy_comics_content{
			display: flex;
		}
	}
	@media screen and (min-width: 120rem){
		#buy_comics_content{
			display: flex;
		}
	}
</style>
