<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
	function checkData() {
		var q = document.getElementById("q").value.trim();
		if (q == null || q == "") {
			alert("请输入您要查询的关键字！");
			return false;
		} else {
			return true;
		}
	}
</script>

<div class="row">
	<div class="col-md-12" style="padding-top: 10px">
		
			
			<c:if test="${blog.blogType.id>0}">
				<ul class="breadcrumb">			
					<li class="active">${blog.blogType.typeName}</li>
					<li class="active">${blog.title}</li>	
				</ul>
			</c:if>
					
		
	</div>
</div>