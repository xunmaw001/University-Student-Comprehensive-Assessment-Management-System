<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>

</style>
<body>
	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="../../static/topNav.jsp"%>
		
		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-vertical" id="navUl">
				
			</ul>
		</div>
		<!-- /Menu -->

		<!-- Breadcrumb -->
		<div id="breadcrumb-container">
			<h3 class="breadcrumb-title">编辑综合数据</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
				<li class="breadcrumb-item-one"><span>综合数据管理</span></li>
				<li class="breadcrumb-item-two"><span>编辑综合数据</span></li>
			</ol>
		</div>

		<!-- Main Content -->
		<div id="add-container">
			<form id="addOrUpdateForm">
				<input id="updateId" name="id" type="hidden">
				<div class="form-item">
					<label>课程名称</label>

					<input id="kechengmingcheng" name="kechengmingcheng" class="form-control" v-model="ruleForm.kechengmingcheng" readonly>
				</div>
				<div class="form-item">
					<label>学号</label>

					<input id="xuehao" name="xuehao" class="form-control" v-model="ruleForm.xuehao" readonly>
				</div>
				<div class="form-item">
					<label>姓名</label>

					<input id="xingming" name="xingming" class="form-control" v-model="ruleForm.xingming" readonly>
				</div>
				<div class="form-item">
					<label>班级</label>

					<input id="banji" name="banji" class="form-control" v-model="ruleForm.banji" readonly>
				</div>
				<div class="form-item">
					<label>平时成绩</label>

					<input id="pingshichengji" name="pingshichengji" class="form-control" v-model="ruleForm.pingshichengji" readonly>
				</div>
				<div class="form-item">
					<label>成绩占比</label>

					<input id="chengjizhanbi" name="chengjizhanbi" class="form-control" v-model="ruleForm.chengjizhanbi" readonly>
				</div>
				<div class="form-item">
					<label>考勤成绩</label>

					<input id="kaoqinchengji" name="kaoqinchengji" class="form-control" v-model="ruleForm.kaoqinchengji" readonly>
				</div>
				<div class="form-item">
					<label>考勤占比</label>

					<input id="kaoqinzhanbi" name="kaoqinzhanbi" class="form-control" v-model="ruleForm.kaoqinzhanbi" readonly>
				</div>
				<div class="form-item">
					<label>课堂成绩</label>

					<input id="ketangchengji" name="ketangchengji" class="form-control" v-model="ruleForm.ketangchengji" readonly>
				</div>
				<div class="form-item">
					<label>课堂占比</label>

					<input id="ketangzhanbi" name="ketangzhanbi" class="form-control" v-model="ruleForm.ketangzhanbi" readonly>
				</div>
				<div class="form-item">
					<label>综合成绩</label>

					<input id="zonghechengji" name="zonghechengji" class="form-control" v-model="ruleForm.zonghechengji" readonly>
				</div>
				<div class="form-item">
					<label>成绩评语</label>

					<input id="chengjipingyu" name="chengjipingyu" class="form-control" v-model="ruleForm.chengjipingyu" readonly>
				</div>
				<div class="form-item">
					<label>录入日期</label>

					<input id="lururiqi" name="lururiqi" class="form-control" v-model="ruleForm.lururiqi" readonly>
				</div>

				<div class="form-btn">
					<button id="exitBtn" type="button" class="btn btn-primary btn-close">返回</button>
				</div>
			</form>
		</div>
	</div>
	
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "zongheshuju";
		var pageType = "add-or-update";
		var updateId = "";		

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
                baseUrl: baseUrl,
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "zongheshuju/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 填充富文本框
		function setContent(){
		}  

		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				$("#submitBtn").addClass("修改");
				updateId = id;
				window.sessionStorage.removeItem('id');
				$.ajax({ 
	                type: "GET",
	                url: baseUrl + "zongheshuju/info/" + id,
	                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
	                success: function(res){           
	                	if(res.code == 0){
	                		ruleForm = res.data
							showImg();
							setContent();		
							setMediaUrl();	
							setDownloadBtn();
			    		}else if(res.code ==401){
			    			 <%@ include file="../../static/toLogin.jsp"%>	
			    		}else{
							 alert(res.msg);
						}
	                },
	            });
			}else{
				$("#submitBtn").addClass("新增");
			}
		}	

		//图片显示
		function showImg(){
		}		
		function exit(){
			window.sessionStorage.removeItem("id");
			window.location.href = "list.jsp";
		}			
		// 下载
		function download(fileName){
			var url = baseUrl+fileName;
			window.open(url);
		}	
		//设置下载
		function setDownloadBtn(){
		}			
		//设置音视频播放链接
		function setMediaUrl(){
		}	
		//打开新窗口播放媒体
		function mediaPlay(url){
			//var url = baseUrl + "upload/" + fileName;
			window.open(baseUrl+url);
		}		
		$(document).ready(function() { 
			//设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			setMenu();
			$('#exitBtn').on('click', function(e) {
			    e.preventDefault();
				exit();
			});
			getDetails();
			<%@ include file="../../static/myInfo.js"%>
		});			
		// 用户登出
        <%@ include file="../../static/logout.jsp"%>	
	</script>
</body>

</html>
