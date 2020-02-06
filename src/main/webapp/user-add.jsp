<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户新增</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>开始使用layui</title>
 <link rel="stylesheet" href="assert\layui\css\layui.css">
</head>
<body>
	<form class="layui-form" lay-filter="form_user" action="">
  <div class="layui-form-item">
    <label class="layui-form-label">学生姓名：</label>
    <div class="layui-input-block">
      <input type="text" name="stuName" required  lay-verify="required" placeholder="请输入学生名称：" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">学生年龄：</label>
    <div class="layui-input-inline">
      <input type="text" name="stuAge" required lay-verify="required" placeholder="请输入学生年龄：" autocomplete="off" class="layui-input">
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">学生生日：</label>
    <div class="layui-input-block">
      <input name="stuBirthday" id="stuBirthday" required lay-verify="required" class="layui-input">
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">学生爱好</label>
    <div class="layui-input-block">
      <input type="checkbox" name="stuLikes[write]" value="写作" title="写作">
      <input type="checkbox" name="stuLikes[read]" value="阅读" title="阅读" checked>
      <input type="checkbox" name="stuLikes[dai]" value="发呆" title="发呆">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">学生性别</label>
    <div class="layui-input-block">
      <input type="radio" name="stuSex" value="1" title="男">
      <input type="radio" name="stuSex" value="0" title="女" checked>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
</body>
<script type="text/javascript" src="assert/layui/layui.js"></script>
<script type="text/javascript">
	layui.use(['layer','form','laydate'],function(){
		var layer = layui.layer;
		var form = layui.form;
		var laydate = layui.laydate;
		
		var $ = layui.$;
		
		
		//layer.msg('hello world!!');
		//渲染日历
		laydate.render({
			elem:'#stuBirthday'//指定元素
		});
		
		//绑定提交按钮
		form.on('submit(formDemo)',function(){
			var date = form.val('form_user');
			console.log(date);
			
			$.ajax({
				type:'post',
				url:'student',
				data:data,
				success:function(result){
					if(result){
						layer.msg("提交成功了!");
					}
				}
			});
		});
	});
</script>
</html>