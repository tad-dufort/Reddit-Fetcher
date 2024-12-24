// function getpost() {
// 	var subSelect = document.getElementById("subs");
// 	// var sub = subSelect.options[subSelect.selectedIndex].value;
// 	var sub = subSelect.value;
// 	fetch(`https://post-api.com/gimme/${sub}`)
// 		.then(function (response) {
// 			return response.json();
// 		})
// 		.then(function (jsonResponse) {
// 			if (jsonResponse.nsfw) return getpost().then();
// 			document.getElementById("postImage").src = jsonResponse.url;
// 			document.getElementById("postLink").href = jsonResponse.url;
// 			document.getElementById("postLink").download = jsonResponse.url.substr(18);
// 			setTimeout(() => {
// 				scroll({
// 					behavior: "smooth",
// 					top: 1000,
// 				});
// 			}, 100);
// 		});
// }

function getPost() {
	// var sub = document.getElementById("subs").options[subSelect.selectedIndex].value;
	var sub = document.getElementById("subs").value;
	fetch(`https://Meme-api.com/gimme/${sub}`)
		.then(function (response) {
			return response.json();
		})
		.then(function (jsonResponse) {
			document.getElementById("postImage").src = jsonResponse.url;
			document.getElementById("postLink").href = jsonResponse.url;
			document.getElementById("postLink").download = jsonResponse.url.substr(18);
			setTimeout(() => {
				scroll({
					behavior: "smooth",
					top: 1000,
				});
			}, 100);
		});
}
