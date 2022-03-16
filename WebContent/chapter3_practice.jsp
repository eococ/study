<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>callback / this</title>
</head>
<body>
<script type="text/javascript">

function whatYourName(name, callback){
	console.log('name : ', name);
	callback();
} 	
function finishFunc(){
	console.log('finish function');
}
whatYourName('jimin',finishFunc);

</script>
	<h1>callback();</h2>
</body>
</html>