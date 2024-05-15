<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.User" %>
<%@ page import="com.database.Database" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Netflix User Details</title>
    <!-- Bootstrap CSS -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .container {
            max-width: 600px;
        }
        
    </style>
</head>
<body class="bg-black text-white" >
<div class="container mt-5">
<%User user=new Database().getUserByEmail((String)session.getAttribute("email")); %>

    <h1>Netflix User Details</h1>
    <div class="mb-3">
        <label for="email" class="form-label">Email address</label>
        <input type="email" class="form-control" id="email" aria-describedby="emailHelp" value="<%=user.getEmail() %>" disabled>
    </div>
    
    <div class="mb-3">
        <label for="package" class="form-label">Package Name</label>
        <input type="text" class="form-control" id="package" value="<%=user.getPack() %>" disabled>
    </div>
    <div class="mb-3">
        <label for="package" class="form-label">Package Price</label>
        <input type="text" class="form-control" id="package" value="<%=user.getPrice() %>" disabled>
    </div>
    <form action="updateName.jsp" method="post">
        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" id="name" name="name" value="<%=user.getName() %>">
        </div>
        <button type="submit" class="btn btn-primary">Update Name</button>
    </form>
</div>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-2U3cIVfJZr9cncczj5tebjiX1u4o2/WldLBO5HzGk1XGdVbxT3J4miSGPc04/7Xb" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>