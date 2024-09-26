<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="stylemember.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Member Data</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center; /* Center horizontally */
            justify-content: center; /* Center vertically */
            height: 100vh; /* Full viewport height */
            background-color: #ffe4e6; /* Optional background color */
        }

        form {
            background-color: #fff; /* Form background color */
            padding: 30px; /* Padding inside the form */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Shadow for depth */
        }

        p {
            margin: 10px 0; /* Space between paragraphs */
        }

        label {
            display: block; /* Make label occupy full width */
            margin-bottom: 5px; /* Space between label and input */
        }

        input[type="text"] {
            width: 100%; /* Full width for input fields */
            padding: 8px; /* Padding inside input fields */
            border: 1px solid #ccc; /* Border color */
            border-radius: 4px; /* Rounded corners */
        }

    </style>
</head>
<body>
    <form method="post" action="insertmembersuccess.php">
        <p>
            <label for="mid">รหัสสมาชิก</label>
            <input type="text" name="mid" id="mid" required>
        </p>
        <p>
            <label for="mname">ชื่อ</label>
            <input type="text" name="mname" id="mname" required>
        </p>
        <p>
            <label for="mlastname">นามสกุล</label>
            <input type="text" name="mlastname" id="mlastname" required>
        </p>
        <p>
            <label for="address">ที่อยู่</label>
            <input type="text" name="address" id="address" required>
        </p>
        <p>
            <label for="telephone">เบอร์โทร</label>
            <input type="text" name="telephone" id="telephone" required>
        </p>
        <input class="a" type="submit" value="บันทึก">
    </form>
    <br>
    <a href='mainmenu.php'><button>Home</button></a>
</body>
</html>
