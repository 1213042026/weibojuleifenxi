<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/default.css">
	<style type="text/css">
		#canvas-holder {
        width: 100%;
        margin-top: 50px;
        text-align: center;
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
	    #chartjs-tooltip.below {
	        -webkit-transform: translate(-50%, 0);
	        transform: translate(-50%, 0);
	    }
	    #chartjs-tooltip.below:before {
	        border: solid;
	        border-color: #111 transparent;
	        border-color: rgba(0, 0, 0, .8) transparent;
	        border-width: 0 8px 8px 8px;
	        bottom: 1em;
	        content: "";
	        display: block;
	        left: 50%;
	        position: absolute;
	        z-index: 99;
	        -webkit-transform: translate(-50%, -100%);
	        transform: translate(-50%, -100%);
	    }
	    #chartjs-tooltip.above {
	        -webkit-transform: translate(-50%, -100%);
	        transform: translate(-50%, -100%);
	    }
	    #chartjs-tooltip.above:before {
	        border: solid;
	        border-color: #111 transparent;
	        border-color: rgba(0, 0, 0, .8) transparent;
	        border-width: 8px 8px 0 8px;
	        bottom: 1em;
	        content: "";
	        display: block;
	        left: 50%;
	        top: 100%;
	        position: absolute;
	        z-index: 99;
	        -webkit-transform: translate(-50%, 0);
	        transform: translate(-50%, 0);
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
			  <a href="doughnut.html">Doughnut Chart</a>
			  <a href="pie.html">Pie Chart</a>
			  <a href="pie-customTooltips.html" class="current">Pie Chart with custom tooltips</a>
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
		        <canvas id="chart-area1" width="50" height="50" />
		    </div>
		    <div id="canvas-holder">
		        <canvas id="chart-area2" width="300" height="300" />
		    </div>

		    <div id="chartjs-tooltip"></div>
		</div>
	</div>
	
	<script src="js/Chart.js"></script>
	<script src="http://libs.useso.com/js/jquery/2.1.1/jquery.min.js"></script>
	<script>
	Chart.defaults.global.customTooltips = function(tooltip) {

    	// Tooltip Element
        var tooltipEl = $('#chartjs-tooltip');

        // Hide if no tooltip
        if (!tooltip) {
            tooltipEl.css({
                opacity: 0
            });
            return;
        }

        // Set caret Position
        tooltipEl.removeClass('above below');
        tooltipEl.addClass(tooltip.yAlign);

        // Set Text
        tooltipEl.html(tooltip.text);

        // Find Y Location on page
        var top;
        if (tooltip.yAlign == 'above') {
            top = tooltip.y - tooltip.caretHeight - tooltip.caretPadding;
        } else {
            top = tooltip.y + tooltip.caretHeight + tooltip.caretPadding;
        }

        // Display, position, and set styles for font
        tooltipEl.css({
            opacity: 1,
            left: tooltip.chart.canvas.offsetLeft + tooltip.x + 'px',
            top: tooltip.chart.canvas.offsetTop + top + 'px',
            fontFamily: tooltip.fontFamily,
            fontSize: tooltip.fontSize,
            fontStyle: tooltip.fontStyle,
        });
    };

    var pieData = [{
        value: 300,
        color: "#F7464A",
        highlight: "#FF5A5E",
        label: "Red"
    }, {
        value: 50,
        color: "#46BFBD",
        highlight: "#5AD3D1",
        label: "Green"
    }, {
        value: 100,
        color: "#FDB45C",
        highlight: "#FFC870",
        label: "Yellow"
    }, {
        value: 40,
        color: "#949FB1",
        highlight: "#A8B3C5",
        label: "Grey"
    }, {
        value: 120,
        color: "#4D5360",
        highlight: "#616774",
        label: "Dark Grey"
    }];

    window.onload = function() {
        var ctx1 = document.getElementById("chart-area1").getContext("2d");
        window.myPie = new Chart(ctx1).Pie(pieData);

        var ctx2 = document.getElementById("chart-area2").getContext("2d");
        window.myPie = new Chart(ctx2).Pie(pieData);
    };


	</script>
<div style="text-align:center;clear:both">
<script src="/gg_bd_ad_720x90-2.js" type="text/javascript"></script>
</div>
</body>
</html>