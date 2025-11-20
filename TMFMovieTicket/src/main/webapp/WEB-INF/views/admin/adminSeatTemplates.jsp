<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<form method="get" action="${pageContext.request.contextPath}/admin/templates/screen">
<div class="container mt-4">
    <h2> Seat Templates for ${screen.name}</h2> <!-- /${screen.id} -->
    <a href="${pageContext.request.contextPath}/admin/templates/add" class="btn btn-success mb-3">
        <i class="fa fa-plus"></i> Add Template
    </a>

    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Rows</th>
            <th>Cols</th>
            <th>Seats</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="t" items="${templates}">
            <tr>
                <td>${t.id}</td>
                <td>${t.name}</td>
                <td>${t.rows}</td>
                <td>${t.cols}</td>
                <td>
                    <c:if test="${not empty t.seats}">
                        ${fn:length(t.seats)} seats
                    </c:if>
                    <c:if test="${empty t.seats}">
                        0
                    </c:if>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/admin/templates/edit/${t.id}" class="btn btn-warning btn-sm">Edit</a>
                    <a href="${pageContext.request.contextPath}/admin/templates/delete/${t.id}" class="btn btn-danger btn-sm"
                       onclick="return confirm('Delete this template?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
<!-- /${screen.theater.id} -->
    <a href="${pageContext.request.contextPath}/admin/screens/theater" class="btn btn-secondary mt-3">
         Back to Screens
    </a>
</div>
</form>