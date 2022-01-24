<%@ page import="java.util.List" %>
<%@ page import="model.News" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<div class="container">

    <%@include file="include.jsp"%>

            <%
            List<News> news = (List<News>) request.getAttribute("news");//извлекаем массив студентов
            for (News news1 : news) {

        %>
        <p>
    <h1><strong><%=news1.getTitle()%></strong></h1>
            <h2><%=news1.getContent()%></h2>
            <h4><%=news1.getAuthor()%></h4>
        </p>
        <%
            }
        %>
        </tbody>
    </table>
    <!--    <div class="row">-->
    <!--        <div class="col-lg-4 m-auto mt-3">-->
    <!--            <form action="/main" method="post">-->
    <!--                <div class="mb-3">-->
    <!--                    <label for="studentName" class="form-label">Student Name</label>-->
    <!--                    <input type="text" name="studentName" class="form-control" id="studentName">-->
    <!--                </div>-->
    <!--                <div class="mb-3">-->
    <!--                    <label for="studentSurname" class="form-label">Student Surname</label>-->
    <!--                    <input type="text" name="studentSurname" class="form-control" id="studentSurname">-->
    <!--                </div>-->
    <!--                <div class="mb-3">-->
    <!--                    <select name="studentCity" id="">-->
    <!--                        <option value="almaty">Almaty</option>-->
    <!--                        <option value="astana">Astana</option>-->
    <!--                        <option value="karaganda">Karaganda</option>-->
    <!--                    </select>-->
    <!--                </div>-->
    <!--                <button type="submit" class="btn btn-primary">Submit</button>-->
    <!--            </form>-->
    <!--        </div>-->
    <!--    </div>-->
</div>
</body>
</html>