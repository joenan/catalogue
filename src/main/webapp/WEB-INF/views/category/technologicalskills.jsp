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
            var c = 1800;
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
                        <b>Technological Skill Assessment</b>
                        <div id="timerLocation">Time Left: <h6 id="timer"></h6></div>
                    </center>

                    <center>
                        <h1><b><div>${feedback}</div></b></h1>
                    </center>
                </div>


            </header>

            <div id="form-pager">

                <form class="pure-form steps" method="post" action="${pageContext.request.contextPath}/technologicalskills">

                    <section id="page" class="step">

                        <span>

                            <h3> 1) Which of the following is not true. Resource Description and Access (RDA) is:</h3>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-A" value="A" />
                                <label for="question-1-answers-A">A)A package of data element guide lines and instructions for creating library resource metadata.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-B" value="B" />
                                <label for="question-1-answers-B">B)A package of data element guidelines and instructions for creating cultural heritage resource metadata.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-C" value="C" />
                                <label for="question-1-answers-C">C)A display standard for library metadata.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-D" value="D" />
                                <label for="question-1-answers-D">D)A guideline and instruction for cataloguing the Internet</label>
                            </div>


                        </span>

                        <span>

                            <h3> 2) RDA was developed to meet the needs of:</h3>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-A" value="A" />
                                <label for="question-2-answers-A">A)Linked data community.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-B" value="B" />
                                <label for="question-2-answers-B">B)Cultural heritage communities.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-C" value="C" />
                                <label for="question-2-answers-C">C)International communities.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-D" value="D" />
                                <label for="question-2-answers-D">D)All of the above</label>
                            </div>


                        </span>
                    </section>
                    <section id="page" class="step">

                        <span>

                            <h3> 3) The RDA entities, elements, relationship designators and vocabulary encoding schemes are represented in:</h3>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-A" value="A" />
                                <label for="question-3-answers-A">A)RDF.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-B" value="B" />
                                <label for="question-3-answers-B">B)Syntax of open linked data.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-C" value="C" />
                                <label for="question-3-answers-C">C)Semantic Web</label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-D" value="D" />
                                <label for="question-3-answers-D">D)All of the above.</label>
                            </div>


                        </span>


                        <span>

                            <h3> 4) The conceptual models FRBR and FRAD in RDA are important for all but one of these reasons:</h3>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-A" value="A" />
                                <label for="question-4-answers-A">A)They allow for a better understanding of bibliographic and authority data.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-B" value="B" />
                                <label for="question-4-answers-B">B)They identify and define bibliographic entities, their attributes and the relationship between them.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-C" value="C" />
                                <label for="question-4-answers-C">C)They relate recorded in bibliographic and authority records to the needs of users. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-D" value="D" />
                                <label for="question-4-answers-D">D)They display the bibliographic description of library materials.</label>
                            </div>


                        </span>
                    </section>
                    <section id="page" class="step">

                        <span>

                            <h3> 5) Find, identify, select and obtain (fiso) are:</h3>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-A" value="A" />
                                <label for="question-5-answers-A">A)User tasks identified in FRBR.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-B" value="B" />
                                <label for="question-5-answers-B">B)User tasks identified in FRASAR. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-C" value="C" />
                                <label for="question-5-answers-C">C)User tasks identified in FRAD.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-D" value="D" />
                                <label for="question-5-answers-D">D)User tasks identified in RDF.</label>
                            </div>


                        </span>

                        <span>

                            <h3> 6) Find, identify, contextualise and justify are:</h3>

                            <div>
                                <input type="radio" name="question-6-answers" id="question-6-answers-A" value="A" />
                                <label for="question-6-answers-A">A)User tasks identified in FRASAR.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-6-answers" id="question-6-answers-B" value="B" />
                                <label for="question-6-answers-B">B)User tasks identified in RDF. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-6-answers" id="question-6-answers-C" value="C" />
                                <label for="question-6-answers-C">C)User tasks identified in FRAR.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-6-answers" id="question-6-answers-D" value="D" />
                                <label for="question-6-answers-D">D)User tasks identified in FRAD</label>
                            </div>


                        </span>
                    </section>
                    <section id="page" class="step">

                        <span>

                            <h3> 7) Identify the correct sequence of entities in Group 1 of Functional Requirements of Bibliographic Records (FRBR): </h3>

                            <div>
                                <input type="radio" name="question-7-answers" id="question-7-answers-A" value="A" />
                                <label for="question-7-answers-A">A)Expression, Works, Items, Manifestation.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-7-answers" id="question-7-answers-B" value="B" />
                                <label for="question-7-answers-B">B)Works, Items, Expression, Manifestation.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-7-answers" id="question-7-answers-C" value="C" />
                                <label for="question-7-answers-C">C)Works, Expression, Manifestation, Items.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-7-answers" id="question-7-answers-D" value="D" />
                                <label for="question-7-answers-D">D)Works, Expression, Items, Manifestation.</label>
                            </div>


                        </span>

                        <span>

                            <h3> 8) MARC stands for:: </h3>

                            <div>
                                <input type="radio" name="question-8-answers" id="question-8-answers-A" value="A" />
                                <label for="question-8-answers-A">A)Machine Readable Catalogue.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-8-answers" id="question-8-answers-B" value="B" />
                                <label for="question-8-answers-B">B)Machine Readable Character.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-8-answers" id="question-8-answers-C" value="C" />
                                <label for="question-8-answers-C">C)Machine Readable Code.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-8-answers" id="question-8-answers-D" value="D" />
                                <label for="question-8-answers-D">D)Machine Readable Cataloguing.</label>
                            </div>


                        </span>
                    </section>
                    <section id="page" class="step">

                        <span>

                            <h3> 9) Which of the following items of MARC formats provides the call number, shelf location, volumes held by library, etc,:
                            </h3>

                            <div>
                                <input type="radio" name="question-9-answers" id="question-9-answers-A" value="A" />
                                <label for="question-9-answers-A">A)Authority records format.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-9-answers" id="question-9-answers-B" value="B" />
                                <label for="question-9-answers-B">B)Bibliographic records format.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-9-answers" id="question-9-answers-C" value="C" />
                                <label for="question-9-answers-C">C)Classification records format.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-9-answers" id="question-9-answers-D" value="D" />
                                <label for="question-9-answers-D">D)Holding records format.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-9-answers" id="question-9-answers-E" value="E" />
                                <label for="question-9-answers-D">E)Community information records format</label>
                            </div>


                        </span>

                        <span>

                            <h3> 10) MARC21 is a result of the combination of the formats of all but one of the following: </h3>

                            <div>
                                <input type="radio" name="question-10-answers" id="question-10-answers-A" value="A" />
                                <label for="question-10-answers-A">A)United States formats (USMARC).</label>
                            </div>

                            <div>
                                <input type="radio" name="question-10-answers" id="question-10-answers-B" value="B" />
                                <label for="question-10-answers-B">B)Canadian MARC formats (CANMARC).</label>
                            </div>

                            <div>
                                <input type="radio" name="question-10-answers" id="question-10-answers-C" value="C" />
                                <label for="question-10-answers-C">C)Union MARC of Europe (UNIMARC).</label>
                            </div>

                            <div>
                                <input type="radio" name="question-10-answers" id="question-10-answers-D" value="D" />
                                <label for="question-10-answers-D">D)Australian MARC (AUSIMARC).</label>
                            </div>


                        </span>
                    </section>
                    <section id="page" class="step">

                        <span>

                            <h3> 11) RDA is a content standard while MARC is a metadata transmission standard. </h3>

                            <div>
                                <input type="radio" name="question-11-answers" id="question-11-answers-A" value="A" />
                                <label for="question-11-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-11-answers" id="question-11-answers-B" value="B" />
                                <label for="question-11-answers-B">B)False</label>
                            </div>

                        </span>

                        <span>

                            <h3> 12) MARC uses ISO 2709 standard to define the structure of individual records. </h3>

                            <div>
                                <input type="radio" name="question-12-answers" id="question-12-answers-A" value="A" />
                                <label for="question-12-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-12-answers" id="question-12-answers-B" value="B" />
                                <label for="question-12-answers-B">B)False</label>
                            </div>

                        </span>

                    </section>

                    <section id="page" class="step">			

                        <span>

                            <h3> 13) When a cataloguer provides information about individual names, subjects, and uniform titles and establishes an authorized form of each heading, with references as appropriate from other forms of the heading.  The cataloguer is producing an ?..Authority record </h3>

                            <div>
                                <input type="radio" name="question-13-answers" id="question-13-answers-A" value="A" />
                                <label for="question-13-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-13-answers" id="question-13-answers-B" value="B" />
                                <label for="question-13-answers-B">B)False</label>
                            </div>

                        </span>
                        <span>

                            <h3> 14) When a cataloguer describes the intellectual and physical characteristics of bibliographic resources (books, sound recordings, video recordings, and so forth). The cataloguer would be said to have produced a?.Bibliographic record</h3>

                            <div>
                                <input type="radio" name="question-14-answers" id="question-14-answers-A" value="A" />
                                <label for="question-14-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-14-answers" id="question-14-answers-B" value="B" />
                                <label for="question-14-answers-B">B)False</label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 15) MARC records containing classification data. For example, the Library of Congress Classification has been encoded using the MARC 21 Classification format. The product is called?. Classification records  </h3>

                            <div>
                                <input type="radio" name="question-15-answers" id="question-15-answers-A" value="A" />
                                <label for="question-15-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-15-answers" id="question-15-answers-B" value="B" />
                                <label for="question-15-answers-B">B)False</label>
                            </div>

                        </span>
                        <span>

                            <h3> 16) MARC records describing a service providing agency, for example, the local post office or internet provider are called Community Information records. </h3>

                            <div>
                                <input type="radio" name="question-16-answers" id="question-16-answers-A" value="A" />
                                <label for="question-16-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-16-answers" id="question-16-answers-B" value="B" />
                                <label for="question-16-answers-B">B)False</label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 17) BIBFRAME is slated to replace MARC. </h3>

                            <div>
                                <input type="radio" name="question-17-answers" id="question-17-answers-A" value="A" />
                                <label for="question-17-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-17-answers" id="question-17-answers-B" value="B" />
                                <label for="question-17-answers-B">B)False</label>
                            </div>

                        </span>

                        <span>

                            <h3> 18) Online Public Access Catalogue (OPAC) is purposely meant for the user instead of the library staff. </h3>

                            <div>
                                <input type="radio" name="question-18-answers" id="question-18-answers-A" value="A" />
                                <label for="question-18-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-18-answers" id="question-18-answers-B" value="B" />
                                <label for="question-18-answers-B">B)False</label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">

                        <span>

                            <h3> 19) OPAC has interfaces through which the system communicates bibliographic information to users in an interactive manner.
                            </h3>

                            <div>
                                <input type="radio" name="question-19-answers" id="question-19-answers-A" value="A" />
                                <label for="question-19-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-19-answers" id="question-19-answers-B" value="B" />
                                <label for="question-19-answers-B">B)False</label>
                            </div>

                        </span>

                        <span>

                            <h3> 20) OPAC allows the user to search for information in more ways than the traditional card catalogue allows. There more
                                number of access points with little information. </h3>

                            <div>
                                <input type="radio" name="question-20-answers" id="question-20-answers-A" value="A" />
                                <label for="question-20-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-20-answers" id="question-20-answers-B" value="B" />
                                <label for="question-20-answers-B">B)False</label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">

                        <span>

                            <h3> 21) Which of the following is the primary advantage of a university library using an online cataloging system? </h3>

                            <div>
                                <input type="radio" name="question-21-answers" id="question-21-answers-A" value="A" />
                                <label for="question-21-answers-A">A)A certified librarian is no longer needed to manage the library. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-21-answers" id="question-21-answers-B" value="B" />
                                <label for="question-21-answers-B">B)Users may manage their accounts remotely.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-21-answers" id="question-21-answers-B" value="C" />
                                <label for="question-21-answers-C">C)Users?catalogue use history may be accessed.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-21-answers" id="question-21-answers-B" value="D" />
                                <label for="question-21-answers-D">D)The cataloguers are free to do other tasks. </label>
                            </div>

                        </span>

                        <span>

                            <h3> 22) Arrange the following web browsers in chronological order: (i) Safari. (ii) Chrome. (iii) Netscape Navigator. (iv)
                                Firefox. </h3>

                            <div>
                                <input type="radio" name="question-22-answers" id="question-22-answers-A" value="A" />
                                <label for="question-22-answers-A">A)(iv) (i) (ii) (iii). </label>
                            </div>

                            <div>
                                <input type="radio" name="question-22-answers" id="question-22-answers-B" value="B" />
                                <label for="question-22-answers-B">B)(i) (ii) (iii) (iv).</label>
                            </div>

                            <div>
                                <input type="radio" name="question-22-answers" id="question-22-answers-C" value="C" />
                                <label for="question-22-answers-C">C)(ii) (i) (iv) (iii).</label>
                            </div>

                            <div>
                                <input type="radio" name="question-22-answers" id="question-22-answers-D" value="D" />
                                <label for="question-22-answers-D">D)(iii) (i) (iv) (ii) </label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">

                        <span>

                            <h3> 23) The concept of Artificial Intelligence (AI) belongs to ____________________ </h3>

                            <div>
                                <input type="radio" name="question-23-answers" id="question-23-answers-A" value="A" />
                                <label for="question-23-answers-A">A) Second Generation Computers. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-23-answers" id="question-23-answers-B" value="B" />
                                <label for="question-23-answers-B">B)Third Generation Computers.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-23-answers" id="question-23-answers-C" value="C" />
                                <label for="question-23-answers-C">C)Fourth Generation Computers.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-23-answers" id="question-23-answers-D" value="D" />
                                <label for="question-23-answers-D">D)Fifth Generation Computers </label>
                            </div>

                        </span>

                        <span>

                            <h3> 24) Virtua accommodates Different version of the MARC Standard </h3>

                            <div>
                                <input type="radio" name="question-24-answers" id="question-24-answers-A" value="A" />
                                <label for="question-24-answers-A">A)USMARC. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-24-answers" id="question-24-answers-B" value="B" />
                                <label for="question-24-answers-B">B)UKMARC.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-24-answers" id="question-24-answers-C" value="C" />
                                <label for="question-24-answers-C">C)CANMARC</label>
                            </div>

                            <div>
                                <input type="radio" name="question-24-answers" id="question-24-answers-D" value="D" />
                                <label for="question-24-answers-D">D)SWEMARC/All of above</label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 25) Which one is E-Bibliographic database? </h3>

                            <div>
                                <input type="radio" name="question-25-answers" id="question-25-answers-A" value="A" />
                                <label for="question-25-answers-A">A)Nature. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-25-answers" id="question-25-answers-B" value="B" />
                                <label for="question-25-answers-B">B)Blackwell</label>
                            </div>

                            <div>
                                <input type="radio" name="question-25-answers" id="question-25-answers-C" value="C" />
                                <label for="question-25-answers-C">C)ISID</label>
                            </div>

                            <div>
                                <input type="radio" name="question-25-answers" id="question-25-answers-D" value="D" />
                                <label for="question-25-answers-D">D)Springer</label>
                            </div>

                        </span>
                        <span>

                            <h3> 26) Familiar with terminology and basic structure of the Internet and of the World Wide Web (websites, webpages, etc.) ? Familiar with internet connection procedures and methods including LAN and WiFi connections as well as troubleshooting procedures ? Access Web content using common browsers and understand URLs, including entering a URL ? Change the default home page ? Clear temporary Internet files and clear history ? Find specific text in web pages ? Download and save files from the Internet including video, audio, and images ? Demonstrate familiarity with Web-based applications (in the ?cloud?) versus desktop applications ? Print from web page ? Know common plug-ins such as Acrobat, Flash. These are basic competencies required for using web technology for the cataloguing process.  </h3>

                            <div>
                                <input type="radio" name="question-26-answers" id="question-26-answers-A" value="A" />
                                <label for="question-26-answers-A">A)True </label>
                            </div>

                            <div>
                                <input type="radio" name="question-26-answers" id="question-26-answers-B" value="B" />
                                <label for="question-26-answers-B">B)False</label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 27) MySpace, FaceBook, Del.icio.us, Frappr, and Flickr are networks that have enjoyed massive popularity in Web 2.0. They are not social media sites.</h3>

                            <div>
                                <input type="radio" name="question-27-answers" id="question-27-answers-A" value="A" />
                                <label for="question-27-answers-A">A)True </label>
                            </div>

                            <div>
                                <input type="radio" name="question-27-answers" id="question-27-answers-B" value="B" />
                                <label for="question-27-answers-B">B)False</label>
                            </div>

                        </span>
                        <span>

                            <h3> 28) End users access cloud based applications through a web browser or a light weight desktop or mobile app while the business software and data are stored on servers at a remote location.</h3>

                            <div>
                                <input type="radio" name="question-28-answers" id="question-28-answers-A" value="A" />
                                <label for="question-28-answers-A">A)True </label>
                            </div>

                            <div>
                                <input type="radio" name="question-28-answers" id="question-28-answers-B" value="B" />
                                <label for="question-28-answers-B">B)False</label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 29) ?Understands terminology and functions of basic computer (CPU, monitor, keyboard, mouse memory, hard drive, server, operating system, cloud storage, USB) Turn a computer on and off correctly . Use mouse, keyboard, and function keys . Recognize important of backing up files and how to do so . Disconnect and reconnect cables, cords and connections .Understands basic printer functions and troubleshooting procedures, including adding paper, replacing ink/toner cartridge, and clearing paper jams.? This is a typical:</h3>

                            <div>
                                <input type="radio" name="question-29-answers" id="question-29-answers-A" value="A" />
                                <label for="question-29-answers-A">A)Basic Computer Hardware and Peripherals Knowledge and Skills required by a cataloguer</label>
                            </div>

                            <div>
                                <input type="radio" name="question-29-answers" id="question-29-answers-B" value="B" />
                                <label for="question-29-answers-B">B)Expert Computer Hardware and Peripherals Knowledge and Skills required by a cataloguer</label>
                            </div>

                            <div>
                                <input type="radio" name="question-29-answers" id="question-29-answers-C" value="C" />
                                <label for="question-29-answers-C">C)Advanced  computer Hardware and Peripherals Knowledge and Skills required by a cataloguer</label>
                            </div>

                        </span>
                        <span>

                            <h3> 30)? Open and close applications correctly ? Open and save files to network shared drive(s) ? Locate and use tutorials or help ? Move between documents and windows ? Print all or part of a document ? Able to cut, copy and paste. These are software skills required for cataloguing. </h3>

                            <div>
                                <input type="radio" name="question-30-answers" id="question-30-answers-A" value="A" />
                                <label for="question-30-answers-A">A)True </label>
                            </div>

                            <div>
                                <input type="radio" name="question-30-answers" id="question-30-answers-B" value="B" />
                                <label for="question-30-answers-B">B)False</label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 31) ? Perform keyword, author, and title searches ? Use advanced search strategies such as ISBN, format, etc. ? Limit, restrict, expand, and sort searches ? Determine due date, status, and location of items in the collection ?  Find and use other library catalogs ? Demonstrates a basic understanding of metadata schema. These are skills that must be acquired by cataloguers</h3>

                            <div>
                                <input type="radio" name="question-31-answers" id="question-31-answers-A" value="A" />
                                <label for="question-31-answers-A">A)True </label>
                            </div>

                            <div>
                                <input type="radio" name="question-31-answers" id="question-31-answers-B" value="B" />
                                <label for="question-31-answers-B">B)False</label>
                            </div>

                        </span>
                        <span>

                            <h3> 32) Web Page Creation and Maintenance ? Create a basic web page using library?s web page software ? Update existing web page using library?s web page software ? Obtain/renew domain name ? Use HTML, CSS, scripting, and database enabling to create and update web pages. These are:</h3>

                            <div>
                                <input type="radio" name="question-32-answers" id="question-32-answers-A" value="A" />
                                <label for="question-32-answers-A">A)Basic Knowledge and Skills required by a cataloguer</label>
                            </div>

                            <div>
                                <input type="radio" name="question-32-answers" id="question-32-answers-B" value="B" />
                                <label for="question-32-answers-B">B)Expert  Knowledge and Skills required by a cataloguer</label>
                            </div>
                            <div>
                                <input type="radio" name="question-32-answers" id="question-32-answers-C" value="C" />
                                <label for="question-32-answers-C">C)Advanced Knowledge and Skills required by a cataloguer </label>
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