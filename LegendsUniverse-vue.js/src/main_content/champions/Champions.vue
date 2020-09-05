<template>
	<div id="champions_wrap">
		<champions-data></champions-data>
	</div>
</template>

<script>
	import ChampionsData from './ChampionsData'
  export default {
    name: "Champions",
	  data(){
      return{
      }
	  },
	  components:{
      ChampionsData,
	  }
  }
</script>

<style scoped>
	#champions_wrap{
		width: 100%;
		height: auto;
		background-color: #09090b;
	}
</style>
