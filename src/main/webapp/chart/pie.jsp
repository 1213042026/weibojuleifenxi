<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	  <script src="http://cdn.gbtags.com/datatables/1.10.5/js/jquery.js"></script> 
	<style type="text/css">
   
	</style>
	<!--[if IE]>
		<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
</head>
<body>
<table border=1>
   <tr><td><canvas id="chart-area0" width="300" height="300"/></td><td><canvas id="chart-area1" width="300" height="300"/></td></tr>
   <tr><td>	<canvas id="chart-area2" width="300" height="300"/></td><td><canvas id="chart-area3" width="300" height="300"/></td></tr>
</table>
	
	

	
	<script src="js/Chart.min.js"></script>
	<script type="text/javascript">
	var pieData = [
				{
					value: 300,
					color:"#F7464A",
					highlight: "#FF5A5E",
					label: "Red"
				},
				{
					value: 50,
					color: "#46BFBD",
					highlight: "#5AD3D1",
					label: "Green"
				},
				{
					value: 100,
					color: "#FDB45C",
					highlight: "#FFC870",
					label: "Yellow"
				},
				{
					value: 40,
					color: "#949FB1",
					highlight: "#A8B3C5",
					label: "Grey"
				},
				{
					value: 120,
					color: "#4D5360",
					highlight: "#616774",
					label: "Dark Grey"
				}

			];
	  $(document).ready(function() {
	    	$.ajax({
	           	url: "/recommend/report/h5",
	           	data:{reporttype:"ads_recommend_spider_report_d"},
	           	success: function (data) {
           			$.each(data,function(key,item){
           				alert(item);
           				var ctx = document.getElementById("chart-area"+key).getContext("2d");
               		     new Chart(ctx).Pie(item);
           			})
				
	           	},
	           	complete:function(){
	           	},
	           	dataType: 'json'
	           	})
	   });
		


	</script>
</body>
</html>