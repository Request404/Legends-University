<template xmlns:v-slot="http://www.w3.org/1999/XSL/Transform">
	<div>
		<scroll>
			<template v-slot:1st_scroll>
				<scroll-pane>
					<template v-slot:img>
						<img :src="$store.state.requestUrl+scrollData[0].imgUrl" alt="">
					</template>
					<template v-slot:author>
						<span>{{scrollData[0].author}}</span>
					</template>
					<template v-slot:comicName>
						<span>{{scrollData[0].comicName}}</span>
					</template>
					<template v-slot:description>
						<span>{{scrollData[0].description}}</span>
					</template>
				</scroll-pane>
			</template>
			<template v-slot:2nd_scroll>
				<scroll-pane>
					<template v-slot:img>
						<img :src="$store.state.requestUrl+scrollData[1].imgUrl" alt="">
					</template>
					<template v-slot:author>
						<span>{{scrollData[1].author}}</span>
					</template>
					<template v-slot:comicName>
						<span>{{scrollData[1].comicName}}</span>
					</template>
					<template v-slot:description>
						<span>{{scrollData[1].description}}</span>
					</template>
				</scroll-pane>
			</template>
			<template v-slot:3rd_scroll>
				<scroll-pane>
					<template v-slot:img>
						<img :src="$store.state.requestUrl+scrollData[2].imgUrl" alt="">
					</template>
					<template v-slot:author>
						<span>{{scrollData[2].author}}</span>
					</template>
					<template v-slot:comicName>
						<span>{{scrollData[2].comicName}}</span>
					</template>
					<template v-slot:description>
						<span>{{scrollData[2].description}}</span>
					</template>
				</scroll-pane>
			</template>
			<template v-slot:4th_scroll>
				<scroll-pane>
					<template v-slot:img>
						<img :src="$store.state.requestUrl+scrollData[3].imgUrl" alt="">
					</template>
					<template v-slot:author>
						<span>{{scrollData[3].author}}</span>
					</template>
					<template v-slot:comicName>
						<span>{{scrollData[3].comicName}}</span>
					</template>
					<template v-slot:description>
						<span>{{scrollData[3].description}}</span>
					</template>
				</scroll-pane>
			</template>
		</scroll>
	</div>
</template>

<script>
  import Scroll from './Scroll'
  import ScrollPane from './ScrollPane'
  import {asyn} from "../../request/async";
  export default {
    name: "ScrollData",
	  data(){
      return{
	      scrollData: [{imgUrl:null,author:null, comicName:null, description: null},
          {imgUrl:null,author:null, comicName:null, description: null},
          {imgUrl:null,author:null, comicName:null, description: null},
          {imgUrl:null,author:null, comicName:null, description: null}]
      }
	  },
	  components:{
      Scroll,
      ScrollPane,
	  },
	  beforeCreate() {
      asyn({
	      method: 'get',
	      url: "/comics/getAllScrollData",
      }).then(rs=>{
        this.scrollData = rs.data
      }).catch(err=>{
      
      })
    }
  }
</script>

<style scoped>

</style>
