<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>Matrix Admin</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources-management/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources-management/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources-management/css/uniform.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources-management/css/select2.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources-management/css/matrix-style.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources-management/css/matrix-media.css" />
        <link href="${pageContext.request.contextPath}/resources-management/css/font-awesome.css" rel="stylesheet" />

        <link rel="stylesheet" href="<c:url value="/webjars/font-awesome/4.6.2/css/font-awesome.css"/>"/>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    </head>
    <body>

        <div id="header">
            <h1><a href="dashboard.html">Matrix Admin</a></h1>
        </div>
        <!--Header-part-->
        <jsp:include page="../include/topMenuAdmin.jsp"/>


        <!--sidebar-menu-->
        <jsp:include page="../include/slidebarMenuAdmin.jsp"/>

        <div id="content">
            <div id="content-header">
                <div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Product</a> </div>
                <h1>Product</h1>
            </div>
            <div class="container-fluid">
                <hr>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="widget-box">
                            <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
                                <h5>Product table</h5>
                            </div>
                            <div class="widget-content nopadding">
                                <table class="table table-bordered data-table">
                                    <thead>
                                        <tr>
                                            <th>Name</th>                                            
                                            <th>Price</th>
                                            <th>Category</th>                                            
                                            <th>Size</th>
                                            <th>Description</th>
                                            <th>Image</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="p" items="${products}">
                                            <c:set var="i" value="1"/>
                                            <tr class="gradeU">
                                                <td>${p.name}</td>
                                                <td>${p.price*1.0} VNĐ</td>
                                                <td>${p.category.name}</td>
                                                <td>
                                                    <c:forEach var="s" items="${p.sizes}"> 
                                                        <c:if test="${i == p.sizes.size()}">
                                                            ${s.size}
                                                        </c:if>
                                                        <c:if test="${i != p.sizes.size()}">
                                                            ${s.size},
                                                        </c:if>
                                                        <c:set var="i" value="${i+1}"/>
                                                    </c:forEach>
                                                </td>
                                                <th>Description</th>
                                                <td>
                                                    <div class="col-sm-3 image" >
                                                        <img src="${pageContext.request.contextPath}/${p.images[0].path}" alt="${product.name}" height="50px" width="50px"/>
                                                    </div>
                                                </td>
                                                <td>${p.status}</td>
                                                <td>
                                                    <button class="btn btn-primary btn-sm" 
                                                            onclick="location.href = '<c:url value="/admin/edit-product/${p.id}"/>'">Edit</button>
                                                    <button class="btn btn-primary btn-sm"
                                                            onclick="location.href = '<c:url value="/admin/delete-product/${p.id}"/>'">Delete</button>
                                                </td>                                           

                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Footer-part-->
        <jsp:include page="../include/footerAdmin.jsp"/>
        <!--end-Footer-part-->
        <script src="${pageContext.request.contextPath}/resources-management/js/jquery.min.js"></script> 
        <script src="${pageContext.request.contextPath}/resources-management/js/jquery.ui.custom.js"></script> 
        <script src="${pageContext.request.contextPath}/resources-management/js/bootstrap.min.js"></script> 
        <script src="${pageContext.request.contextPath}/resources-management/js/jquery.uniform.js"></script> 
        <script src="${pageContext.request.contextPath}/resources-management/js/select2.min.js"></script> 
        <script src="${pageContext.request.contextPath}/resources-management/js/jquery.dataTables.min.js"></script> 
        <script src="${pageContext.request.contextPath}/resources-management/js/matrix.js"></script> 
        <script src="${pageContext.request.contextPath}/resources-management/js/matrix.tables.js"></script>
    </body>
</html>