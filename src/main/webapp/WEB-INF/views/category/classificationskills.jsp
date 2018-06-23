<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>


        <meta name="viewport" content="width=device-width">

        <script>/*! no-js uglified | https://gist.github.com/mhulse/4704893 */!function (e) {
                e.documentElement.className = e.documentElement.className.replace(/\bno-js\b/, "js")
            }(document);</script>

        <title>Cataloguer Competency Based Assessment</title>
        <meta name="description" content="">
        <meta name="keywords" content="">


        <link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/form-pager.css" />" rel="stylesheet">

        <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap-grid.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap-grid.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap-reboot.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap-reboot.min.css" />" rel="stylesheet">

        <script src="<c:url value="/resources/js/bootstrap.bundle.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.bundle.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
        <script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>


        <script>
            //define your time in second
            var c = 600;
            //var c = 5;
            var t;
            timedCount();

            function timedCount()
            {

                var hours = parseInt(c / 3600) % 24;
                var minutes = parseInt(c / 60) % 60;
                var seconds = c % 60;

                var result = (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes) + ":" + (seconds < 10 ? "0" + seconds : seconds);


                $('#timer').html(result);
                if (c == 0)
                {
                    //setConfirmUnload(false);
                    $("#quiz_form").submit();
                    //window.location="logout.html";
                }
                c = c - 1;
                t = setTimeout(function ()
                {
                    timedCount()
                },
                        1000);
            }
        </script>



        <style>
            h3{
                font-size:13px;
            }
            .pure-button {
                color: #fff;
                background-color: #007bff;
                border-color: #007bff;

            }

            span {
                position: relative;
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-orient: vertical;
                -webkit-box-direction: normal;
                -ms-flex-direction: column;
                flex-direction: column;
                min-width: 0;
                word-wrap: break-word;
                background-color: #cce5ff;
                background-clip: border-box;
                border: 1px solid rgba(0, 0, 0, 0.125);
                border-radius: 0.25rem;
                margin-top: 10px;

            }
            h3 {
                font-weight: bold;
                font-size: 16px;
                color: #000;
            }
            #header {
                border-style: dotted;
                border-color: coral;

            }
            #timer {
                margin-top: -22px;
                margin-left: 150px;
            }
            #timerLocation {
                margin-top: -21px;
                margin-left: 500px;
            }


        </style>


    </head>

    <body>

        <main role="main">

            <header role="banner">

                <div id="header">
                    <center>
                        <b>Classification Skills Assessment</b>
                        <div id="timerLocation">Time Left: <h6 id="timer"></h6></div>
                    </center>

                    <center>
                        <h1><b><div>${feedback}</div></b></h1>
                    </center>
                </div>


            </header>

            <div id="form-pager">

                <form class="pure-form steps" id="quiz_form" method="post" action="${pageContext.request.contextPath}/classificationskills">
                    <section id="page" class="step">
                        <span>

                            <h3> 1) Authority control is a process of organizing bibliographic information in library catalogues. One of the statements
                                mentioned is not included in the process::</h3>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-A" value="A" />
                                <label for="question-1-answers-A">A) The use of distinct spelling of author names.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-B" value="B" />
                                <label for="question-1-answers-B">B) The use of numeric identifiers for specific topics.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-C" value="C" />
                                <label for="question-1-answers-C">C) The description of each controlled entry in an authority record </label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-D" value="D" />
                                <label for="question-1-answers-D">D) Showing what material a library has</label>
                            </div>


                        </span>


                        <span>

                            <h3> 2) All of the following except one are examples of authority control</h3>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-A" value="A" />
                                <label for="question-2-answers-A">A) Controlled vocabulary.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-B" value="B" />
                                <label for="question-2-answers-B">B) Bibliographic control.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-C" value="C" />
                                <label for="question-2-answers-C">C) Establishment of uniform titles used in collocating materials </label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-D" value="D" />
                                <label for="question-2-answers-D">D) Cataloguing control</label>
                            </div>


                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 3) Authority control is beneficial for:</h3>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-A" value="A" />
                                <label for="question-3-answers-A">A) Making catalogue easier to maintain.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-B" value="B" />
                                <label for="question-3-answers-B">B) Making search more predictable.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-C" value="C" />
                                <label for="question-3-answers-C">C) Keeping records consistent </label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-D" value="D" />
                                <label for="question-3-answers-D">D) Purchasing materials for the library</label>
                            </div>


                        </span>

                        <span>

                            <h3> 4) Controlled vocabularies are used to solve one of the following problems while organizing information:</h3>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-A" value="A" />
                                <label for="question-4-answers-A">A) Problems of homographs, synonyms, and polysemes.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-B" value="B" />
                                <label for="question-4-answers-B">B) Problem of broader terms.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-C" value="C" />
                                <label for="question-4-answers-C">C) Problem of narrow terms </label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-D" value="D" />
                                <label for="question-4-answers-D">D) None of the above</label>
                            </div>


                        </span>
                    </section>
                    <section id="page" class="step">

                        <span>

                            <h3> 5) Controlled vocabularies are used in all but one of the following</h3>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-A" value="A" />
                                <label for="question-5-answers-A">A) Subject indexing .</label>
                            </div>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-B" value="B" />
                                <label for="question-5-answers-B">B) Subject headings</label>
                            </div>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-C" value="C" />
                                <label for="question-5-answers-C">C) Thesauri </label>
                            </div>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-D" value="D" />
                                <label for="question-5-answers-D">D) Directories</label>
                            </div>


                        </span>

                        <span>

                            <h3> 6) Controlled vocabulary is used to:</h3>

                            <div>
                                <input type="radio" name="question-6-answers" id="question-6-answers-A" value="A" />
                                <label for="question-64-answers-A">A) return the most recent search results first.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-6-answers" id="question-6-answers-B" value="B" />
                                <label for="question-6-answers-B">B) allow the user to search using Boolean operators. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-6-answers" id="question-6-answers-C" value="C" />
                                <label for="question-6-answers-C">C) make searching more efficient. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-6-answers" id="question-6-answers-D" value="D" />
                                <label for="question-6-answers-D">D) keep cataloging records consistent. </label>
                            </div>


                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 7) Authority control, the development and making accurate access points are crucial to effective service and accessibility
                                to information.</h3>

                            <div>
                                <input type="radio" name="question-7-answers" id="question-7-answers-A" value="A" />
                                <label for="question-7-answers-A">A) True.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-7-answers" id="question-7-answers-B" value="B" />
                                <label for="question-7-answers-B">B) False.</label>
                            </div>

                        </span>

                        <span>

                            <h3> 8) The call number of a book </h3>

                            <div>
                                <input type="radio" name="question-8-answers" id="question-8-answers-A" value="A" />
                                <label for="question-66-answers-A">A) enables a user find a book on the shelves</label>
                            </div>

                            <div>
                                <input type="radio" name="question-8-answers" id="question-8-answers-B" value="B" />
                                <label for="question-8-answers-B">B) Used to keep materials in order on shelves </label>
                            </div>

                            <div>
                                <input type="radio" name="question-8-answers" id="question-8-answers-C" value="C" />
                                <label for="question-8-answers-C">C) Is found in the online catalog </label>
                            </div>

                            <div>
                                <input type="radio" name="question-8-answers" id="question-8-answers-D" value="D" />
                                <label for="question-8-answers-D">D) All of the above </label>
                            </div>


                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 9) ? If a book is cataloged and it contains census information published by the government of Ceylon: The corporate author entry will be Ceylon. But the subject heading will be Sri Lanka. This seems confusing but it is really useful if one wants books on a particular country and does not know all the previous names of the country.? This statement depicts how catalogers treat geographic entities such as countries whose names have changed over time. </h3>

                            <div>
                                <input type="radio" name="question-9-answers" id="question-9-answers-A" value="A" />
                                <label for="question-9-answers-A">A) True.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-9-answers" id="question-9-answers-B" value="B" />
                                <label for="question-9-answers-B">B) False. </label>
                            </div>

                        </span>
                        <span>
                            <h3> 10) ?The heading Malaysia is used for works on the entire nation. The heading Malaya is used for works discussing the area corresponding to the former jurisdiction Malaya, even though there is no longer any jurisdiction corresponding to that area.A cataloger with a book on Iron Age Germany, would assign the subject heading Germany even though Germany did not exist until the 19th century. Headings for the various jurisdictions that preceded the formation of Germany are used for works discussing those areas individually.? These two scenarios depict a situation where jurisdictions can be merge or split . For mergers, the cataloger tries to use the latest form of name, unless the book is only about a specific area which was a valid jurisdiction.</h3>

                            <div>
                                <input type="radio" name="question-10-answers" id="question-10-answers-A" value="A" />
                                <label for="question-10-answers-A">A) True.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-10-answers" id="question-10-answers-B" value="B" />
                                <label for="question-10-answers-B">B) False. </label>
                            </div>

                        </span>
                    </section>
                     <section id="page" class="step">
                        <span>
                            <h3> 11) ?Germany (East)? is the scope note attached the heading used for works on the eastern part of Germany before 1949; the Russian occupation zone; the German Democratic Republic from 1949-1990; or the eastern part of reunified Germany since 1990. </h3>

                            <div>
                                <input type="radio" name="question-11-answers" id="question-11-answers-A" value="A" />
                                <label for="question-11-answers-A">A) True.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-11-answers" id="question-11-answers-B" value="B" />
                                <label for="question-11-answers-B">B) False. </label>
                            </div>

                        </span>



                    </section>



                    <footer class="steps-nav">

                        <button type="button" class="prev pure-button">Previous</button>
                        <button type="button" class="next pure-button">Next</button>
                        <button type="submit" class="submit pure-button">Submit</button>

                    </footer>

                </form>

            </div>

            <footer role="contentinfo">
                <center>
                    <p>Copyright ?
                        <a href="#">NandomGusen</a> 2018. All rights reserved.</p>
                </center>
            </footer>

        </main>

        <script>

            function age(rule) {

                var result = 'hide';

                if ($(this).val() >= 50) {

                    result = 'show';

                }

                return result;

            }

        </script>

        <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
        <script src="<c:url value="/resources/js/jquery.validate.js" />"></script>
        <script src="<c:url value="/resources/js/form-pager.js" />"></script>


    </body>

</html>