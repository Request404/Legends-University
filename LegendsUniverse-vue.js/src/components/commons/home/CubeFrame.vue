<template>
	<div id="cube_frame" ref="cube_frame">
		<div id="cube_forward" >
				<div class="cube_background" id="forward_background"></div>
				<div id="record_cube_change" v-show="false">{{routeChange}}</div>
				<slot></slot>
		</div>
	</div>
</template>

<script>
  export default {
    name: "CubeFrame",
	  props:{
      routeChange:{
        type: Boolean,
        default(){
          return false
        }
      }
	  },
	  data(){
      return{
      
      }
	  },
	  methods:{
   
	  },
	  updated() {
        this.$refs.cube_frame.style.transform = 'scale(0.6,0.6)'
	      setTimeout(()=>{
          this.$refs.cube_frame.style.transform = 'scale(1,1)'
	      },1200)
    }
  }
</script>

<style scoped>
	#cube_frame{
		width: 100%;
		height: 87.8%;
		min-width: 980px;
		min-height: 520px;
		display: flex;
		justify-content: center;
		align-items: center;
		position: relative;
		transform: rotateY(0deg);
		transform-style: preserve-3d;
		transition: 1.2s ease;
	}
	#cube_frame>div{
		margin: auto;
		width:100%;
		min-width: 980px;
		height: 100%;
		overflow-y: scroll;
		overflow-x: hidden;
		position: absolute;
	}
	#cube_frame>div>.cube_background{
		z-index: -1;
		width: 100%;
		height: 100%;
		min-width: 980px;
		min-height: 520px;
		position: absolute;
		filter: blur(5px);
	}

	#cube_frame>div::-webkit-scrollbar {
		width: 9px;
		height: 1px;
	}
	/*滚动条滑块*/
	#cube_frame>div::-webkit-scrollbar-thumb {
		border-radius: 9px;
		-webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
		background: #535353;
	}
	/*滚动条轨道*/
	#cube_frame>div::-webkit-scrollbar-track {
		-webkit-box-shadow: inset 0 0 1px rgba(0,0,0,0);
		border-radius: 9px;
		background: #ccc;
	}
	#cube_forward{
		z-index: 4;
	}
</style>
