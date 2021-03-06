<%@page import="models.Category"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="/templates/admin/assets/inc/header.jsp" %>
<%@ include file="/templates/admin/assets/inc/leftbar.jsp" %>
<div id="page-wrapper">
    <div id="page-inner">
        <div class="row">
            <div class="col-md-12">
                <h2>Thêm danh mục</h2>
            </div>
        </div>
        <!-- /. ROW  -->
        <hr />
        <div class="row">
            <div class="col-md-12">
                <!-- Form Elements -->
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12">
                            <%
                            	String err = (String) request.getParameter("err");
                            						if("1".equals(err)) {
                            %>
							<div class="alert alert-danger" role="alert">
 								 Vui lòng nhập tên danh mục!
							</div>
							<%
								}
							%>
                            <%
                            	if("2".equals(err)) {
                            %>
							<div class="alert alert-danger" role="alert">
 								 Sửa thất bại!
							</div>
							<%
								}
							%>
                                <form role="form" method="post"  id="form">
                                <%
                                	if(request.getAttribute("cat")!=null){
                                                                		Category cat=(Category) request.getAttribute("cat");
                                %>
                                    <div class="form-group">
                                        <label for="name">Tên danh mục</label>
                                        <input type="text" id="name" value="<%=cat.getName()%>" name="name" class="form-control" />
                                    </div>
                                   <%} %>
                                    <button type="submit" name="submit" class="btn btn-success btn-md">Sửa</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Form Elements -->
            </div>
        </div>
        <!-- /. ROW  -->
    </div>
    <!-- /. PAGE INNER  -->
</div>
<script>
    document.getElementById("cat").classList.add('active-menu');
</script>
<!-- /. PAGE WRAPPER  -->
<%@ include file="/templates/admin/assets/inc/footer.jsp" %>