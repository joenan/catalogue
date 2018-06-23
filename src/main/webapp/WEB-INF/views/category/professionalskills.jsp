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
                        <b>Professional|Subject Analysis Assessment</b>
                        <div id="timerLocation">Time Left: <h6 id="timer"></h6></div>
                    </center>

                    <center>
                        <h1><b><div>${feedback}</div></b></h1>
                    </center>
                </div>


            </header>

            <div id="form-pager">

                <form class="pure-form steps" id="quiz_form" method="post" action="${pageContext.request.contextPath}/professionalskills">
                    <section id="page" class="step">
                        <span>

                            <h3> 1) Cataloguing workflow is important for all but one of the following reasons:</h3>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-A" value="A" />
                                <label for="question-1-answers-A">A) It facilitates the understanding of the process involved in cataloguing.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-B" value="B" />
                                <label for="question-1-answers-B">B) It ensures that every material is processed before it leaves the department. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-C" value="C" />
                                <label for="question-1-answers-C">C) It shows various stages of cataloguing at a glance and speeds up work</label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-D" value="D" />
                                <label for="question-1-answers-D">D) It does not allow the reassignment of the cataloguing process.</label>
                            </div>

                        </span>




                        <span>

                            <h3> 2) Which of the following will be most helpful to a cataloguer while entering bibliographic and descriptive data into
                                the library?s catalog system?</h3>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-A" value="A" />
                                <label for="question-23-answers-A">A) The work?s title page</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-B" value="B" />
                                <label for="question-23-answers-B">B) AACR2</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-C" value="C" />
                                <label for="question-2-answers-C">C) CIP </label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-D" value="D" />
                                <label for="question-2-answers-D">D) Sears List of Subject Headings</label>
                            </div>


                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 3) When transcribing multiple statements of responsibility, what punctuation do we use to separate each name and area
                                of responsibility?</h3>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-A" value="A" />
                                <label for="question-3-answers-A">A) Comma. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-B" value="B" />
                                <label for="question-3-answers-B">B) Semi-colon</label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-C" value="C" />
                                <label for="question-3-answers-C">C) Full stop </label>
                            </div>



                        </span>

                        <span>

                            <h3> 4) The ?Choice of Access Points? is discussed in which of the following chapters of AACR2:</h3>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-A" value="A" />
                                <label for="question-25-answers-A">A) Chapter 21</label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-B" value="B" />
                                <label for="question-4-answers-B">B) Chapter 25</label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-C" value="C" />
                                <label for="question-4-answers-C">C) Chapter 5 </label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-D" value="D" />
                                <label for="question-4-answers-D">D) Chapter 27</label>
                            </div>


                        </span>
                    </section>
                    <section id="page" class="step">

                        <span>

                            <h3> 5) Geographical name is discussed in AACR2 in one of the following chapters:</h3>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-A" value="A" />
                                <label for="question-5-answers-A">A) Chapter 25</label>
                            </div>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-B" value="B" />
                                <label for="question-5-answers-B">B) Chapter 23</label>
                            </div>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-C" value="C" />
                                <label for="question-5-answers-C">C) Chapter 26 </label>
                            </div>

                            <div>
                                <input type="radio" name="question-5-answers" id="question-5-answers-D" value="D" />
                                <label for="question-5-answers-D">D) Chapter 22</label>
                            </div>


                        </span>
                        <span>

                            <h3> 6) When there are many authors,the title of an item is selected as the main entry</h3>

                            <div>
                                <input type="radio" name="question-6-answers" id="question-6-answers-A" value="A" />
                                <label for="question-6-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-6-answers" id="question-6-answers-B" value="B" />
                                <label for="question-6-answers-B">B) False </label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 7) The 3 functions of bibliographic tools are not identify, gather/collocate and evaluate</h3>

                            <div>
                                <input type="radio" name="question-7-answers" id="question-7-answers-A" value="A" />
                                <label for="question-7-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-7-answers" id="question-7-answers-B" value="B" />
                                <label for="question-7-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 8) Main entry or main access point is not an identification of the person chiefly responsible for the intellectual content of a work.</h3>

                            <div>
                                <input type="radio" name="question-8-answers" id="question-8-answers-A" value="A" />
                                <label for="question-8-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-8-answers" id="question-8-answers-B" value="B" />
                                <label for="question-8-answers-B">B) False </label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 9) The  components to a library catalog are Shelf list, OPAC and authority files</h3>

                            <div>
                                <input type="radio" name="question-9-answers" id="question-9-answers-A" value="A" />
                                <label for="question-9-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-9-answers" id="question-9-answers-B" value="B" />
                                <label for="question-9-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 10) Editors are never named as the main entry because they are not creators of works.</h3>

                            <div>
                                <input type="radio" name="question-10-answers" id="question-10-answers-A" value="A" />
                                <label for="question-10-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-10-answers" id="question-10-answers-B" value="B" />
                                <label for="question-10-answers-B">B) False </label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 11) Materials catalogued according to the subject matter that has been classified are called?. Subject Matter or Type Cataloguing Systems.</h3>

                            <div>
                                <input type="radio" name="question-11-answers" id="question-11-answers-A" value="A" />
                                <label for="question-11-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-11-answers" id="question-11-answers-B" value="B" />
                                <label for="question-11-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 12) Cataloguing that is carried out specific to a country using its own traditional heritage is called National Cataloguing Sytems.</h3>

                            <div>
                                <input type="radio" name="question-12-answers" id="question-12-answers-A" value="A" />
                                <label for="question-12-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-12-answers" id="question-12-answers-B" value="B" />
                                <label for="question-12-answers-B">B) False </label>
                            </div>

                        </span>
                    </section>

                    <section id="page" class="step">
                        <span>

                            <h3> 13) Cataloguing that lists items according to the media they are used on or for other specific functions is called Functional cataloguing systems.</h3>

                            <div>
                                <input type="radio" name="question-13-answers" id="question-13-answers-A" value="A" />
                                <label for="question-13-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-13-answers" id="question-13-answers-B" value="B" />
                                <label for="question-13-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 14) The  catalog organized by the last name of the author is known as the author catalogrue.</h3>

                            <div>
                                <input type="radio" name="question-14-answers" id="question-14-answers-A" value="A" />
                                <label for="question-14-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-14-answers" id="question-14-answers-B" value="B" />
                                <label for="question-14-answers-B">B) False </label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 15) The catalog that is organized by the title of the materials is known as the title card catalog.</h3>

                            <div>
                                <input type="radio" name="question-15-answers" id="question-15-answers-A" value="A" />
                                <label for="question-15-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-15-answers" id="question-15-answers-B" value="B" />
                                <label for="question-15-answers-B">B) False </label>
                            </div>
                        </span>

                            <span>

                                <h3> 16) The library often has a catalog that it often uses for organization but is not make available to the public. It combines all title, author and subject cards to provide a complete inventory of what the library has on its shelves. It is organized by the location of the books and other materials in the library. It is not a shelf list.</h3>

                                <div>
                                    <input type="radio" name="question-16-answers" id="question-16-answers-A" value="A" />
                                    <label for="question-16-answers-A">A) True. </label>
                                </div>

                                <div>
                                    <input type="radio" name="question-16-answers" id="question-16-answers-B" value="B" />
                                    <label for="question-16-answers-B">B) False </label>
                                </div>

                            </span>
                    </section>

                    <section id="page" class="step">
                        <span>

                            <h3> 17) University libraries may also have specialized catalogs that are arranged by subject. They are created for large holdings of music, scientific research and other special collections. They allow librarians to help patrons locate specific books, CDs and other multimedia for research purposes. They are not Specialized shelf list catalogs.</h3>

                            <div>
                                <input type="radio" name="question-17-answers" id="question-17-answers-A" value="A" />
                                <label for="question-17-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-17-answers" id="question-17-answers-B" value="B" />
                                <label for="question-17-answers-B">B) False </label>
                            </div>

                        </span>

                        <span>

                            <h3> 18) In times of poor funding the library uses all except one of the following to increase cataloguing productivity:</h3>

                            <div>
                                <input type="radio" name="question-18-answers" id="question-18-answers-A" value="A" />
                                <label for="question-18-answers-A">A) Limited cataloguing</label>
                            </div>

                            <div>
                                <input type="radio" name="question-18-answers" id="question-18-answers-B" value="B" />
                                <label for="question-18-answers-B">B) Shared cataloguing.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-18-answers" id="question-18-answers-C" value="C" />
                                <label for="question-18-answers-C">C) Minimal level cataloguing </label>
                            </div>

                            <div>
                                <input type="radio" name="question-18-answers" id="question-18-answers-D" value="D" />
                                <label for="question-18-answers-D">D) Original cataloguing</label>
                            </div>


                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 19) The purpose of uniform titles is to:</h3>

                            <div>
                                <input type="radio" name="question-19-answers" id="question-19-answers-A" value="A" />
                                <label for="question-19-answers-A">A)Bring together all catalogue entries for a work when various manifestations (e.g., editions, translations) of it have appeared under various titles and organize the file. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-19-answers" id="question-19-answers-B" value="B" />
                                <label for="question-19-answers-B">B)Identify a work when the title by which it is known differs from the title proper of the item being catalogued; differentiate between two or more works published under identical titles proper.</label>
                            </div>
                            <div>
                                <input type="radio" name="question-19-answers" id="question-19-answers-C" value="C" />
                                <label for="question-19-answers-C">C)All of the above. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-19-answers" id="question-19-answers-D" value="D" />
                                <label for="question-19-answers-D">D)None of the above</label>
                            </div>

                        </span>
                        <span>

                            <h3> 20) Minimal level cataloguing is generally used only for resources of little research value and back logs.</h3>

                            <div>
                                <input type="radio" name="question-20-answers" id="question-20-answers-A" value="A" />
                                <label for="question-20-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-20-answers" id="question-20-answers-B" value="B" />
                                <label for="question-20-answers-B">B) False </label>
                            </div>

                        </span>
                    </section>

                    <section id="page" class="step">
                        <span>

                            <h3> 21) Libraries resort to copy cataloguing when a matching existing cataloging record (bibliographic record) for an item can be found.</h3>

                            <div>
                                <input type="radio" name="question-21-answers" id="question-21-answers-A" value="A" />
                                <label for="question-21-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-21-answers" id="question-21-answers-B" value="B" />
                                <label for="question-21-answers-B">B) False </label>
                            </div>

                        </span>

                        <span>

                            <h3> 22) When copy catalog information is not available for an item the cataloguing department resort to original cataloguing.</h3>

                            <div>
                                <input type="radio" name="question-22-answers" id="question-22-answers-A" value="A" />
                                <label for="question-22-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-22-answers" id="question-22-answers-B" value="B" />
                                <label for="question-22-answers-B">B) False </label>
                            </div>

                        </span>
                    </section>

                    <section id="page" class="step">
                        <span>

                            <h3> 23) Limited level cataloging is provided for all foreign language materials</h3>

                            <div>
                                <input type="radio" name="question-23-answers" id="question-23-answers-A" value="A" />
                                <label for="question-23-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-23-answers" id="question-23-answers-B" value="B" />
                                <label for="question-23-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 24) In ISBD, when is this symbol [] is used, information is not available in the proper place. </h3>

                            <div>
                                <input type="radio" name="question-24-answers" id="question-24-answers-A" value="A" />
                                <label for="question-24-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-24-answers" id="question-24-answers-B" value="B" />
                                <label for="question-24-answers-B">B) False </label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 25) cmp    stands for  Composer  </h3>

                            <div>
                                <input type="radio" name="question-25-answers" id="question-25-answers-A" value="A" />
                                <label for="question-25-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-25-answers" id="question-25-answers-B" value="B" />
                                <label for="question-25-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 26) cnd  stands for Conductor </h3>

                            <div>
                                <input type="radio" name="question-26-answers" id="question-26-answers-A" value="A" />
                                <label for="question-26-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-26-answers" id="question-26-answers-B" value="B" />
                                <label for="question-26-answers-B">B) False </label>
                            </div>

                        </span>
                    </section>

                    <section id="page" class="step">
                        <span>

                            <h3> 27) ctg  stands for  Cartographer </h3>

                            <div>
                                <input type="radio" name="question-27-answers" id="question-27-answers-A" value="A" />
                                <label for="question-27-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-27-answers" id="question-27-answers-B" value="B" />
                                <label for="question-27-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 28) drt  stands for Director</h3>

                            <div>
                                <input type="radio" name="question-28-answers" id="question-28-answers-A" value="A" />
                                <label for="question-28-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-28-answers" id="question-28-answers-B" value="B" />
                                <label for="question-28-answers-B">B) False </label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 29) ill  stands for Illustrator </h3>

                            <div>
                                <input type="radio" name="question-29-answers" id="question-29-answers-A" value="A" />
                                <label for="question-29-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-29-answers" id="question-29-answers-B" value="B" />
                                <label for="question-29-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 30) mus  stands for Musician </h3>

                            <div>
                                <input type="radio" name="question-30-answers" id="question-30-answers-A" value="A" />
                                <label for="question-30-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-30-answers" id="question-30-answers-B" value="B" />
                                <label for="question-30-answers-B">B) False </label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 31) nrt  stands for Narrator </h3>

                            <div>
                                <input type="radio" name="question-31-answers" id="question-31-answers-A" value="A" />
                                <label for="question-31-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-31-answers" id="question-31-answers-B" value="B" />
                                <label for="question-31-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 32) prf stands for Performer </h3>

                            <div>
                                <input type="radio" name="question-32-answers" id="question-32-answers-A" value="A" />
                                <label for="question-32-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-32-answers" id="question-32-answers-B" value="B" />
                                <label for="question-32-answers-B">B) False </label>
                            </div>

                        </span>
                    </section>
                    <section id="page" class="step">
                        <span>

                            <h3> 33) pro  stands for Producer </h3>

                            <div>
                                <input type="radio" name="question-33-answers" id="question-33-answers-A" value="A" />
                                <label for="question-33-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-33-answers" id="question-33-answers-B" value="B" />
                                <label for="question-33-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 34) scl  stands for Sculptor </h3>

                            <div>
                                <input type="radio" name="question-34-answers" id="question-34-answers-A" value="A" />
                                <label for="question-34-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-34-answers" id="question-34-answers-B" value="B" />
                                <label for="question-34-answers-B">B) False </label>
                            </div>

                        </span>
                    </section>

                    <section id="page" class="step">
                        <span>

                            <h3> 35) trl  stands for Translator </h3>

                            <div>
                                <input type="radio" name="question-35-answers" id="question-35-answers-A" value="A" />
                                <label for="question-35-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-35-answers" id="question-35-answers-B" value="B" />
                                <label for="question-35-answers-B">B) False </label>
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