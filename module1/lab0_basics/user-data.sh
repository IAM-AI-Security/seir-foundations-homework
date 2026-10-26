#!/bin/bash
dnf install -y httpd

systemctl enable httpd
systemctl start httpd

cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Class 8 AWS Website</title>
</head>
<body>
    <h1>Class 8 AWS Website</h1>
    <p>This website is running on Amazon EC2.</p>

    <a href="index.html">Home</a> |
    <a href="about.html">About</a> |
    <a href="calculator.html">Calculator</a>

    <h2>Home Page</h2>
    <p>Welcome to my Week 1 AWS project.</p>
</body>
</html>
EOF

cat > /var/www/html/about.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>About</title>
</head>
<body>
    <h1>About This Project</h1>

    <a href="index.html">Home</a> |
    <a href="about.html">About</a> |
    <a href="calculator.html">Calculator</a>

    <p>This site was created automatically with EC2 user data.</p>
</body>
</html>
EOF

cat > /var/www/html/calculator.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
    <h1>Dynamic Calculator</h1>

    <a href="index.html">Home</a> |
    <a href="about.html">About</a> |
    <a href="calculator.html">Calculator</a>

    <p>Enter two numbers:</p>

    <input type="number" id="num1">
    +
    <input type="number" id="num2">

    <button onclick="addNumbers()">Add</button>

    <h2 id="result">Result:</h2>

    <script>
        function addNumbers() {
            const a = Number(document.getElementById("num1").value);
            const b = Number(document.getElementById("num2").value);
            document.getElementById("result").innerText = "Result: " + (a + b);
        }
    </script>
</body>
</html>
EOF