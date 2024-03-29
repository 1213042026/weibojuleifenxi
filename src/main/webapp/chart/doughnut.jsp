<!doctype html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<style type="text/css">
		#canvas-holder{
				width:30%;
				margin:0 auto;
			}
	</style>
	<!--[if IE]>
		<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="htmleaf-container">
		<header class="htmleaf-header">
			<div class="htmleaf-demo center">
			  <a href="line.html">Line Chart</a>
			  <a href="line-customTooltips.html">Line Chart with custom tooltips</a>
			  <a href="bar.html">Bar Chart</a>
			  <a href="doughnut.html" class="current">Doughnut Chart</a>
			  <a href="pie.html">Pie Chart</a>
			  <a href="pie-customTooltips.html">Pie Chart with custom tooltips</a>
			  <a href="polar-area.html">Polar Area Chart</a>
			  <a href="radar.html">Radar Area Chart</a>
			</div>
			<div style="text-align:center;clear:both">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
		</header>
		<div class="htmleaf-content">
			<div id="canvas-holder">
				<canvas id="chart-area" width="500" height="500"/>
			</div>
		</div>
	</div>
	
	<script src="js/Chart.js"></script>
	<script>
	var doughnutData = [
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

window.onload = function(){
	var ctx = document.getElementById("chart-area").getContext("2d");
	window.myDoughnut = new Chart(ctx).Doughnut(doughnutData, {responsive : true});
};

	</script>
<div style="text-align:center;clear:both">
</div>
</body>
</html>