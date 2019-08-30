var app = new Vue({
	el: "#home",
	data: {
		idCard: "",
	},
	methods: {
		sendId: function(options) {
			var that = this;
			alert(options)
			axios({
				method: 'post',
				url: "/getBasic?idCard=" + options,
			}).then(function(res) {
				console.log(that.level1)
			});
		},
	}
})
