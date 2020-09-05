<template>
	<div  id="tab_bar_frame">
		<slot></slot>
	</div>
</template>

<script>
  export default {
    name: "Tabbar"
  }
</script>

<style scoped>
	#tab_bar_frame{
		width: 100%;
		min-width: 980px;
		height: 12%;
		min-height: 89px;
		border-bottom: 2px solid #937341;
	}
</style>
