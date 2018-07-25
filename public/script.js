
 document.getElementById("champions-display").addEventListener("mouseenter", function(e) {

            if (document.getElementById('navigation').classList.contains('sidebar-open')) {
                addClass();
            }

        });

        document.getElementById("brackets-display").addEventListener("mouseenter", function(e) {

            if (document.getElementById('navigation').classList.contains('sidebar-open')) {
                addClass();
            }

        });

        document.getElementById("scorer-display").addEventListener("mouseenter", function(e) {

            if (document.getElementById('navigation').classList.contains('sidebar-open')) {
                addClass();
            }
        });


        function selectChampion() {
            
            document.getElementById('brackets-display').style.display = 'none';
            document.getElementById('scorer-display').style.display = 'none';
            document.getElementById('champions-display').style.display = '';

            if (document.getElementById('bracket').classList.contains('check-on')) {
                document.getElementById('bracket').classList.toggle('check-on');
            }
            if (document.getElementById('scorer').classList.contains('check-on')) {
                document.getElementById('scorer').classList.toggle('check-on');
            }
            document.getElementById('champion').classList.toggle('check-on');
        }

        function selectBracket() {
            document.getElementById('champions-display').style.display = 'none';
            document.getElementById('scorer-display').style.display = 'none';
            document.getElementById('brackets-display').style.display = '';


            if (document.getElementById('champion').classList.contains('check-on')) {
                document.getElementById('champion').classList.toggle('check-on');

            }
            if (document.getElementById('scorer').classList.contains('check-on')) {
                document.getElementById('scorer').classList.toggle('check-on');
            }
            document.getElementById('bracket').classList.toggle('check-on');
        }

        function selectScorer() {

            document.getElementById('champions-display').style.display = 'none';
            document.getElementById('brackets-display').style.display = 'none';
            document.getElementById('scorer-display').style.display = '';

            if (document.getElementById('champion').classList.contains('check-on')) {
                document.getElementById('champion').classList.toggle('check-on');
            }
            if (document.getElementById('bracket').classList.contains('check-on')) {
                document.getElementById('bracket').classList.toggle('check-on');
            }
            document.getElementById('scorer').classList.toggle('check-on');


        }


        function trophyIn() {
            var t = document.getElementsByClassName('fa-trophy')[0];
            var check = document.getElementsByClassName('check')[0];
            check.style.color = 'white';
            t.style.webkitTransform = 'rotate(360deg)';
        }

        function trophyOut() {
            var check = document.getElementsByClassName('check')[0];
            check.style.color = '#d20a11';
            var t = document.getElementsByClassName('fa-trophy')[0];
            t.style.webkitTransform = 'rotate(0deg)';
        }

        function bracketIn() {
            var t = document.getElementsByClassName('fa-sitemap')[0];
            var check = document.getElementsByClassName('check')[1];
            check.style.color = 'white';
            t.style.webkitTransform = 'rotate(90deg)';
        }

        function bracketOut() {
            var check = document.getElementsByClassName('check')[1];
            check.style.color = '#d20a11';
            var t = document.getElementsByClassName('fa-sitemap')[0];
            t.style.webkitTransform = 'rotate(0deg)';
        }

        function scorerIn() {
            var t = document.getElementsByClassName('fa-futbol')[0];
            var check = document.getElementsByClassName('check')[2];
            check.style.color = 'white';
            t.style.webkitTransform = 'rotate(360deg)';
        }

        function scorerOut() {
            var check = document.getElementsByClassName('check')[2];
            check.style.color = '#d20a11';
            var t = document.getElementsByClassName('fa-futbol')[0];
            t.style.webkitTransform = 'rotate(0deg)';
        }


        function getLastVisitedDate() {

            var date = new Date();
            var day = date.getDate();
            var month = date.getMonth();
            var year = date.getFullYear();
            var pageVisits = 1;
            if (localStorage.getItem("visited") != null) {
                pageVisits = localStorage.getItem('visited');
                pageVisits++;
                //               localStorage.setItem('visited', pageVisits);
                //               pageVisits = localStorage.getItem('visited');
            }



            console.log(day);
            console.log(month);
            console.log(year);

            var storageDate = {
                "month": month,
                "day": day,
                "year": year
            };
            console.log(storageDate);

            localStorage.setItem('visited', pageVisits);

            var vNumber = localStorage.getItem('visited');


            //            document.getElementById('date').innerHTML = "Last Visited: " + storageDate.month + "-" + storageDate.day + "-" + storageDate.year;

            document.getElementById('visits').innerHTML = "Number of Visits: " + vNumber;
        }

        function addClass() {
            document.getElementById('navigation').classList.toggle('sidebar-open');


        }

        // Constants used during the AJAX request.
        const DONE = 4;
        const OKAY = 200;
        const ERROR = {
            "message": "The request failed!"
        };




        // Wait for the document to load before binding event handlers further.
        document.addEventListener('DOMContentLoaded', function(e) {


            //            
            //            localStorage.setItem();

            selectChampion();
            // Obtain programmatic reference to the important elements of the page.
            var cform = document.getElementById('cform'),
                finalists = document.getElementById('finalists'),
                output = document.getElementById('output'),
                homeTeam = document.getElementById('home-country-code'),
                awayTeam = document.getElementById('away-country-code'),
                homeScore = document.getElementById('home-score'),
                awayScore = document.getElementById('away-score'),
                homeFlag = document.getElementById('home-country-flag'),
                awayFlag = document.getElementById('away-country-flag');

            var a = document.getElementById('loaderA');
            var b = document.getElementById('loaderB');

            var hTeamBox = document.getElementById('home-team');
            var aTeamBox = document.getElementById('away-team');


            // brakets variables

            var bform = document.getElementById('bform'),
                brackets = document.getElementById('brackets'),
                round16 = document.getElementById('round16'),
                quarterfinals = document.getElementById('quarterfinals'),
                semifinals = document.getElementById('semifinals'),
                final = document.getElementById('final'),
                bracketScreen = document.getElementById('screen-display');

            bracketScreen.style.opacity = '0';

            bform.addEventListener('submit', function(b) {

                b.preventDefault();

                var request = new XMLHttpRequest(),
                    target = '/getWorldCupMatchDetails?year=' + brackets.value;

                request.open('GET', target);

                round16.innerHTML = '';
                if (bracketScreen.classList.contains('rounds')) {
                    bracketScreen.style.opacity = '0';
                    bracketScreen.classList.remove('rounds');
                    
                }

                quarterfinals.innerHTML = '';
                semifinals.innerHTML = '';
                final.innerHTML = '';

                request.send();

                request.onreadystatechange = function() {

                    // Do nothing until the request is finished.
                    if (request.readyState === DONE) {

                        if (request.status === OKAY) {

                            let dataObj = JSON.parse(request.responseText);

                            console.log(dataObj);
                            var i;
                            for (i = 0; i < dataObj.length; i++) {

                                if (dataObj[i].match_type == 'round16') {


                                    round16.innerHTML += "<div class='team-bracket'>" +
                                        "<div id='team-1-flag' class='team flag'><img src='http://www.countryflags.io/" + dataObj[i].home_team_flag + "/flat/64.png' id='arg'></div>" +
                                        "<div id='team-1-name' class='team country-name'>" + dataObj[i].home_team + "</div><div id='team-1-goals' class='team team-goals'>" + dataObj[i].home_team_goals + "</div></div><br><div class='team-bracket'><div id='team-1-flag' class='team flag'><img src='http://www.countryflags.io/" + dataObj[i].away_team_flag + "/flat/64.png' id='arg'></div><div id='team-1-name' class='team country-name'>" + dataObj[i].away_team + "</div><div id='team-1-goals' class='team team-goals'>" + dataObj[i].away_team_goals + "</div></div><div class='divider'></div>";



                                } else if (dataObj[i].match_type == 'quarterfinals') {

                                    quarterfinals.innerHTML += "<div class='team-bracket'>" + "<div id='team-1-flag' class='team flag'><img src='http://www.countryflags.io/" + dataObj[i].home_team_flag + "/flat/64.png' id='arg'></div>" + "<div id='team-1-name' class='team country-name'>" + dataObj[i].home_team + "</div><div id='team-1-goals' class='team team-goals'>" + dataObj[i].home_team_goals + "</div></div><br><div class='team-bracket'><div id='team-1-flag' class='team flag'><img src='http://www.countryflags.io/" + dataObj[i].away_team_flag + "/flat/64.png' id='arg'></div><div id='team-1-name' class='team country-name'>" + dataObj[i].away_team + "</div><div id='team-1-goals' class='team team-goals'>" + dataObj[i].away_team_goals + "</div></div><div class='divider'></div>";
                                } else if (dataObj[i].match_type == 'semifinals') {
                                    semifinals.innerHTML += "<div class='team-bracket'>" +
                                        "<div id='team-1-flag' class='team flag'><img src='http://www.countryflags.io/" + dataObj[i].home_team_flag + "/flat/64.png' id='arg'></div>" +
                                        "<div id='team-1-name' class='team country-name'>" + dataObj[i].home_team + "</div><div id='team-1-goals' class='team team-goals'>" + dataObj[i].home_team_goals + "</div></div><br><div class='team-bracket'><div id='team-1-flag' class='team flag'><img src='http://www.countryflags.io/" + dataObj[i].away_team_flag + "/flat/64.png' id='arg'></div><div id='team-1-name' class='team country-name'>" + dataObj[i].away_team + "</div><div id='team-1-goals' class='team team-goals'>" + dataObj[i].away_team_goals + "</div></div><div class='divider'></div>";
                                } else if (dataObj[i].match_type == 'final') {
                                    final.innerHTML += "<div class='team-bracket'>" +
                                        "<div id='team-1-flag' class='team flag'><img src='http://www.countryflags.io/" + dataObj[i].home_team_flag + "/flat/64.png' id='arg'></div>" +
                                        "<div id='team-1-name' class='team country-name'>" + dataObj[i].home_team + "</div><div id='team-1-goals' class='team team-goals'>" + dataObj[i].home_team_goals + "</div></div><br><div class='team-bracket'><div id='team-1-flag' class='team flag'><img src='http://www.countryflags.io/" + dataObj[i].away_team_flag + "/flat/64.png' id='arg'></div><div id='team-1-name' class='team country-name'>" + dataObj[i].away_team + "</div><div id='team-1-goals' class='team team-goals'>" + dataObj[i].away_team_goals + "</div></div><div class='divider'></div>";
                                }
                            }
                            //                            round16.classList.toggle('appear');
                            setTimeout(function() {
                                bracketScreen.classList.add('rounds');
                                bracketScreen.style.opacity = '1';
                            }, 500);
                        } else {
                            console.log(JSON.stringify(ERROR));
                        }
                    }
                };
            });


            // Listen for submission events on the example form.
            cform.addEventListener('submit', function(e) {

                if (document.getElementById('navigation').classList.contains('sidebar-open')) {
                    addClass();
                }



                // Programmatically prevent the form from submitting.
                e.preventDefault();

                // Create a new XMLHttpRequest object and resolve the target URI.
                var request = new XMLHttpRequest(),
                    target = '/getWorldCupDetails?year=' + finalists.value;

                // Open and send a GET request to the target URI.
                request.open('GET', target);



                output.innerHTML = "";
                homeTeam.innerHTML = "";
                awayTeam.innerHTML = "";
                homeFlag.innerHTML = "";
                awayFlag.innerHTML = "";
                homeScore.innerHTML = "";
                awayScore.innerHTML = "";

                hTeamBox.style.opacity = '0';
                aTeamBox.style.opacity = '0';

                request.send();

                // Listen for changes to the XMLHttpRequest's readyState.
                request.onreadystatechange = function() {

                    // Do nothing until the request is finished.
                    if (request.readyState === DONE) {
                        a.style.display = "table";
                        b.style.display = "table";
                        // Create a div element to hold the output.
                        var div = document.createElement('div');

                        // If the request was successful, append the response.
                        // If not, append a JSON error object.
                        if (request.status === OKAY) {


                            setTimeout(function() {
                                a.style.display = "none";
                                b.style.display = "none";
                                let dataObj = JSON.parse(request.responseText);

                                homeTeam.innerHTML = dataObj[0].champion_code;
                                awayTeam.innerHTML = dataObj[0].runner_up_code;

                                homeFlag.innerHTML = "<img src='countryFlags/" + dataObj[0].champion_code + ".png'" + "class='flags'>";
                                awayFlag.innerHTML = "<img src='countryFlags/" + dataObj[0].runner_up_code + ".png'" + "class='flags'>";

                                div.innerHTML = "<div>Champion: " + dataObj[0].champion + "</div><div>Runner-up: " + dataObj[0].runner_up + "</div>";

                                homeScore.innerHTML = dataObj[0].champion_score;
                                awayScore.innerHTML = dataObj[0].runner_up_score;

                                hTeamBox.style.opacity = '1';
                                aTeamBox.style.opacity = '1';

                            }, 1000);
                        } else {
                            div.appendChild(document.createTextNode(JSON.stringify(ERROR)));
                        }

                        // Append the div to the output container.
                        output.appendChild(div);
                    }
                };
            });
        });