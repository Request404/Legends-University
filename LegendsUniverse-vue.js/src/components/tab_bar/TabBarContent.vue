<template>
	<div id="tab_bar_content">
		<div id="tab_bar_1st"  @click="pageJump('/universe/comics')" >
			<div id="tab_bar_1st_bgi"></div>
			<div id="tab_bar_intro">
				<div id="tab_bar_words">
					The appearance of a comet in the night sky is often said to portend upheaval and unrest.
					Under the auspices of such fiery harbingers, new empires rise, old cultures fall, and even
					the stars themselves may vanish from the heavens…
				</div>
				<div>
					COMICS
				</div>
			</div>
		</div>
		<div id="tab_bar_2nd" @click="pageJump('/universe/champions')" @mouseover="mBackground(1)" @mouseout="mBackground(0)">
			<div id="tab_bar_2nd_bgi" :class="{moveBackground:currentIndex == 1}"></div>
			<div>
				CHAMPIONS
			</div>
		</div>
		<div id="tab_bar_3rd" @click="pageJump('/universe/regions')" @mouseover="mBackground(2)" @mouseout="mBackground(0)">
			<div id="tab_bar_3rd_bgi" :class="{moveBackground:currentIndex == 2}"></div>
			<div>
				REGIONS
			</div>
		</div>
		<div id="tab_bar_4th" @click="pageJump('/universe/profile')" @mouseover="mBackground(3)" @mouseout="mBackground(0)">
			<div id="tab_bar_4th_bgi" :class="{moveBackground:currentIndex == 3}"></div>
			<div>
				PROFILE
			</div>
		</div>
<!--		<i><img src="../../assets/img/tab_bar/roit_game_logo.png" alt=""></i>-->
	</div>
</template>

<script>

  export default {
    name: "TabBarContent",
	  data(){
      return{
        currentIndex: 0,
        routeChange: true,
	      isClick: true
      }
	  },
	  methods: {
      pageJump(path) {
        if(this.routeChange){
          this.routeChange = false
          setTimeout(()=>{
            this.routeChange = true
            return this.routeChange
          },1300)
          this.$router.replace(path)
          this.$emit('pageJump',!this.routeChange)
          return this.routeChange
        }
      },
		  mBackground(index){
        return this.currentIndex = index
		  }
    },
	  
  }
</script>

<style scoped>
	#tab_bar_content{
		width: 100%;
		height: 100%;
		background-image: url("../../assets/img/tab_bar/tabbar_shurima-risen_.jpg");
		background-position: right;
		position: relative;

		overflow: hidden;
	}
	#tab_bar_content>div{
		position: absolute;
		width: 65%;
		height: 100%;
		transform: skewX(50deg);
		border-radius: 8px;
		cursor: pointer;
		transition: 1.2s ease;
		user-select: none;
		color: #a58650;
		font-family: Castellar, sans-serif;
		overflow: hidden;
		border-right: 2px solid #937341;
		font-weight: 900;
	}
	#tab_bar_content>div:hover{
		color: #f0e6d2;
	}
	#tab_bar_content>div:hover{
		box-shadow: 2px 0px 2px 2px rgba(66,66,66,.2);
	}
	#tab_bar_content>div>div{
		transform: skewX(-50deg);
		height: 100%;
		position: absolute;
		right: 22px;
		line-height: 100px;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	/*#tab_bar_content>i {*/
	/*	position: absolute;*/
	/*	right: 5%;*/
	/*	top: 1rem;*/
	/*	width: 5rem;*/
	/*	height: 100%;*/
	/*	min-height: 9rem;*/
	/*	overflow: hidden;*/
	/*	vertical-align: middle;*/
	/*}*/
	/*#tab_bar_content>i>img{*/
	/*	width: 3rem;*/
	/*	height: 3rem;*/
	/*}*/
	
	#tab_bar_1st>#tab_bar_1st_bgi{
		width: 120%;
		height: 105%;
		background-image: url("../../assets/img/tab_bar/tabbar_home_.jpg");
		background-position: 100%;
		position: absolute;
		left: 10%;
	}
	
	#tab_bar_1st>#tab_bar_intro{
		width: 70%;
		height: 100%;
		display: flex;
	}
	#tab_bar_intro>#tab_bar_words{
		font-size: 1rem;
		width: 85%;
		height: 100%;
		margin-right: 20px;
		line-height: 2rem;
		font-weight: 100;
		color: #d8bd70;
		text-indent: 2em;
		font-family: 微软雅黑;
	}
	
	
	#tab_bar_2nd>#tab_bar_2nd_bgi{
		width: 120%;
		height: 105%;
		background-image: url("../../assets/img/tab_bar/tabbar_zuan_.jpg");
		background-position: 100%;
		position: absolute;
		left: 10%;
	}
	#tab_bar_3rd>#tab_bar_3rd_bgi{
		width: 120%;
		height: 105%;
		background-image: url("../../assets/img/tab_bar/tabbar_freyrod_.jpg");
		background-position: 100%;
		position: absolute;
		left: 10%;
	}
	
	#tab_bar_4th>#tab_bar_4th_bgi{
		width: 120%;
		height: 105%;
		background-image: url("../../assets/img/tab_bar/tabbar_bilgewater_.jpg");
		background-position: 100%;
		position: absolute;
		left: 10%;
	}
	.moveBackground{
		animation: anim 20s;

	}
	@keyframes anim{
		form{background-position: 100% ;}
		to{background-position: 0%;}
	}
	
	@media screen and (max-width: 92rem){
		#tab_bar_1st{
			left: -38%;
			z-index: 4;
		}
		#tab_bar_1st:hover{
			left: -36%;
		}
		#tab_bar_1st>#tab_bar_intro{
			width: 35%;
			height: 100%;
			position: absolute;
			right: 22px;
		}
		#tab_bar_intro>#tab_bar_words{
			display: none;
		}
		#tab_bar_2nd{
			left: -24%;
			z-index: 3;
		}
		#tab_bar_2nd:hover{
			left: -22%;
		}
		#tab_bar_3rd{
			left: -10%;
			z-index: 2;
		}
		#tab_bar_3rd:hover{
			left: -8%;
		}
		#tab_bar_4th{
			left: 4%;
			z-index: 1;
		}
		#tab_bar_4th:hover{
			left: 6%;
		}
		#tab_bar_content>div>div{
			font-size: 2rem;
		}
	}
	@media screen and (min-width: 92rem) {
		#tab_bar_1st{
			left: -18%;
			z-index: 4;
		}
		#tab_bar_1st:hover{
			left: -16%;
		}
		#tab_bar_2nd{
			left: -10%;
			z-index: 3;
		}
		#tab_bar_2nd:hover{
			left: -8%;
		}
		#tab_bar_3rd{
			left: -2%;
			z-index: 2;
		}
		#tab_bar_3rd:hover{
			left: 0%;
		}
		#tab_bar_4th{
			left: 6%;
			z-index: 1;
		}
		#tab_bar_4th:hover{
			left: 8%;
		}
		#tab_bar_content>div>div{
			font-size: 1.5rem;
		}
	}
</style>
