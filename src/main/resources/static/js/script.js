
function changeLanguage() {
    const language = document.getElementById("language").value;

    const messages = {
        en: "Welcome to Navana Learning Skills!",
        ko: "Navana Learning Skills에 오신 것을 환영합니다!",
        te: "Navana Learning Skills కు స్వాగతం!"
    };

    alert(messages[language]);
}

