<template>
	<div id="home_">
		<tab-bar>
			<tab-bar-content>
			</tab-bar-content>
		</tab-bar>
		<cube-frame >
			<keep-alive>
				<router-view></router-view>
			</keep-alive>
		</cube-frame>
	</div>
</template>

<script>
	import CubeFrame from './CubeFrame'
	import TabBar from './TabBar'
	import TabBarContent from '../../tab_bar/TabBarContent'
	
  export default {
    name: "Home",
	  components:{
      CubeFrame,
		  TabBar,
		  TabBarContent
	  },
  }
</script>

<style scoped>
	#home_{
		width: 100%;
		height: 100%;
		background-image: url("../../../assets/img/cube/cube_background_.jpg");
		background-size:100% 100%;
		background-position: center center;
		overflow: scroll;
	}
	#home_::-webkit-scrollbar {
		display: none;
	}
	#home_>div{
		-ms-overflow-style: none;
		overflow: -moz-scrollbars-none;
	}
</style>
