/* global Vue, VueRouter, axios */
 
var BrainAreaIndexPage = {
  template: "#brain-area-index-page",
  data: function() {
    return {
      brain_areas: [
        {
          name: "",
          description: "",
        },        {
          name: "",
          description: "",
        },        {
          name: "",
          description: "",
        },        {
          name: "",
          description: "",
        },        {
          name: "",
          description: "",
        }
      ]
    };
  },
  created: function() {
    axios
      .get('/api/brain/')
      .then(function(response) {
        this.brain_areas = response.data;

        console.log(this.brain_areas);
      }.bind(this));
  },
  methods: {
    selectBrainArea(inputBrainArea) {
      (inputBrainArea).className = 'selected';
    }
  },
  computed: {}
};

var BrainAreaShowPage = {
  template: "#brain-area-show-page",
  data: function() {
    return {
      brain_area: [
        {
          name: "",
          description: "",
          articles: [
            {
              name: ""
            }
          ]
        },
        {
          name: "",
          description: "",
          articles: [
            {
              name: ""
            }
          ]
        },
        {
          name: "",
          description: "",
          articles: [
            {
              name: ""
            }
          ]
        },
        {
          name: "",
          description: "",
          articles: [
            {
              name: ""
            }
          ]
        },
        {
          name: "",
          description: "",
          articles: [
            {
              name: ""
            }
          ]
        }
      ]
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
    onArticleClick() {
      var link = this.brain_area['articles'][0]['link'];
      location.href = link;
      window.open(location.href);
    },
    onAreaClick() {
      var newBa = this.brain_area['id'];
      location.href = "/#/brain/" + newBa;
    }
  },
  computed: {},
  updated: function() {
    axios
      .get("/api/brain/" + this.$route.params.id)
      .then(function(response) {
        this.brain_area = response.data;
      }.bind(this));
  }
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