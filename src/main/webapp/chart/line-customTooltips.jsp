<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>è¶é·HTML5 Canvaså¾è¡¨åºç¨Chart.jsèªå®ä¹æç¤ºæçº¿å¾</title>
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/default.css">
	<style type="text/css">
		#canvas-holder1 {
        width: 300px;
        margin: 20px auto;
	    }
	    #canvas-holder2 {
	        width: 50%;
	        margin: 20px 25%;
	    }
	    #chartjs-tooltip {
	        opacity: 1;
	        position: absolute;
	        background: rgba(0, 0, 0, .7);
	        color: white;
	        padding: 3px;
	        border-radius: 3px;
	        -webkit-transition: all .1s ease;
	        transition: all .1s ease;
	        pointer-events: none;
	        -webkit-transform: translate(-50%, 0);
	        transform: translate(-50%, 0);
	    }
	   	.chartjs-tooltip-key{
	   		display:inline-block;
	   		width:10px;
	   		height:10px;
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
			  <a href="line-customTooltips.html" class="current">Line Chart with custom tooltips</a>
			  <a href="bar.html">Bar Chart</a>
			  <a href="doughnut.html">Doughnut Chart</a>
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
			<div id="canvas-holder1">
		        <canvas id="chart1" width="300" height="30" />
			</div>
		    <div id="canvas-holder2">
		        <canvas id="chart2" width="450" height="600" />
		    </div>

		    <div id="chartjs-tooltip"></div>
		</div>
	</div>
	
	<script src="js/Chart.js"></script>
	<script src="http://libs.useso.com/js/jquery/2.1.1/jquery.min.js"></script>
	<script>
	 Chart.defaults.global.pointHitDetectionRadius = 1;
    Chart.defaults.global.customTooltips = function(tooltip) {

        var tooltipEl = $('#chartjs-tooltip');

        if (!tooltip) {
            tooltipEl.css({
                opacity: 0
            });
            return;
        }

        tooltipEl.removeClass('above below');
        tooltipEl.addClass(tooltip.yAlign);

        var innerHtml = '';
        for (var i = tooltip.labels.length - 1; i >= 0; i--) {
        	innerHtml += [
        		'<div class="chartjs-tooltip-section">',
        		'	<span class="chartjs-tooltip-key" style="background-color:' + tooltip.legendColors[i].fill + '"></span>',
        		'	<span class="chartjs-tooltip-value">' + tooltip.labels[i] + '</span>',
        		'</div>'
        	].join('');
        }
        tooltipEl.html(innerHtml);

        tooltipEl.css({
            opacity: 1,
            left: tooltip.chart.canvas.offsetLeft + tooltip.x + 'px',
            top: tooltip.chart.canvas.offsetTop + tooltip.y + 'px',
            fontFamily: tooltip.fontFamily,
            fontSize: tooltip.fontSize,
            fontStyle: tooltip.fontStyle,
        });
    };
    var randomScalingFactor = function() {
        return Math.round(Math.random() * 100);
    };
    var lineChartData = {
        labels: ["January", "February", "March", "April", "May", "June", "July"],
        datasets: [{
            label: "My First dataset",
            fillColor: "rgba(220,220,220,0.2)",
            strokeColor: "rgba(220,220,220,1)",
            pointColor: "rgba(220,220,220,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(220,220,220,1)",
            data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
        }, {
            label: "My Second dataset",
            fillColor: "rgba(151,187,205,0.2)",
            strokeColor: "rgba(151,187,205,1)",
            pointColor: "rgba(151,187,205,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(151,187,205,1)",
            data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
        }]
    };

    window.onload = function() {
        var ctx1 = document.getElementById("chart1").getContext("2d");
        window.myLine = new Chart(ctx1).Line(lineChartData, {
        	showScale: false,
        	pointDot : true,
            responsive: true
        });

        var ctx2 = document.getElementById("chart2").getContext("2d");
        window.myLine = new Chart(ctx2).Line(lineChartData, {
            responsive: true
        });
    };

	</script>
<div style="text-align:center;clear:both">
<script src="/gg_bd_ad_720x90-2.js" type="text/javascript"></script>
</div>
</body>
</html>