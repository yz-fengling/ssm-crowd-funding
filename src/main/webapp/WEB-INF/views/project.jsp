<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<link rel="stylesheet" href="static/css/theme.css">
	<style>
#footer {
    padding: 15px 0;
    background: #fff;
    border-top: 1px solid #ddd;
    text-align: center;
}
#topcontrol {
  color: #fff;
  z-index: 99;
  width: 30px;
  height: 30px;
  font-size: 20px;
  background: #222;
  position: relative;
  right: 14px !important;
  bottom: 11px !important;
  border-radius: 3px !important;
}

#topcontrol:after {
  /*top: -2px;*/
  left: 8.5px;
  content: "\f106";
  position: absolute;
  text-align: center;
  font-family: FontAwesome;
}

#topcontrol:hover {
    color: #fff;
    background: #18ba9b;
    -webkit-transition: all 0.3s ease-in-out;
    -moz-transition: all 0.3s ease-in-out;
    -o-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
}
.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
    border-bottom-color: #ddd;
}
.nav-tabs>li>a {
    border-radius: 0;
}
	</style>
  </head>
  <body>
 <div class="navbar-wrapper">
      <div class="container">
			<jsp:include page="header.jsp"></jsp:include>
      </div>
    </div>

    <div class="container theme-showcase" role="main">

        <div class="container">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <nav class="navbar navbar-default" role="navigation">                        
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li>
                                    <a rel="nofollow" href="crowd_funding"><i class="glyphicon glyphicon-home"></i> 众筹首页</a>
                                </li>
                                <li >
                                    <a rel="nofollow" href="projects.html"><i class="glyphicon glyphicon-th-large"></i> 众筹项目</a>
                                </li>
                                
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    
    
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="jumbotron nofollow" style="    padding-top: 10px;">
                        <h3>
                            ${post.postName}
                        </h3>
                        <div style="float:left;width:70%;">
                            智能时代，酷驰触控厨房龙头，让煮妇解放双手，触发更多烹饪灵感，让美味信手拈来。
                        </div>
							
                    </div>
                </div>
            </div>
        </div>
        
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="row clearfix">
                        <div class="col-md-8 column">
                            <img alt="140x140" width="740" src="${post.postImg}" />
                            
                           
                        </div>
                        <div class="col-md-4 column">
                            <div class="panel panel-default" style="border-radius: 0px;">
                                <c:if test="${post.postStatus==0}">
                                    <div class="panel-heading" style="background-color: #fff;border-color: #fff;">
                                        <span class="label label-success"><i class="glyphicon glyphicon-tag"></i>众筹中</span>
                                    </div>
                                </c:if>
                                <c:if test="${post.postStatus!=0}">
                                    <div class="panel-heading" style="background-color: #fff;border-color: #fff;">
                                        <span class="label label-success"><i class="glyphicon glyphicon-tag"></i>众筹完</span>
                                    </div>
                                </c:if>
                                <div class="panel-body">
                                    <h3 >
                                        已筹资金：￥ ${post.postInMoney}
                                    </h3>

                                    <p><span>目标金额 ：${post.postMoney}</span>
                                        <c:if test="${percentage>=100}">
                                            <span style="float:right;">已达成</span>
                                        </c:if>
                                        <c:if test="${percentage<100}">
                                            <span style="float:right;">达成 ：${percentage}%</span>
                                        </c:if>
                                    </p>
                                    <div class="progress" style="height:10px; margin-bottom: 5px;">
                                      <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="${percentage}" aria-valuemin="0" aria-valuemax="100" style="width: ${percentage}%;"></div>
                                    </div>
                                    <p>${day}</p>
                                    <div>
                                     <p><span>已有${post.postPeople}人支持该项目</p>
                                     <button id="btn_support" type="button" class="btn  btn-warning btn-lg btn-block" data-toggle="modal" data-target="#myModal" >立即支持</button>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
					
					<div class=" panel panel-default" style="border-radius: 0px;">
						<div class="panel-heading">
							<h3 >
								风险提示
							</h3>
						</div>
						<div class="panel-body">
                            <p>1.众筹并非商品交易，存在一定风险。支持者根据自己的判断选择、支持众筹项目，与发起人共同实现梦想并获得发起人承诺的回报。<br>
2.众筹平台仅提供平台网络空间及技术支持等中介服务，众筹仅存在于发起人和支持者之间，使用众筹平台产生的法律后果由发起人与支持者自行承担。<br>
3.本项目必须在2017-06-09之前达到￥10000.00 的目标才算成功，否则已经支持的订单将取消。订单取消或募集失败的，您支持的金额将原支付路径退回。<br>
4.请在支持项目后15分钟内付款，否则您的支持请求会被自动关闭。<br>
5.众筹成功后由发起人统一进行发货，售后服务由发起人统一提供；如果发生发起人无法发放回报、延迟发放回报、不提供回报后续服务等情况，您需要直接和发起人协商解决。<br>
6.如您不同意上述风险提示内容，您有权选择不支持；一旦选择支持，视为您已确认并同意以上提示内容。</p>
						</div>
					</div>
                    
                    <div><h2>为你推荐</h2><hr></div>
					<div class="prjtip panel panel-default" style="border-radius: 0px;">
						<div class="panel-body">
                            <img src="static/img/product-3.png" width="100%" height="100%">
						</div>
					</div>
                    
					
				</div>
			</div>
		</div>
	</div>
