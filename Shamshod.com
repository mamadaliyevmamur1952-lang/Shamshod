<!DOCTYPE html>
<html lang="uz">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Raqamni Top O‘yini</title>
<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #667eea, #764ba2);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.game-box {
    background: white;
    padding: 40px;
    border-radius: 20px;
    text-align: center;
    width: 350px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.2);
    animation: fadeIn 1s ease-in-out;
}

h1 {
    margin-bottom: 10px;
}

input {
    padding: 10px;
    width: 80%;
    font-size: 16px;
    margin-top: 15px;
    border-radius: 8px;
    border: 1px solid #ccc;
}

button {
    padding: 10px 20px;
    margin-top: 15px;
    border: none;
    background: #667eea;
    color: white;
    border-radius: 8px;
    cursor: pointer;
    font-size: 16px;
    transition: 0.3s;
}

button:hover {
    background: #5a67d8;
}

#message {
    margin-top: 20px;
    font-weight: bold;
}

.win {
    color: green;
    animation: bounce 0.6s;
}

@keyframes fadeIn {
    from {opacity: 0; transform: scale(0.9);}
    to {opacity: 1; transform: scale(1);}
}

@keyframes bounce {
    0% {transform: scale(1);}
    50% {transform: scale(1.2);}
    100% {transform: scale(1);}
}
</style>
</head>
<body>

<div class="game-box">
    <h1>🎯 Raqamni Top</h1>
    <p>1 dan 100 gacha son o‘yladim</p>
    <input type="number" id="guess" placeholder="Son kiriting">
    <br>
    <button onclick="checkGuess()">Tekshirish</button>
    <p id="message"></p>
    <p id="attempts"></p>
</div>

<script>
let randomNumber = Math.floor(Math.random() * 100) + 1;
let attempts = 0;

function checkGuess() {
    let userGuess = Number(document.getElementById("guess").value);
    let message = document.getElementById("message");
    let attemptText = document.getElementById("attempts");
    attempts++;

    if (!userGuess) {
        message.innerHTML = "⚠️ Son kiriting!";
        return;
    }

    if (userGuess === randomNumber) {
        message.innerHTML = "🎉 Tabriklayman! To‘g‘ri topdingiz!";
        message.className = "win";
        attemptText.innerHTML = "Urinishlar soni: " + attempts;
    } 
    else if (userGuess > randomNumber) {
        message.innerHTML = "📉 Juda katta!";
        attemptText.innerHTML = "Urinishlar soni: " + attempts;
    } 
    else {
        message.innerHTML = "📈 Juda kichik!";
        attemptText.innerHTML = "Urinishlar soni: " + attempts;
    }
}
</script>

</body>
</html>
