<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>home</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap">
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
   background: url("avif1.jpg") no-repeat center center fixed;
    background-size: cover;
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
  
  .welcome-container {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
    animation: fadeWelcome 3s infinite;
    z-index: 0;
  }
  
  .welcome-text {
    font-family: 'Roboto', sans-serif;
    font-size: 72px;
    font-weight: 700;
    color: #F4ECD8; /* Changed text color to a light yellow */
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
    background: rgba(0, 0, 0, 0.5);
    padding: 20px 40px; /* Added padding for better visibility */
    border-radius: 20px; /* Added rounded corners */
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3); /* Added shadow for depth */
  }
</style>
</head>
<body>

<nav>
  <a href="#home">Home</a>
  <a href="/employee">Employee</a>
</nav>

<div class="welcome-container">
  <h1 class="welcome-text">Welcome</h1>
</div>

</body>
</html>
