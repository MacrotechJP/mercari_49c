document.addEventListener("DOMContentLoaded", function(event) {
var tabTop = new Vue ({
  el: "#tabTop",
  data: {
    isActive: "1"
  },
  methods: {
    tabChange: function(num) {
      this.isActive = num
    }
  }
});
var tabUnder = new Vue ({
  el: "#tabUnder",
  data: {
    isActive: "1"
  },
  methods: {
    tabChange: function(num) {
      this.isActive = num
    }
  }
})

});
