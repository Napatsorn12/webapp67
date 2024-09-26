<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="stylemovie.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Movie Data</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center; /* Center horizontally */
            justify-content: center; /* Center vertically */
            height: 100vh; /* Full viewport height */
            background-color: #e0f7fa; /* Optional background color */
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

        input[type="text"],
        input[type="date"] {
            width: 100%; /* Full width for input fields */
            padding: 8px; /* Padding inside input fields */
            border: 1px solid #ccc; /* Border color */
            border-radius: 4px; /* Rounded corners */
        }




    </style>
</head>
<body>
    <form method="post" action="insertmoviesuccess.php">
        <p>
            <label for="movid">รหัสหนัง</label>
            <input type="text" name="movid" id="movid" required>
        </p>
        <p>
            <label for="movname">ชื่อ</label>
            <input type="text" name="movname" id="movname" required>
        </p>
        <p>
            <label for="movinformation">ข้อมูลหนัง</label>
            <input type="text" name="movinformation" id="movinformation" required>
        </p>
        <p>
            <label for="time">ระยะเวลา</label>
            <input type="time" name="time" id="time" required>
        </p>
        <p>
            <label for="date">วันที่หนังเข้า</label>
            <input type="date" name="date" id="date" required>
        </p>
        <input class="a" type="submit" value="บันทึก">
    </form>
    <br>
    <a href='moviemainmenu.php'><button>Home</button></a>
</body>
</html>
