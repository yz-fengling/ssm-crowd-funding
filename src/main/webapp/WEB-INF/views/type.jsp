<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

	<link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="static/css/font-awesome.min.css">
	<link rel="stylesheet" href="static/css/main.css">
	<style>
	.tree li {
        list-style-type: none;
		cursor:pointer;
	}
	table tbody tr:nth-child(odd){background:#F4F4F4;}
	table tbody td:nth-child(even){color:#C00;}
    
    input[type=checkbox] {
        width:18px;
        height:18px;        
    }
	</style>
  </head>

  <body>

  <!--root-header-->
  <jsp:include page="root-header.jsp"></jsp:include>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
			<div class="tree">
				<ul style="padding-left:0px;" class="list-group">
					<li class="list-group-item tree-closed" >
						<a href="main.html"><i class="glyphicon glyphicon-dashboard"></i> 控制面板</a> 
					</li>
					<li class="list-group-item tree-closed">
						<span><i class="glyphicon glyphicon glyphicon-tasks"></i> 权限管理 <span class="badge" style="float:right">3</span></span> 
						<ul style="margin-top:10px;display:none;">
							<li style="height:30px;">
								<a href="user.html"><i class="glyphicon glyphicon-user"></i> 用户维护</a> 
							</li>
							
						</ul>
					</li>
					
					<li class="list-group-item">
						<span><i class="glyphicon glyphicon-th-large"></i> 业务管理 <span class="badge" style="float:right">7</span></span> 
						<ul style="margin-top:10px;">
							
							<li style="height:30px;">
								<a href="type.html" style="color:red;"><i class="glyphicon glyphicon-equalizer"></i> 分类管理</a> 
							</li>
							
						</ul>
					</li>
					
				</ul>
			</div>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="panel panel-default">
			  <div class="panel-heading">
				<h3 class="panel-title"><i class="glyphicon glyphicon-th"></i> 数据矩阵</h3>
			  </div>
			  <div class="panel-body">
          <div class="table-responsive">
            <table class="table  table-bordered">
              <thead>
                <tr >
                  <th>名称</th>
                  <th >商业公司</th>
                  <th >个体工商户</th>
                  <th >个人经营</th>
                  <th >政府及非营利组织</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>营业执照副本</td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>税务登记证</td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>组织机构代码证</td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>单位登记证件 </td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>法定代表人证件</td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>经营者证件 </td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>手执身份证照片</td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
              </tbody>
            </table>
          </div>
			  </div>
			</div>
        </div>
      </div>
    </div>

    <script src="static/jquery/jquery-2.1.1.min.js"></script>
    <script src="static/bootstrap/js/bootstrap.min.js"></script>
	<script src="static/script/docs.min.js"></script>
        <script type="text/javascript">
            $(function () {
			    $(".list-group-item").click(function(){
				    if ( $(this).find("ul") ) {
						$(this).toggleClass("tree-closed");
						if ( $(this).hasClass("tree-closed") ) {
							$("ul", this).hide("fast");
						} else {
							$("ul", this).show("fast");
						}
					}
				});
            });
        </script>
  </body>
</html>
