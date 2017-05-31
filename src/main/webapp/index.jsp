<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <link rel="stylesheet" type="text/css" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" /> 
  <link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/plug-ins/28e7751dbec/integration/bootstrap/3/dataTables.bootstrap.css" /> 
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css"/>
  
  <script src="http://cdn.gbtags.com/datatables/1.10.5/js/jquery.js"></script> 
  <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script> 
  <script type="text/javascript"  src="http://cdn.datatables.net/plug-ins/28e7751dbec/integration/bootstrap/3/dataTables.bootstrap.js"></script>    
<style type="text/css">
</style>
<!--[if lt IE 9]>
          <script src="theme/js/html5shiv.min.js"></script>
          <script src="theme/js/respond.min.js"></script>
        <![endif]-->

<script type="text/javascript">

$(document).ready(function() {
    // Setup - add a text input to each footer cell
    $('#example tfoot th').each( function () {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
    } );
    var table = $('#example').DataTable({
        "ajax": "/wb300/wb/wbquery",
        "columns": [
            {
                "className":      'details-control',
                "orderable":      false,
                "data":           null,
                "defaultContent": ''
            },
            { "data": "content" },
            { "data": "author" },
            { "data": "tag" },
            { "data": "splitwords" }
        ],
        "order": [[1, 'asc']]
    } );
 
    // Apply the search
    table.columns().every( function () {
        var that = this;
        $( 'input', this.footer() ).on( 'keyup change', function () {
            if ( that.search() !== this.value ) {
                that
                    .search( this.value )
                    .draw();
            }
        } );
    } );
} );
</script>
</head>
<body>
 <table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th></th>
                <th>内容</th>
                <th>作者</th>
                <th>兴趣类型</th>
                <th>分词</th>
            </tr>
        </thead>
       <tfoot>
            <tr>
                 <th></th>
                <th>内容</th>
                <th>作者</th>
                <th>兴趣类型</th>
                <th>分词</th>
            </tr>
        </tfoot>
    </table>
</body>
</html>


