<template>
	<div id="account_info_wrap">
		<div id="account_func_box">
			<div id="account_comics_title" @click="jumpFuncArea('myComics')"
			     :style="currentArea=='myComics'?'border-bottom: 1px solid #d8bd70;':''">
				<img src="../../../assets/img/profile/_profile_comics.svg" alt="">
				<span>My Comics</span>
			</div>
			<ul id="account_func_list">
				<li  @click="jumpFuncArea('myStar')"
				     :style="currentArea=='myStar'?'text-decoration: underline;':''">
					<img src="../../../assets/img/profile/_profile_star.svg" alt="">
					<span>Star</span>
				</li>
				<li @click="jumpFuncArea('myHistory')"
				    :style="currentArea=='myHistory'?'text-decoration: underline;':''">
					<img src="../../../assets/img/profile/_profile_history.svg" alt="">
					<span>Purchase History</span>
				</li>
				<li id="profile_message_li">
					<img src="../../../assets/img/profile/_profile_message.svg" alt="">
					<span>Message</span>
				</li>
			</ul>
		</div>
		<div id="account_func_area">
			<my-comics v-if="currentArea=='myComics'"></my-comics>
			<star v-else-if="currentArea=='myStar'"></star>
			<purchase-history v-else-if="currentArea=='myHistory'"></purchase-history>
		</div>
	</div>
</template>

<script>
	import MyComics from './MyComics'
	import Star from './Stared'
	import PurchaseHistory from './PurchaseHistory'
	
  export default {
    name: "AccountInfo",
	  data(){
      return {
        currentArea: 'myComics'
      }
	  },
	  methods:{
      jumpFuncArea(currentArea){
        return this.currentArea = currentArea
      },
	  },
	  components:{
      MyComics,Star,PurchaseHistory
    }
  }
</script>

<style scoped>
	#account_info_wrap{
		width: 85%;
		height: auto;
		padding: 1.5rem 7.5%;
	}
	#account_func_box{
		width: 100%;
		height: 5rem;
		display: flex;
		align-items: center;
		text-transform: uppercase;
		position: relative;
	}
	#account_comics_title{
		font-size: 1.5rem;
		font-weight: 100;
		color: #d8bd70;
		cursor: pointer;
		display: flex;
		border-bottom: 1px solid  rgba(0,0,0,0);
		align-items: center;
	}
	#account_comics_title>img{
		width: 2rem;
		height: auto;
		margin:0rem .6rem .25rem 0rem;
	}
	
	#account_func_list{
		margin: 0;
		padding: 0;
		list-style: none;
		display: flex;
		align-items: center;
		color: #d8bd70;
		position: absolute;
		right: 0;
	}
	#account_func_list>li{
		font-size: 1rem;
		font-weight: 100;
		padding: 0 1rem;
		display: flex;
		align-items: center;
		border-right: 1px solid #d8bd70;
		cursor: pointer;
		transition: .5s ease;
	}
	
	#account_func_list>li>img{
		width: 1.2rem;
		height: 1.2rem;
		vertical-align: middle;
		margin-right: .5rem;
	}
	#account_func_list>#profile_message_li{
		border-right: none;
	}
	#account_func_list>#profile_message_li>img{
		padding-top: 2px;
	}
	
	#account_info_wrap>#account_func_area{
		width: 100%;
		height: auto;
		min-height: 26.4rem;
		background-image: url("../../../assets/img/profile/account_area_bgi.jpg");
		background-position: center center;
		background-size: auto 50rem;
	}
	
	
</style>
