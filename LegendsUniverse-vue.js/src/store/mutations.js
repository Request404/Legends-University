export default {
  putComicsData(state,comics){
    state.comicsStore = comics
  },
  putChampionsData(state,champions){
    state.championsData = champions
  },
  putRegionsData(state,regions){
    state.regionsData = regions
  },
  changeSignInState(state,signInstate){
    state.signInState = signInstate
  },
  changeUserId(state,id){
    state.userInfo.signInId = id
  },
  changeUserName(state,username){
    state.userInfo.signInUser = username
  },
  changeUserEmail(state,email){
    state.userInfo.userEmail = email
  },

  putUserPurchaseHistory(state,history){
    state.userInfo.userPurchaseHistory = history
  },
  putUserStarComics(state,star){
    state.userInfo.userStar = star
  },
  change(state){
    state.number++;
  }
}
