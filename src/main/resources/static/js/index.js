var app = new Vue({
	el: "#netlife",
	data: {
		idcard: "",
		name: "",
		sex: "",
		level: "",
		level1: "",
		level2: "",
		level3: "",
		level4: "",
		message: 'Hello Vue.js!'
	},
	methods: {
		sendId: function(options) {
			var that = this;
			$.ajax({
				url: "http://localhost:8081/feature?idCard=" + options,
				headers: {
					'Content-Type': 'application/json; charset=UTF-8',
					'Access-Control-Allow-Origin': '*',
					"Access-Control-Allow-Methods": "PUT,POST,GET,DELETE,OPTIONS",
					"Access-Control-Allow-Headers": "X-Requested-With,Content-Type"
				}, //设置跨域请求头
				method: 'post',
				success: function(result) {
					console.log(result)
					that.level1 = result.level1;
					that.level = result;
				}
			});
			// axios({
			// 	headers: {
			// 		'Content-Type': 'application/json; charset=UTF-8',
			// 		'Access-Control-Allow-Origin': '*',
			// 		"Access-Control-Allow-Methods": "PUT,POST,GET,DELETE,OPTIONS",
			// 		"Access-Control-Allow-Headers": "X-Requested-With,Content-Type"
			// 	}, //设置跨域请求头
			// 	method: 'post',
			// 	url: "http://localhost:8080/feature?idCard=" + options,
			// 	data: {
			// 		idCard: options,
			// 	},
			// }).then(function(res) {
			// 	that.level1 = res.data.level1;
			// 	that.level = res.data;
			//
			// 	console.log(that.level1)
			// });
		},
		getLevel2: function(options){
			var that = this;
			console.log(options)
			that.level2 = that.level.level2;
			
		},
		getLevel3: function(options){
			var that = this;
			console.log(options)
			that.level3 = that.level.level3;
		}
	}
})
