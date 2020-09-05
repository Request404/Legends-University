<template>
	<div id="scroll_box">
		<div id="scroll_box_background"></div>
		<section ref="scroll_frame">
			<div id="record_change">{{scrollIndex}}</div>
			<div id="scroll_forward" ref="scroll_forward">
				<slot name="1st_scroll"></slot>
			</div>
			<div id="scroll_left" ref="scroll_left">
				<slot name="2nd_scroll">left</slot>
			</div>
			<div id="scroll_right" ref="scroll_right">
				<slot name="3rd_scroll">right</slot>
			</div>
			<div id="scroll_back" ref="scroll_back">
				<slot name="4th_scroll">back</slot>
			</div>
		</section>
		<div class="scroll_btn" id="left_scroll" @click="backScroll">
			<img src="../../assets/img/comics/arrow_left_.svg" alt="">
		</div>
		<div  class="scroll_btn" id="right_scroll" @click="forwardScroll">
			<img src="../../assets/img/comics/arrow_right_.svg" alt="">
		</div>
	</div>
</template>

<script>
  export default {
    name: "Scroll",
    data(){
      return{
        scrollIndex: 0,
        isClick: true,
      }
    },
    methods:{
      backScroll(){
        if(this.isClick){
          this.isClick = false
          setTimeout(()=>{
            this.isClick = true
            return this.isClick
          },1300)
          this.scrollIndex--
          this.scrollControl()
          return this.scrollIndex,this.isClick
        }
      },
      forwardScroll(){
        if(this.isClick){
          this.isClick = false
          setTimeout(()=>{
            this.isClick = true
            return this.isClick
          },1300)
          this.scrollIndex++
          this.scrollControl()
          return this.scrollIndex,this.isClick
        }
      },
      scrollControl(){
        let scrollDeg = this.scrollIndex*90
        this.$refs.scroll_frame.style.transform = 'scale(0.5,0.5) rotateY('+scrollDeg+'deg)'
        setTimeout(()=>{
          this.$refs.scroll_frame.style.transform = 'scale(1,1) rotateY('+scrollDeg+'deg)'
        },1200)
      }
    },
    computed:{
    
    },
    beforeUpdate() {
      let scrollWidth = this.$refs.scroll_frame.clientWidth/2;
      this.$refs.scroll_forward.style.transform = 'rotateY(0deg) translateZ('+scrollWidth+'px)'
      this.$refs.scroll_left.style.transform = 'rotateY(-90deg) translateZ('+scrollWidth+'px)'
      this.$refs.scroll_right.style.transform = 'rotateY(90deg) translateZ('+scrollWidth+'px)'
      this.$refs.scroll_back.style.transform = 'rotateY(180deg) translateZ('+scrollWidth+'px)'
    },
  }
</script>

<style scoped>
	#scroll_box{
		width: 80%;
		min-width: 920px;
		margin: auto;
		padding: 1.2rem 0;
		height: 600px;
		position: relative;
		display: flex;
		align-items: center;
		transform-style: preserve-3d;
		cursor: pointer;
	}
	
	/*#scroll_box_background{*/
	/*	width: 100%;*/
	/*	height: 100%;*/
	/*	background-color: #7efff5;*/
	/*	z-index: 0;*/
	/*	border-radius: 0 0 40% 40%;*/
	/*}*/
	
	#scroll_box>section{
		width: 100%;
		height: 100%;
		display: flex;
		margin: auto;
		position: relative;
		transform-style: preserve-3d;
		transition: 1.2s ease;
	}
	#scroll_box>section>div{
		width: 100%;
		height: 100%;
		position: absolute;
		border: 2px solid #937341;
	}
	#scroll_forward{
		z-index: 4;
	}
	#scroll_left{
		z-index: 3;
	}
	#scroll_right{
		z-index: 2;
	}
	#scroll_back{
		z-index: 1;
	}
	
	#scroll_box>.scroll_btn{
		user-select: none;
		width: 3.8rem;
		height: 3.8rem;
		background-color: rgba(44,44,44,1);
		border: .15rem solid #b49653;
		display: flex;
		justify-content: center;
		align-items: center;
		border-radius: 50%;
		transition: .1s ease;
		position: absolute;
		z-index: 10;
		transform: translateZ(85rem);
	}
	#scroll_box>.scroll_btn img{
		border-radius: 50%;
		border: .1rem solid #b49653;
		width: 2.5rem;
		height: 2.5rem;
	}
	#left_scroll{
		left: -2rem;
		z-index: 5;
	}
	#right_scroll{
		right: -2rem;
		z-index: 4;
	}
	#left_scroll:hover{
		width: 3.9rem;
		height: 3.9rem;
		z-index: 3;
	}
	#right_scroll:hover{
		width: 3.9rem;
		height: 3.9rem;
		z-index: 2;
	}
	#record_change{
		display: none;
	}
	
	@media screen  and (max-width: 120rem) {
		#scroll_box{
			height: 500px;
		}
	}
	@media screen and (min-width: 120rem) {
		#scroll_box{
			height: 600px;
		}
	}
</style>
