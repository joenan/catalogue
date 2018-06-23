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
            var c = 1440;
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



                <!--                <div id="progress">
                                    <span>0%</span>
                                    <div></div>
                                </div>-->
                <div id="header">
                    <center>
                        <b>Knowledge Skills Assessment</b>
                        <div id="timerLocation">Time Left: <h6 id="timer"></h6></div>
                    </center>

                    <center>
                        <h1><b><div>${feedback}</div></b></h1>
                    </center>
                </div>

            </header>

            <div id="form-pager">

                <form class="pure-form steps" id="quiz_form" method="post" action="${pageContext.request.contextPath}/knowledgeskills">

                    <section id="page" class="step" class="border border-primary">

                        <span>

                            <h3> 1) What does the acronym AACR2 stand for?</h3>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-A" value="A" />
                                <label for="question-1-answers-A">A) American Associations Cataloguing Requirements II </label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-B" value="B" />
                                <label for="question-1-answers-B">B) Anglo-American Cataloguing Requirements II</label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-C" value="C" />
                                <label for="question-1-answers-C">C) Anglo-American Cataloguing Rules II</label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-D" value="D" />
                                <label for="question-1-answers-D">D) Anglo-American Cataloguing</label>
                            </div>

                        </span>

                        <span>

                            <h3> 2) Which of these statements are true about AACR2: </h3>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-A" value="A" />
                                <label for="question-2-answers-A">A) Rules incorporate the ISBD specifications on the order of elements and on the punctuation that is to be included
                                    between areas and between elements of a given area.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-B" value="B" />
                                <label for="question-2-answers-B">B) The following elements are required when preparing a second-level description ? Title proper ? Parallel title ?
                                    Other title information.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-C" value="C" />
                                <label for="question-2-answers-C">C) Abbreviations are allowed in the Publication statement.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-D" value="D" />
                                <label for="question-2-answers-D">D) Only the first author in multiple author documents, will be used in the main entry all other authors will be featured
                                    in added entries.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-E" value="E" />
                                <label for="question-2-answers-E">E) 5.	All of the above.</label>
                            </div>

                        </span>

                    </section>
                    <section id="page" class="step">

                        <span>

                            <h3> 3) The Statement of International Cataloguing Principles used is to</h3>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-A" value="A" />
                                <label for="question-3-answers-A">A) Guide the development of cataloguing principles</label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-B" value="B" />
                                <label for="question-3-answers-B">B) Guide decisions that cataloguers make</label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-C" value="C" />
                                <label for="question-3-answers-C">C) To guide how datasets are created by libraries</label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-D" value="D" />
                                <label for="question-3-answers-D">D) All of the above</label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-E" value="E" />
                                <label for="question-3-answers-E">E) None of the above</label>
                            </div>


                        </span>

                        <span>

                            <h3> 4)The Resource Description and Access conceptual framework include</h3>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-A" value="A" />
                                <label for="question-4-answers-A">A) Functional Requirement for Bibliographic Records</label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-B" value="B" />
                                <label for="question-4-answers-B">B) Functional Requirement for Subject Authority Data</label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-C" value="C" />
                                <label for="question-4-answers-C">C) Functional Requirement for Authority Data</label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-D" value="D" />
                                <label for="question-4-answers-D">D) Anglo American Cataloguing Rules II</label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-E" value="E" />
                                <label for="question-4-answers-E">E) All of the above </label>
                            </div>

                        </span>
                    </section>

                    <section <section id="page3" class="step">

                            <span>

                                <h3> 5)The Resource Description and Access was first implemented in</h3>

                                <div>
                                    <input type="radio" name="question-5-answers" id="question-5-answers-A" value="A" />
                                    <label for="question-5-answers-A">A) March, 2012</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-5-answers" id="question-5-answers-B" value="B" />
                                    <label for="question-5-answers-B">B) March, 2013</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-5-answers" id="question-5-answers-C" value="C" />
                                    <label for="question-5-answers-C">C) September, 2013</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-5-answers" id="question-5-answers-D" value="D" />
                                    <label for="question-5-answers-D">D) March, 2014</label>
                                </div>
                                <div>
                                    <input type="radio" name="question-5-answers" id="question-5-answers-E" value="E" />
                                    <label for="question-5-answers-E">E) March, 2015</label>
                                </div>

                            </span>

                            <span>

                                <h3> 6) One of these library associations is not involved in publishing Resource Description and Access (RDA):</h3>

                                <div>
                                    <input type="radio" name="question-6-answers" id="question-6-answers-A" value="A" />
                                    <label for="question-6-answers-A">A) Canadian Federation of Library Associations</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-6-answers" id="question-6-answers-B" value="B" />
                                    <label for="question-6-answers-B">B) American Library Association</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-6-answers" id="question-6-answers-C" value="C" />
                                    <label for="question-6-answers-C">C) Chartered Institute of Library and Information Professionals (CILIP)</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-6-answers" id="question-6-answers-D" value="D" />
                                    <label for="question-6-answers-D">D) International Federation of Library Associations</label>
                                </div>
                                <div>
                                    <input type="radio" name="question-6-answers" id="question-6-answers-E" value="E" />
                                    <label for="question-6-answers-E">E) None of the above</label>
                                </div>

                            </span>

                        </section>
                        <section id="page4" class="step"> 

                            <span>

                                <h3> 7) Differences would be noticed between bibliographic records created in RDA from AACR2 in:</h3>

                                <div>
                                    <input type="radio" name="question-7-answers" id="question-7-answers-A" value="A" />
                                    <label for="question-7-answers-A">A) There is no longer the rule of three in RDA</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-7-answers" id="question-7-answers-B" value="B" />
                                    <label for="question-7-answers-B">B) Provision of access to contributors has changed in RDA</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-7-answers" id="question-7-answers-C" value="C" />
                                    <label for="question-7-answers-C">C) There are no more abbreviations in RDA</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-7-answers" id="question-7-answers-D" value="D" />
                                    <label for="question-7-answers-D">D) The GMD (General Materials Designate) is gone in RDA</label>
                                </div>
                                <div>
                                    <input type="radio" name="question-7-answers" id="question-7-answers-E" value="E" />
                                    <label for="question-7-answers-E">E) All of the above</label>
                                </div>

                            </span>
                            <span>

                                <h3> 8) One of the following statements is not included the problems that led to the need to change from AACR2 TO RDA</h3>

                                <div>
                                    <input type="radio" name="question-8-answers" id="question-8-answers-A" value="A" />
                                    <label for="question-8-answers-A">A) Catalogue cards are small and the physical spaces to store them are limited, so AACR2 encourages abbreviation,
                                        sometimes resulting in loss of data.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-8-answers" id="question-8-answers-B" value="B" />
                                    <label for="question-8-answers-B">B) AACR2 is book centered and print based.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-8-answers" id="question-8-answers-C" value="C" />
                                    <label for="question-8-answers-C">C) AACR2 is not appropriate for cataloguing with the web.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-8-answers" id="question-8-answers-D" value="D" />
                                    <label for="question-8-answers-D">D) AACR2 rules makes the library catalogue incompatible with the web.</label>
                                </div>
                                <div>
                                    <input type="radio" name="question-8-answers" id="question-8-answers-E" value="E" />
                                    <label for="question-8-answers-E">E) The underlying guideline of RDA follows the second International Cataloguing of representation</label>
                                </div>

                            </span>

                        </section>

                        <section id="page5" class="step"> 
                            <span>

                                <h3> 9) The International Standard Bibliographic Description (ISBD) credited to:</h3>

                                <div>
                                    <input type="radio" name="question-9-answers" id="question-9-answers-A" value="A" />
                                    <label for="question-9-answers-A">A) Canadian Federation of Library Associations.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-9-answers" id="question-9-answers-B" value="B" />
                                    <label for="question-9-answers-B">B) International Federation of Library Associations</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-9-answers" id="question-9-answers-C" value="C" />
                                    <label for="question-9-answers-C">C) American Library Association.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-9-answers" id="question-9-answers-D" value="D" />
                                    <label for="question-9-answers-D">D) Chartered Institute of Library and Information Professionals (CILIP)..</label>
                                </div>


                            </span>

                            <span>

                                <h3> 10) The ISO 2709:2008 useful for the cataloguing process as:</h3>

                                <div>
                                    <input type="radio" name="question-10-answers" id="question-10-answers-A" value="A" />
                                    <label for="question-10-answers-A">A) A format for information exchange.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-10-answers" id="question-10-answers-B" value="B" />
                                    <label for="question-10-answers-B">B) A format for the exchange of bibliographic information.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-10-answers" id="question-10-answers-C" value="C" />
                                    <label for="question-10-answers-C">C) For encoding the information on library cards.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-10-answers" id="question-10-answers-D" value="D" />
                                    <label for="question-10-answers-D">D) All of the above</label>
                                </div>


                            </span>

                        </section>
                        <section id="page6" class="step"> 

                            <span>

                                <h3> 11) Cataloguing rules as they are known today evolved from an epic of intellectual activities spanning:</h3>

                                <div>
                                    <input type="radio" name="question-11-answers" id="question-11-answers-A" value="A" />
                                    <label for="question-11-answers-A">A) 105 years..</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-11-answers" id="question-11-answers-B" value="B" />
                                    <label for="question-11-answers-B">B) 150 years..</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-11-answers" id="question-11-answers-C" value="C" />
                                    <label for="question-11-answers-C">C) 100 years.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-11-answers" id="question-11-answers-D" value="D" />
                                    <label for="question-11-answers-D">D) 40 years</label>
                                </div>


                            </span>

                            <span>

                                <h3> 12) The works of four librarianship professionals, Antonio Panizzi, Charles Cutter, S. R. Ranganathan and Seymor Lubetzky
                                    played notable roles in:</h3>

                                <div>
                                    <input type="radio" name="question-12-answers" id="question-12-answers-A" value="A" />
                                    <label for="question-12-answers-A">A) The development of cataloguing rules</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-12-answers" id="question-12-answers-B" value="B" />
                                    <label for="question-12-answers-B">B) Encouraging standardization and internationalization of cataloguing rules.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-12-answers" id="question-12-answers-C" value="C" />
                                    <label for="question-12-answers-C">C) The development the dictionary and classified catalogues.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-12-answers" id="question-12-answers-D" value="D" />
                                    <label for="question-12-answers-D">D) All of the above.</label>
                                </div>


                            </span>
                        </section>

                        <section id="page6" class="step"> 

                            <span>

                                <h3> 13) Antonnio Panizzi was responsible for one of the following:</h3>

                                <div>
                                    <input type="radio" name="question-13-answers" id="question-13-answers-A" value="A" />
                                    <label for="question-13-answers-A">A) Ninety-one cataloguing rules.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-13-answers" id="question-13-answers-B" value="B" />
                                    <label for="question-13-answers-B">B) Expansive classification.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-13-answers" id="question-13-answers-C" value="C" />
                                    <label for="question-13-answers-C">C) Code of cataloguing rules.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-13-answers" id="question-13-answers-D" value="D" />
                                    <label for="question-13-answers-D">D) Five laws of library science.</label>
                                </div>


                            </span>



                            <span>

                                <h3> 14) Charles Cutter was not responsible for one of these:</h3>

                                <div>
                                    <input type="radio" name="question-14-answers" id="question-14-answers-A" value="A" />
                                    <label for="question-14-answers-A">A) Single alphabetic listing of the catalogue.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-14-answers" id="question-14-answers-B" value="B" />
                                    <label for="question-14-answers-B">B) Author and subject index.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-14-answers" id="question-14-answers-C" value="C" />
                                    <label for="question-14-answers-C">C) Dictionary catalogue.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-14-answers" id="question-14-answers-D" value="D" />
                                    <label for="question-14-answers-D">D) Alphabetical catalogue.</label>
                                </div>


                            </span>

                        </section>
                        <section id="page7" class="step"> 

                            <span>

                                <h3> 15) S. R. Ranganathan was responsible for only one of these:</h3>

                                <div>
                                    <input type="radio" name="question-15-answers" id="question-15-answers-A" value="A" />
                                    <label for="question-15-answers-A">A) Printed catalogue.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-15-answers" id="question-15-answers-B" value="B" />
                                    <label for="question-15-answers-B">B) Colon classification system.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-15-answers" id="question-15-answers-C" value="C" />
                                    <label for="question-15-answers-C">C) Bibliographic classification.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-15-answers" id="question-15-answers-D" value="D" />
                                    <label for="question-15-answers-D">D) Cataloguing rules and principles.</label>
                                </div>


                            </span>


                            <span>

                                <h3> 16) Seymour Lubetzky was responsible for all but one of these:</h3>

                                <div>
                                    <input type="radio" name="question-16-answers" id="question-16-answers-A" value="A" />
                                    <label for="question-16-answers-A">A) Rules for descriptive cataloguing..</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-16-answers" id="question-16-answers-B" value="B" />
                                    <label for="question-16-answers-B">B) Classification with mnemonics and notations.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-16-answers" id="question-16-answers-C" value="C" />
                                    <label for="question-16-answers-C">C) Principles of cataloguing.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-16-answers" id="question-16-answers-D" value="D" />
                                    <label for="question-16-answers-D">D) Collocation of all related works..</label>
                                </div>


                            </span>
                        </section>
                        <section id="page8" class="step"> 

                            <span>

                                <h3> 17) What does FRBR stand for?:</h3>

                                <div>
                                    <input type="radio" name="question-17-answers" id="question-17-answers-A" value="A" />
                                    <label for="question-17-answers-A">A) Functional Requirements for Better Records..</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-17-answers" id="question-17-answers-B" value="B" />
                                    <label for="question-17-answers-B">B) Functional Requirements for Bibliographic Records.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-17-answers" id="question-17-answers-C" value="C" />
                                    <label for="question-17-answers-C">C) Functional Requirements for Basic Research .</label>
                                </div>

                            </span>


                            <span>

                                <h3> 18) Circulation, reference and all other services rely heavily on cataloguing for support in ensuring the discoverability,
                                    accessibility and retrievability of information content of the library:</h3>

                                <div>
                                    <input type="radio" name="question-18-answers" id="question-18-answers-A" value="A" />
                                    <label for="question-18-answers-A">A) True..</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-18-answers" id="question-18-answers-B" value="B" />
                                    <label for="question-18-answers-B">B) False </label>
                                </div>


                            </span>

                        </section>
                        <section id="page9" class="step"> 


                            <span>

                                <h3> 19) Arrange the following according to their levels: i. Canons of Cataloguing. ii. Laws of Library Science. iii. General
                                    Normative Principles. iv. Principles of Cataloguing. :</h3>

                                <div>
                                    <input type="radio" name="question-19-answers" id="question-19-answers-A" value="A" />
                                    <label for="question-19-answers-A">A) ii iv i iii.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-19-answers" id="question-19-answers-B" value="B" />
                                    <label for="question-19-answers-B">B) i iii ii iv.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-19-answers" id="question-19-answers-C" value="C" />
                                    <label for="question-19-answers-C">C) iv i iii ii .</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-19-answers" id="question-19-answers-D" value="D" />
                                    <label for="question-19-answers-D">D) iii ii i iv</label>
                                </div>


                            </span>

                            <span>

                                <h3> 20) Arrange the following in chronological order: (i) MEDLINE. (ii) Pub-Med. (iii) Index Medicus. (iv) MEDLARS :</h3>

                                <div>
                                    <input type="radio" name="question-20-answers" id="question-20-answers-A" value="A" />
                                    <label for="question-20-answers-A">A) (iii) (iv) (i) (ii)..</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-20-answers" id="question-20-answers-B" value="B" />
                                    <label for="question-20-answers-B">B) (iv) (i) (iii) (ii).</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-20-answers" id="question-20-answers-C" value="C" />
                                    <label for="question-20-answers-C">C) (i) (iii) (ii) (iv) .</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-20-answers" id="question-20-answers-D" value="D" />
                                    <label for="question-20-answers-D">D) (iii) (ii) (iv) (i)</label>
                                </div>


                            </span>




                        </section>

                        <section id="page10" class="pure-form-aligned step">
                            <span>

                                <h3> 21) Arrange the following according to their publication year: i. Sears? list of subject headings. ii. Panizzi code. iii.
                                    AACR-I. iv. CCC :</h3>

                                <div>
                                    <input type="radio" name="question-21-answers" id="question-21-answers-A" value="A" />
                                    <label for="question-21-answers-A">A) iv, ii, iii, i...</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-21-answers" id="question-21-answers-B" value="B" />
                                    <label for="question-21-answers-B">B) i, iii, ii, iv.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-21-answers" id="question-21-answers-C" value="C" />
                                    <label for="question-21-answers-C">C) ii, i, iv, iii .</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-21-answers" id="question-21-answers-D" value="D" />
                                    <label for="question-21-answers-D">D) iii, iv, i, ii</label>
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

                <center> <p>Copyright ?
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