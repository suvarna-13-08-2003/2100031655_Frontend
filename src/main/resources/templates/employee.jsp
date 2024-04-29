<!DOCTYPE html>
<head>
    <title>Employee Table</title>
    <style>
     
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        tr:hover {
            background-color: #8fd7c7; /* Highlight row on hover */
        }

        /* Highlight text on hover */
        td:hover {
            background-color: yellow;
        }
         tr:nth-child(odd) {
        background-color: #165355; /* Color for odd rows */
    }

    tr:nth-child(even) {
        background-color: #81E8EB; /* Color for even rows */
    }
        
        h1 {
            text-align: center;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        th {
            border: 1px solid #ddd;
            background-color: #477274;
            color: white;
            padding: 8px;
            text-align: left;
        }

        td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        
        tr:hover {
            background-color: #66B8BB;
        }
        
        .full-width-button {
            width: 100%;
            display: block;
            text-align: center;
            padding: 8px;
            background-color: #477274;
            border: none;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        
        .full-width-button:hover {
            background-color: #477274;
        }
        
        input[type="text"],
        input[type="number"] {
            width: calc(100% - 16px);
            padding: 4px;
            margin: 4px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
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
  @keyframes fadeWelcome {
    0%, 100% {
      opacity: 0;
    }
    50% {
      opacity: 1;
    }
  }
    </style>
</head>
<body>
<nav>
  <a href="/home">Home</a>
  <a href="/employee">Employee</a>
</nav>
    <h1>Employee Table</h1>
    <form action="/add">
    <input type="submit" value="Add Employee" class="full-width-button">
    </form>
    <table>
        <tr>
            <th>ID</th>
            <th>FIRST NAME
            <input type="text" oninput="filterTable()" data-column="1" placeholder="Filter">
            </th>
            <th>LAST NAME
            <input type="text" oninput="filterTable()" data-column="2" placeholder="Filter">
            </th>
            <th>GENDER
            <input type="text" oninput="filterTable()" data-column="3" placeholder="Filter">
            </th>
            <th>AGE
            <input type="number" oninput="filterTable()" data-column="4" placeholder="Filter">
            </th>
            <th>SALARY
            <input type="text" oninput="filterTable()" data-column="5" placeholder="Filter">
            </th>
            <th>DEPARTMENT
            <input type="text" oninput="filterTable()" data-column="6" placeholder="Filter">
            </th>
            <th>POSITION
            <input type="text" oninput="filterTable()" data-column="7" placeholder="Filter">
            </th>
            
            <th>EDIT</th>
            <th>DELETE</th>
        </tr>
       
        <tr th:each="emp : ${employees}">
            <td th:text="${emp.Id}"></td>
            <td th:text="${emp.FirstName}"></td>
            <td th:text="${emp.LastName}"></td>
            <td th:text="${emp.Gender}"></td>
            <td th:text="${emp.Age}"></td>
            <td th:text="${'$'+emp.Salary}"></td>
            <td th:text="${emp.Department}"></td>
            <td th:text="${emp.Pos}"></td>
            
            
            <td>
            <form th:action="@{'/eform/' + ${emp.Id}}">
            <input type="submit" class="full-width-button" value="EDIT">
            </form>
            </td>
            <td>
            <form th:action="@{'/delete/' + ${emp.Id}}">
            <input type="submit" class="full-width-button" value="DELETE">
            </form>
            </td>
        </tr>
    </table>
    
    <script>
        function filterTable() {
            var filterInputs = document.querySelectorAll('input[data-column]');
            var table = document.querySelector("table");
            var tr = table.getElementsByTagName("tr");

            for (var i = 1; i < tr.length; i++) {
                var showRow = true;
                for (var j = 0; j < filterInputs.length; j++) {
                    var columnIndex = parseInt(filterInputs[j].getAttribute('data-column'));
                    var filter = filterInputs[j].value.toUpperCase();
                    var td = tr[i].getElementsByTagName("td")[columnIndex];
                    if (td) {
                        var txtValue = td.textContent || td.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) === -1) {
                            showRow = false;
                            break;
                        }
                    }
                }
                if (showRow) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    </script>
    
</body>
</html>
