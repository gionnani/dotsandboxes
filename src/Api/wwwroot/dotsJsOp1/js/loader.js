$.getScript("https://dotsapi.azurewebsites.net/DotsJsOp1/js/dotsJs.js", function (data, textStatus, jqxhr) {
    console.log(textStatus); // Success
    console.log(jqxhr.status); // 200
    console.log("Load was performed.");
    start();
});