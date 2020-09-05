<template>
	<div id="comics_list">
		<div id="comics_title">
			<span>COMICS</span>
		</div>
		<div id="comics_list_content">
			<slot name="the_comics"></slot>
		</div>
	</div>
</template>

<script>
  export default {
    name: "MainComics"
  }
</script>

<style scoped>
	#comics_list{
		width: 80%;
		min-width: 920px;
		margin: auto;
		height: auto;
		user-select: none;
	}
	#comics_title{
		font-size: 5rem;
		font-weight: 900;
		font-family: NSimSun,sans-serif;
		color: #f0e6d2;
		margin-bottom: 1.25rem;
	}
	#comics_list_content{
		width: 100%;
		height: auto;
	}
</style>
