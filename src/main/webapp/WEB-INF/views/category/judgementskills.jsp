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
            var c = 540;
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
                        <b>Judgement Skills Assessment</b>
                        <div id="timerLocation">Time Left: <h6 id="timer"></h6></div>
                    </center>

                    <center>
                        <h1><b><div>${feedback}</div></b></h1>
                    </center>
                </div>


            </header>

            <div id="form-pager">

                <form class="pure-form steps" id="quiz_form" method="post" action="${pageContext.request.contextPath}/judgementskills">

                    <section id="page" class="step">


                        <span>
                            <h3> 1) Assertion A: ?Name Authority File? should be used in a library. Reason R: All works of an author should be collocated.</h3>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-A" value="A" />
                                <label for="question-1-answers-A">A)A is true, but R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-B" value="B" />
                                <label for="question-1-answers-B">B)Both A and R true and R is the correct explanation of A</label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-C" value="C" />
                                <label for="question-1-answers-C">C)A is false, but R is true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-D" value="D" />
                                <label for="question-1-answers-D">D)Both A and R are false</label>
                            </div>
                        </span>
                        <span>
                            <h3> 2) Assertion A: Modern Integrated Library Management Softwares offer user friendly Graphical User Interfaces (GUI) on
                                the web. Reason R: Almost every module of modern Integrated Library Management Software is accessible through the
                                internet. </h3>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-A" value="A" />
                                <label for="question-2-answers-A">A)Both A and R are correct.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-B" value="B" />
                                <label for="question-2-answers-B">B)is correct but R is wrong.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-C" value="C" />
                                <label for="question-2-answers-C">C)Both A and R are wrong.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-D" value="D" />
                                <label for="question-2-answers-D">D)A is wrong but R is correct.</label>
                            </div>
                        </span>

                    </section>
                    <section id="page" class="step">


                        <span>
                            <h3> 3) Assertion A: Classification plays a significant role in online retrieval. Reason R: Classification played an important
                                role in manual system. </h3>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-A" value="A" />
                                <label for="question-3-answers-A">A)A is true, but R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-B" value="B" />
                                <label for="question-3-answers-B">B)Both A and R are false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-C" value="C" />
                                <label for="question-3-answers-C">C)Both A and R are true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-D" value="D" />
                                <label for="question-3-answers-D">D)A is false, but R is true</label>
                            </div>
                        </span>
                        <span>
                            <h3> 4) Assertion A: Abstracting services facilitate literature review. Reason R: Literature review summarises major findings
                                of various studies. </h3>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-A" value="A" />
                                <label for="question-4-answers-A">A)A is true, but R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-B" value="B" />
                                <label for="question-4-answers-B">B)A is false, but R is true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-C" value="C" />
                                <label for="question-4-answers-C">C)Both A and R are true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-D" value="D" />
                                <label for="question-4-answers-D">D)Both A and R are false.</label>
                            </div>
                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>
                            <h3> 5) Assertion A: Colon classification is an enumerative classification scheme. Reason R: Colon classification has adopted
                                analytico-synthetic approach for the construction of class number. </h3>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-A" value="A" />
                                <label for="question-5-answers-A">A)A is false, but R is true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-B" value="B" />
                                <label for="question-5-answers-B">B)A is true, but R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-C" value="C" />
                                <label for="question-5-answers-C">C)Both A and R are true.Both A and R are true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-D" value="D" />
                                <label for="question-5-answers-D">D)Both A and R are false.</label>
                            </div>
                        </span>

                        <span>
                            <h3> 6) Assertion A: An indexing language is an artificial language and it uses controlled vocabulary. Reason R: Controlled
                                vocabulary provides relation between and among terms. </h3>

                            <div>
                                <input type="radio" name="question-6-answers" id="question-6-answers-A" value="A" />
                                <label for="question-6-answers-A">A)Both A and R are true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-6-answers" id="question-6-answers-B" value="B" />
                                <label for="question-6-answers-B">B)A is true, but R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-6-answers" id="question-6-answers-C" value="C" />
                                <label for="question-6-answers-C">C)A is false, but R is true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-6-answers" id="question-6-answers-D" value="D" />
                                <label for="question-6-answers-D">D)Both A and R are false.</label>
                            </div>
                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>
                            <h3> 7) Assertion A: Metadata hold much promise for information retrieval and access in the digital age. Reason R: Metadata
                                can save a number of functions including description, resource discovery and management of resources. </h3>

                            <div>
                                <input type="radio" name="question-7-answers" id="question-7-answers-A" value="A" />
                                <label for="question-7-answers-A">A)A is true, but R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-7-answers" id="question-7-answers-B" value="B" />
                                <label for="question-7-answers-B">B)A is false, but R is true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-7-answers" id="question-7-answers-C" value="C" />
                                <label for="question-7-answers-C">C)Both A and R are true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-7-answers" id="question-7-answers-D" value="D" />
                                <label for="question-7-answers-D">D)Both A and R are false.</label>
                            </div>
                        </span>
                        <span>
                            <h3> 8) Assertion A: A combination of hypertext and Hypermedia contains text, images, sounds and other information. Reason
                                R: Hypermedia information is represented in a linear fashion. </h3>

                            <div>
                                <input type="radio" name="question-8-answers" id="question-8-answers-A" value="A" />
                                <label for="question-8-answers-A">A)A is true and R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-8-answers" id="question-8-answers-B" value="B" />
                                <label for="question-8-answers-B">B)Both A and R are true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-8-answers" id="question-8-answers-C" value="C" />
                                <label for="question-8-answers-C">C)A is false and R is true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-8-answers" id="question-8-answers-D" value="D" />
                                <label for="question-8-answers-D">D)Both A and R are false.</label>
                            </div>
                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>
                            <h3> 9) Assertion A: RDF supports the use and exchange of metadata on the web. Reason R: Bibliographic standards are the means
                                to create and disseminate secondary information. </h3>

                            <div>
                                <input type="radio" name="question-9-answers" id="question-9-answers-A" value="A" />
                                <label for="question-9-answers-A">A)A is true, R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-9-answers" id="question-9-answers-B" value="B" />
                                <label for="question-5-answers-B">B)A is false, R is true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-9-answers" id="question-9-answers-C" value="C" />
                                <label for="question-9-answers-C">C)Both A and R are correct.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-9-answers" id="question-9-answers-D" value="D" />
                                <label for="question-9-answers-D">D)Both A and R are false</label>
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