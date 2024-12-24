const fs = require("fs");
const os = require("os");
const { ipcRenderer } = require("electron");

const userHome = os.homedir().replace(/\\/g, "/");

fs.readFile(`${userHome}/data.txt`, "utf8", function (error, data) {
	if (error) throw err;
	var button = document.getElementById("themeButton");
	var theme = document.getElementById("theme");
	theme.setAttribute(`href`, `./styles/styles-${data}.css`);
	ipcRenderer.send(`${data}-theme`);
	if (data === "dark") {
		button.innerHTML = `<img src="./assets/UI/Moon.png" height="20px" class="uiImage">`;
	} else {
		button.innerHTML = `<img src="./assets/UI/Sun.png" height="20px" class="uiImage">`;
	}
});

fetch(`https://meme-api.herokuapp.com/gimme`)
	.then(function (response) {
		return response.json();
	})
	.then(function (jsonResponse) {
		if (jsonResponse.nsfw) return getMeme().then();
		document.getElementById("memeImage").src = jsonResponse.url;
	});
