// Modules to control application life and create native browser window
const { app, ipcMain } = require("electron");
const { BrowserWindow, setVibrancy } = require("electron-acrylic-window");
const path = require("path");

function createWindow() {
	const win = new BrowserWindow({
		width: 750,
		height: 975,
		resizable: false,
		autoHideMenuBar: true,
		titleBarStyle: "hidden",
		icon: "assets/icons/appIcon.png",
		webPreferences: {
			nodeIntegration: true,
			enableRemoteModule: true,
			contextIsolation: false,
		},
	});

	win.loadFile("index.html");

	setVibrancy(win, {
		theme: "dark",
	});

	ipcMain.on("dark-theme", (evt, arg) => {
		setVibrancy(win, {
			theme: "dark",
		});
	});

	ipcMain.on("light-theme", (evt, arg) => {
		setVibrancy(win, {
			theme: "light",
		});
	});
}

try {
	require("electron-reloader")(module);
} catch (_) {}

app.whenReady().then(() => {
	createWindow();

	app.on("activate", function () {
		if (BrowserWindow.getAllWindows().length === 0) createWindow();
	});
});

app.on("window-all-closed", function () {
	if (process.platform !== "darwin") app.quit();
});
