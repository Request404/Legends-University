<template>
	<div id="regions_data">
		<header id="regions_title">REGIONS</header>
		<div id="regions_data_wrap">
			<div v-for="(region,index) in $store.state.regionsData" class="regions_list_box" @mouseenter="regionActive(index)" @mouseleave="regionNoActive()">
				<div class="regions_data_img"><img :src="$store.state.requestUrl+region.regionImg" alt=""></div>
				<div class="regions_data_name">{{region.regionName}}</div>
				<div class="regions_data_ico" :style="regionsActive!=index?'opacity: 1;':'opacity: 0;'">
					<img :src="$store.state.requestUrl+region.regionIco" alt="">
				</div>
			</div>
		</div>
	</div>
</template>

<script>

  import {asyn} from "../../request/async";

  export default {
    name: "RegionsData",
	  data(){
      return{
        regionsActive: null,
      }
	  },
	  methods:{
      regionActive(index){
        this.regionsActive = index
        return this.regionsActive
      },
      regionNoActive(){
	      return this.regionsActive = null
      }
	  },
	  created() {
     this.$store.dispatch('requestRegionsData')
    }
  }
</script>

<style scoped>
	#regions_data{
		width: 100%;
		height: auto;
		background-image: url("../../assets/img/regions/regions_bgi.png");
		background-position: center center;
		background-size: cover;
	}
	#regions_data>#regions_title{
		width: 90%;
		margin: auto;
		font-size: 4.5rem;
		font-weight: 900;
		font-family: NSimSun,sans-serif;
		color: #f0e6d2;
		padding: 6rem 5px;
	}
	
	#regions_data>#regions_data_wrap{
		width: 90%;
		height: auto;
		margin: auto;
		display: grid;
		grid-template-columns: 1fr 1fr 1fr 1fr;
	}

	
	.regions_list_box{
		cursor: pointer;
		user-select: none;
		margin-bottom: 1.5rem;
		position: relative;
		transition: .5s ease;
		border: 1px solid rgba(50,50,50,.5);
		box-shadow: 0px 0px 30px 3px rgba(0,0,0,.8);
	}
	.regions_list_box:hover{
		border: 1px solid #d8bd70;
	}
	.regions_data_img{
		width: 100%;
		height: 70%;
		position: absolute;
		z-index: 0;
		top: 0;
	}
	.regions_data_img img{
		width: 100%;
		height: 100%;
		vertical-align: middle;
	}
	.regions_data_name{
		width: 100%;
		height: 30%;
		background-color: #010a13;
		color: #f0e6d2;
		position: absolute;
		z-index: 2;
		bottom: 0;
		display: flex;
		justify-content: center;
		align-items: center;
		font-size: 2rem;
		text-transform: uppercase;
		font-family: NSimSun, sans-serif;
		font-weight: 900;
	}
	
	.regions_data_ico{
		width: 100%;
		height: 70%;
		position: absolute;
		z-index: 1;
		display: flex;
		justify-content: center;
		align-items: center;
		background-color: rgba(1,10,19,.7);
		transition: .5s ease;
	}
	/*.regions_data_ico:hover{*/
	/*	opacity: 0;*/
	/*}*/
	
	.regions_data_ico>img{
		width: auto;
		height: 55%;
	}
	
	@media screen and (max-width: 92rem){
		#regions_data>#regions_data_wrap{
			grid-template-columns: 1fr 1fr;
		}
		.regions_list_box{
			width: 27rem;
			height: 18rem;
		}
		#regions_data>#regions_title{
			text-align: center;
		}
	}
	@media screen and (min-width: 92rem) and (max-width: 120rem) {
		#regions_data>#regions_data_wrap{
			grid-template-columns: 1fr 1fr 1fr;
		}
		.regions_list_box{
			width: 26rem;
			height: 17rem;
		}
	}
	@media screen and (min-width: 120rem){
		#regions_data>#regions_data_wrap{
			grid-template-columns: 1fr 1fr 1fr 1fr;
		}
		.regions_list_box{
			width: 25rem;
			height: 16rem;
		}
	}
</style>
