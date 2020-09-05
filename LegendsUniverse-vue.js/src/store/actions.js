import {asyn} from "../request/async";

export default {
  requestComicsData(context){
    asyn({
      method: 'get',
      url: "/comics/getAllComics",
    }).then( rs => {
      context.commit('putComicsData',rs.data)
    }).catch( err => {
      console.log(err);
    })
  },

  requestChampionsData(context){
    asyn({
      method: 'get',
      url: '/champion/getAllChampions'
    }).then(rs=>{
      context.commit('putChampionsData',rs.data)
    }).catch(err=>{
      console.log(err);
    })
  },

  requestRegionsData(context){
    asyn({
      methods: 'get',
      url: '/region/getAllRegions'
    }).then(rs=>{
      context.commit('putRegionsData',rs.data)
    }).catch(err=>{
      console.log(err);
    })
  },

  requestUserPurchaseHistory(context) {
    asyn({
      method: 'get',
      url: '/profile/getUserPurchaseByUser',
      params: {
        username: context.state.userInfo.signInUser
      }
    }).then(rs=>{
      context.commit('putUserPurchaseHistory',rs.data)
    }).catch(err=>{
      console.log(err);
    })
  },

  requestUserStar(context){
    asyn({
      method: 'get',
      url: '/profile/getUserStarByUser',
      params: {
        username: context.state.userInfo.signInUser
      }
    }).then(rs=>{
      context.commit('putUserStarComics',rs.data)
    }).catch(err=>{
      console.log(err);
    })
  }

}
