/* global Vue, VueRouter, axios */
 
var BrainAreaIndexPage = {
  template: "#brain-area-index-page",
  data: function() {
    return {
      brain_areas: []
    };
  },
  created: function() {
    axios
      .get('/api/brain/')
      .then(function(response) {
        this.brain_areas = response.data;
      }.bind(this));
  },
  methods: {},
  computed: {}
};

var BrainAreaShowPage = {
  template: "#brain-area-show-page",
  data: function() {
    return {
      brain_area: {
        name: "",
        description: "",
      }
    };
  },
  created: function() {
    axios
      .get("/api/brain/" + this.$route.params.id)
      .then(function(response) {
        this.brain_area = response.data;
      }.bind(this));
  },
  methods: {
    

    onClickButton() {
      var link = this.brain_area['articles'][0]['link'];
      location.href = link;
      window.open(location.href, '_blank');
    }
  },
  computed: {}
};

var router = new VueRouter({
  routes: [
    { path: "/", component: BrainAreaIndexPage },
    { path: "/brain/:id", component: BrainAreaShowPage}
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});