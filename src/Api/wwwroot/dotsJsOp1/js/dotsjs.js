var gameId = '';
var agentId = '';
var agentTurn = -1;
var endPoint = window.location.protocol + '//dotsapi.azurewebsites.net/api/DotsJs';
var intervalId;

function initTurn() {
    agentTurn = 0;
    $.get(endPoint + "/" + agentId + "/getplayerturn/", function (data) {
        console.log("Agent Turn: " + data);
        if (data == 1) {
            playGame();
        } else {
            agentId = -1;
        }
    });
}

function playGame() {
    console.log("Consulting... ");
    if (game.getGameEnded(board, curPlayer))
        clearInterval(intervalId);

    if (!is_player_human(curPlayer)) {
        console.log("Waiting... ");
        return;
    }

    let act = action === undefined ? "" : action.toString();
    console.log("Playing... ");
    let input = {
        GameId: gameId,
        PositionPlayed: act,
        ResultedBoard: board.toString()
    };

    $.ajax({
        type: "POST",
        traditional: true,
        url: endPoint + "/",
        contentType: 'application/json',
        dataType: "json",
        data: JSON.stringify(input),
        success: function (data) {
            console.log(data.fullBoard);
            play(data.position);
            if (data.board != board.toString()) {
                clearInterval(intervalId);
                console.log("Board Error:");
                console.log(data.board);
                console.log(board.toString());
            } else {
                console.log(data.position + " - " + data.board + " valid! ");
            }
        },
        error: function (data) {
            console.log("Error:");
            console.log(data);
        }
    });
}

function start() {
    console.log("Starting...");
    start_or_reload_game();
    $.get(endPoint + "/1",
        function (data) {
            console.log("GameId: " + data);
            gameId = data;
            $.get(endPoint + "/Agent2/" + gameId,
                function (data2) {
                    console.log("AgentId: " + data2);
                    agentId = data2;
                    intervalId = setInterval(playGame, 12000);
                });
        });
}