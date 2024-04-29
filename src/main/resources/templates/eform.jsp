<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EDIT EMPLOYEE</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f0f0f0;
    }

    form {
        width: 300px;
        margin: 50px auto;
        padding: 20px;
        background-color: #ffffff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    input[type="text"],
    input[type="number"] {
        width: calc(100% - 10px);
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #478A70;
        border: none;
        border-radius: 4px;
        color: white;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #356454;
    }
    nav {
    background: rgba(0, 0, 0, 0.5);
    overflow: hidden;
    border-radius: 5px;
    box-shadow: 0 10px 5px rgba(0, 0, 0, 0.2);
    position: relative;
    z-index: 1;
  }
  nav {
    background: rgba(0, 0, 0, 0.5);
    overflow: hidden;
    border-radius: 5px;
    box-shadow: 0 10px 5px rgba(0, 0, 0, 0.2);
    position: relative;
    z-index: 1;
  }
  nav a {
    float: left;
    display: block;
    color: white;
    text-align: center;
    padding: 26px 35px;
    text-decoration: none;
    transition: background-color 0.3s;
  }
  nav a:hover {
    background-color: rgba(255, 255, 255, 0.2);
  }
  nav a {
    float: left;
    display: block;
    color: white;
    text-align: center;
    padding: 26px 35px;
    text-decoration: none;
    transition: background-color 0.3s;
  }
  nav a:hover {
    background-color: rgba(255, 255, 255, 0.2);
  }
</style>
</head>
<body>
<nav>
  <a href="#home">Home</a>
  <a href="/employee">Employee</a>
</nav>
    <form th:action="@{'/edit/'+ ${emp.Id}}" method="post" th:object="${neww}">
        <input type="text" name="FirstName" th:value="${emp.FirstName}">
        <input type="text" name="LastName" th:value="${emp.LastName}"><br>
        <input type="number" name="Age" th:value="${emp.Age}"><br>
        <input type="text" name="Department" th:value="${emp.Department}">
        <input type="submit" value="EDIT">
    </form>
</body>
</html>
