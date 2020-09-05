<template>
	<div id="regions_wrap">
		<regions-data></regions-data>
		<copyright></copyright>
	</div>
</template>

<script>
	import RegionsData from './RegionsData'
	import Copyright from '../copyright/Copyright'
	
  export default {
    name: "Regions",
	  components:{
      RegionsData,
      Copyright
	  }
  }
</script>

<style scoped>
	#regions_wrap{
		width: 100%;
		height: auto;
	}
</style>
