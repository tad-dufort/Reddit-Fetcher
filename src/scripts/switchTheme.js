function switchTheme() {
	var button = document.getElementById("themeButton");
	var theme = document.getElementById("theme");
	if (button.innerHTML === "☀️") {
		button.innerHTML = "🌙";
		ipcRenderer.send("dark-theme");
		theme.setAttribute("href", "./styles/styles-dark.css");
		fs.writeFile(`${userHome}/data.txt`, "dark", function (error) {
			if (error) throw err;
		});
	} else {
		button.innerHTML = "☀️";
		ipcRenderer.send("light-theme");
		theme.setAttribute("href", "./styles/styles-light.css");
		fs.writeFile(`${userHome}/data.txt`, "light", function (error) {
			if (error) throw err;
		});
	}
}
