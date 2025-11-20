<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>${message}</h1>	
 
	<c:if test="${empty currentUser}">
		<a href="user/register"><button>Register</button></a>
		<a href="user/login"><button>Login</button></a>
	</c:if>

	<c:if test="${not empty currentUser}">
		<p>Welcome, ${currentUser.username}!</p>
		<a href="user/profile"><button>My Profile</button></a>
		<a href="user/logout"><button>Logout</button></a>
	</c:if>
	
	<a href="admin/movies/Movies"><button>Movies</button></a>
</body>
</html>