</div>
    

        <!--footer-->
        <jsp:include page="footer.jsp"></jsp:include>
      
    </div> <!-- /container -->
    
    
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
      <div class="modal-dialog "  style="width:960px;height:400px;" role="document">
        <div class="modal-content" data-spy="scroll" data-target="#myScrollspy">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">选择支持项</h4>
          </div>
          <div class="modal-body">
              <div class="row clearfix">
                  <div class="col-sm-3 col-md-3 column" id="myScrollspy">
                      <ul class="nav nav-tabs nav-stacked">
                          <li class="active"><a href="#section-1">￥1.00</a></li>
                          <li class="active"><a href="#section-2">￥149.00</a></li>
                          <li class="active"><a href="#section-3">￥249.00</a></li>
                          <li class="active"><a href="#section-4">￥549.00</a></li>
                          <li class="active"><a href="#section-5">￥1999.00</a></li>
                          <li class="active"><a href="#section-6">￥其它金額</a></li>
                      </ul>
                  </div>
                  <div id="navList" class="col-sm-9 col-md-9 column" style="height:400px;overflow-y:auto;">
                      <h2 id="section-1" style="border-bottom:1px dashed #ddd;" ><span style="font-size:20px;font-weight:bold;">￥1.00</span><span style="font-size:12px;margin-left:60px;">无限额，${post.postPeople}位支持者</span></h2>
                      <button type="button" class="btn  btn-warning btn-lg " onclick="window.location.href='pay?money=1&pid=${post.postId}'">支持</button>
                      <br><br>
                      <hr>
                      <h2 id="section-2" style="border-bottom:1px dashed #ddd;" ><span style="font-size:20px;font-weight:bold;">￥149.00</span><span style="font-size:12px;margin-left:60px;">无限额，${post.postPeople}位支持者</span></h2>
                      <button type="button" class="btn  btn-warning btn-lg " onclick="window.location.href='pay?money=149&pid=${post.postId}'">支持</button>
                      <br><br>
                      <hr>
                      <h2 id="section-3" style="border-bottom:1px dashed #ddd;" ><span style="font-size:20px;font-weight:bold;">￥249.00</span><span style="font-size:12px;margin-left:60px;">无限额，${post.postPeople}位支持者</span></h2>
                      <button type="button" class="btn  btn-warning btn-lg " onclick="window.location.href='pay?money=249&pid=${post.postId}'">支持</button>
                      <br><br>
                      <hr>
                      <h2 id="section-4" style="border-bottom:1px dashed #ddd;" ><span style="font-size:20px;font-weight:bold;">￥549.00</span><span style="font-size:12px;margin-left:60px;">无限额，${post.postPeople}位支持者</span></h2>
                      <button type="button" class="btn  btn-warning btn-lg " onclick="window.location.href='pay?money=549&pid=${post.postId}'">支持</button>
                      <br><br>
                      <hr>
                      <h2 id="section-5" style="border-bottom:1px dashed #ddd;" ><span style="font-size:20px;font-weight:bold;">￥1999.00</span><span style="font-size:12px;margin-left:60px;">无限额，${post.postPeople}位支持者</span></h2>
                      <button type="button" class="btn  btn-warning btn-lg " onclick="window.location.href='pay?money=1999&pid=${post.postId}'">支持</button>
                      <hr>
                      <h2 id="section-6" style="border-bottom:1px dashed #ddd;" ><span style="font-size:20px;font-weight:bold;">￥其它金額</span><span style="font-size:12px;margin-left:60px;">无限额，${post.postPeople}位支持者</span></h2>
                      <form class="form-inline" action="pay" method="post">
                          <input type="hidden" id="post_id" name="postId" value="${post.postId}" />
                          <div class="form-group">
                              <label class="sr-only">请输入金额</label>
                              <input type="text" name="money" class="form-control" id="input_money" placeholder="请输入金额">
                              <span></span>
                          </div>
                          <button type="submit" id="btn_money" class="btn btn-default btn-warning">支持</button>
                      </form>
                      <br><br>
                  </div>
              </div>
          </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <script src="static/jquery/jquery-2.1.1.min.js"></script>
    <script src="static/bootstrap/js/bootstrap.min.js"></script>
	<script src="static/script/docs.min.js"></script>
    <script src="static/script/back-to-top.js"></script>
	<script>
    $(".prjtip img").css("cursor", "pointer");
    $(".prjtip img").click(function(){
        window.location.href = 'project.html';
    });
	</script>

  <script type="application/javascript">
        $("#input_money").change(function () {
            var moneyName=$("#input_money").val();
            var regName=/^[0-9]*$/;
            if(!regName.test(moneyName)){
                show_validate_msg("#input_money","error","请输入数字");
                return false;
            }else {
                show_validate_msg("#input_money","success","");
                return true;
            }
        })

      function show_validate_msg(ele,status,msg) {
          //清除当前元素的校验状态
          $(ele).parent().removeClass("has-success has-error");
          $(ele).next("span").text("");
          if("success"==status){
              $(ele).parent().addClass("has-success");
              $(ele).next("span").text(msg)
          }else if("error"==status){
              $(ele).parent().addClass("has-error");
              $(ele).next("span").text(msg);
          }
      }

      $("#btn_money").click(function () {
          var moneyName=$("#input_money").val();
          var regName=/^[0-9]*$/;
          if(!regName.test(moneyName)){
              alert("请输入合法的金额");
              return false;
          }
          return true;
      });
  </script>
  </body>
</html>