<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>DANH SÁCH TIN TỨC</title>
<base href="${pageContext.servletContext.contextPath}/">
<jsp:include page="stylebanhang.css"></jsp:include>
<jsp:include page="banhang.css"></jsp:include>
<link rel="shortcut icon" type="image/png" href="./images/iconweb.png">
<style type="text/css">

.bg {
	background-image: url("./images/moi.png");
	width: 100%;
	height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
body {
	font-family: "Lato", sans-serif;
}
.lb{
	font-weight: bold;
}
</style>
</head>
<body>
<div class="sidebar">
  <a href="admin/index.html"><i class="fas fa-users"></i> Xin chào ${sessionScope.admin.getHoTen()} đã đến với trang quản trị
  </a><hr><p><a href="admin/sanpham.html"><i class="far fa-list-alt"></i> Danh sách sản phẩm</a></p>
  <p>
    <a href="admin/thuonghieu.html"><i class="far fa-list-alt"></i>Thương hiệu sản phẩm</a>
    <a href="admin/theloai.html"><i class="far fa-list-alt"></i>Thể loại sản phẩm</a>
    <a href="admin/taikhoan.html"><i class="far fa-list-alt"></i>Tài khoản người dùng</a>
    <a href="admin/tintuc.html"><i class="far fa-list-alt"></i>Tin tức</a>
    <a href="admin/phieunhaphang.html"><i class="far fa-list-alt"></i>Phiếu nhập hàng</a>
    <a href="admin/kiemtradon.html"><i class="far fa-list-alt"></i>Kiểm tra đơn hàng</a>
    <a href="admin/dangxuat.html"><i class="fas fa-sign-out-alt"></i>Đăng xuất </a></p>
</div>
  	<div class="main bg">
 <h2 style="margin-left: 250px; font-style: italic; color: #8B4513"> Xin chào ${sessionScope.admin.getHoTen()}! </h2>
  <p style="margin-left: 250px; color: brown">Chào mừng bạn quay trở lại với trang quản trị của Website </p>
		<div class="container">       <br>
<h2 style="font-weight: bold;color: #FF6666">DANH SÁCH TIN TỨC</h2>
 <a href="admin/themtin.html"><i class="far fa-plus-square"></i> Thêm tin tức</a><h6 style="color: red">${message}</h6>
  <table  class="table table-bordered table-hover">
		<tr>
		<th><div align="center">Mã tin</div></th>
		<th><div align="center">Tên chủ đề</div></th>
		<th><div align="center">Hình ảnh</div></th>
		<th><div align="center">Ngày đăng</div></th>
		<th><div align="center">Nội dung</div></th>
		<th><div align="center">Người đăng bài</div></th>
		</tr>
		<c:forEach var="o" items="${tintucs}">
			<tr>
				<td width="200px"><div align="center">${o.id}</div></td>
				<td width="225px"><div align="center">${o.chuDe}</div></td>
				<td  width="312px"><img src="./images/${o.anh}" style="width: 100%"></td>
				<td  width="232px"><div align="center">
				  <f:formatDate pattern="dd-MM-yyyy" value="${o.ngayDang}"/>	  
		     	</div></td>
		     	<td width="200px"><div align="center"><textarea rows="12">${o.noiDung}</textarea></div></td>
		     	 <c:forEach var="t" items="${taikhoans}">
        		<c:if test="${o.taiKhoanId == t.id}">
		     	<td  width="232px"><div align="center">${t.hoTen}</div></td></c:if></c:forEach>
				 <td><div align="center"><a href="admin/capnhattin/${o.id}.html" onclick="if(!(confirm('Bạn có chắc chắn muốn sửa tin này không?'))) return false;">Sửa tin</a></div></td>
        		<td><div align="center"><a href="admin/xoatin/${o.id}.html" onclick="if(!(confirm('Bạn có chắc chắn muốn xóa tin này không?'))) return false;">Xóa tin</a></div></td> 
			</tr>
		</c:forEach>
		
	</table>
	</div>
	</div>

</body>
</html>