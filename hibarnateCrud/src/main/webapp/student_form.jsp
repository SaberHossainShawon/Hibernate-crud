<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <head>
        <title>Login Page</title>
        <!--Made with love by Mutiullah Samim -->

        <!--Bootsrap 4 CDN-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <!--Fontawesome CDN-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

        <!--Custom styles-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/formStyle.css">
        <style>
            .bg_image{
                background-image: url('https://images.pexels.com/photos/16188291/pexels-photo-16188291/free-photo-of-view-of-a-desert-at-sunset.jpeg');
                background-size: cover;
                background-repeat: no-repeat;
                height: 100%;
            }
            .text{
                color:white;
            }
        </style>
    </head>
    <body class="bg_image">
        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                        <h3>Form</h3>

                    </div>
                    <div class="card-body">
                        <form action="${pageContext.request.contextPath}/student" method="post">
                            <input type="hidden" name="id" value="${student.id}" />
                            <div class="form-group">
                                <label class="text">Name</label>
                                <input type="text" class="form-control" name="name" value="${student.name}" />
                            </div>
                            <div class="form-group">
                                <label class="text">Roll</label>
                                <input type="text" class="form-control" name="roll" value="${student.roll}" />
                            </div>
                            <div class="form-group">
                                <label class="text">Subject</label>
                                <input type="text" class="form-control" name="subject" value="${student.subject}" />
                            </div>
                            <div class="form-group">
                                <label class="text">GPA</label>
                                <input type="text" class="form-control" name="gpa" value="${student.gpa}" />
                            </div>
                            <div class="form-group">
                                <button class="btn btn-primary btn-sm text-bold" type="submit">Submit</button>
                                <button class="btn btn-danger btn-sm text-bold" type="reset">Reset</button>
                                <a href="${pageContext.request.contextPath}/student">
                                    <button class="btn btn-sm text-bold" type="button">List</button>
                                </a>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
