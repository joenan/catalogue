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

        <style>
            h3{
                font-size:13px;
            }
        </style>


    </head>

    <body>

        <main role="main">

            <header role="banner">

                <h6 class="logo">
                    <a href="#">CATALOGUING QUIZ QUESTIONS</a>
                </h6>

                <!--                <div id="progress">
                                    <span>0%</span>
                                    <div></div>
                                </div>-->
                <center>
                    <b><div>Cataloguing Competency Based Assessment</div></b>
                </center>

                <center>
                    <h1><b><div>${feedback}</div></b></h1>
                </center>


            </header>

            <div id="form-pager">

                <form class="pure-form steps" method="post" action="${pageContext.request.contextPath}/scorequiz">

                    <section id="page1" class="step">

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

                    <section id="page2" class="pure-form-aligned step">
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
                        <span>

                            <h3> 22) Cataloguing workflow is important for all but one of the following reasons:</h3>

                            <div>
                                <input type="radio" name="question-22-answers" id="question-22-answers-A" value="A" />
                                <label for="question-22-answers-A">A) It facilitates the understanding of the process involved in cataloguing.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-22-answers" id="question-22-answers-B" value="B" />
                                <label for="question-22-answers-B">B) It ensures that every material is processed before it leaves the department. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-22-answers" id="question-22-answers-C" value="C" />
                                <label for="question-22-answers-C">C) It shows various stages of cataloguing at a glance and speeds up work</label>
                            </div>

                            <div>
                                <input type="radio" name="question-22-answers" id="question-22-answers-D" value="D" />
                                <label for="question-22-answers-D">D) It does not allow the reassignment of the cataloguing process.</label>
                            </div>

                        </span>




                        <span>

                            <h3> 23) Which of the following will be most helpful to a cataloguer while entering bibliographic and descriptive data into
                                the library?s catalog system?</h3>

                            <div>
                                <input type="radio" name="question-23-answers" id="question-23-answers-A" value="A" />
                                <label for="question-23-answers-A">A) The work?s title page</label>
                            </div>

                            <div>
                                <input type="radio" name="question-23-answers" id="question-23-answers-B" value="B" />
                                <label for="question-23-answers-B">B) AACR2</label>
                            </div>

                            <div>
                                <input type="radio" name="question-23-answers" id="question-23-answers-C" value="C" />
                                <label for="question-23-answers-C">C) CIP </label>
                            </div>

                            <div>
                                <input type="radio" name="question-23-answers" id="question-23-answers-D" value="D" />
                                <label for="question-23-answers-D">D) Sears List of Subject Headings</label>
                            </div>


                        </span>

                        <span>

                            <h3> 24) When transcribing multiple statements of responsibility, what punctuation do we use to separate each name and area
                                of responsibility?</h3>

                            <div>
                                <input type="radio" name="question-24-answers" id="question-24-answers-A" value="A" />
                                <label for="question-24-answers-A">A) Comma. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-24-answers" id="question-24-answers-B" value="B" />
                                <label for="question-24-answers-B">B) Semi-colon</label>
                            </div>

                            <div>
                                <input type="radio" name="question-24-answers" id="question-24-answers-C" value="C" />
                                <label for="question-24-answers-C">C) Full stop </label>
                            </div>



                        </span>

                        <span>

                            <h3> 25) The ?Choice of Access Points? is discussed in which of the following chapters of AACR2:</h3>

                            <div>
                                <input type="radio" name="question-25-answers" id="question-25-answers-A" value="A" />
                                <label for="question-25-answers-A">A) Chapter 21</label>
                            </div>

                            <div>
                                <input type="radio" name="question-25-answers" id="question-25-answers-B" value="B" />
                                <label for="question-25-answers-B">B) Chapter 25</label>
                            </div>

                            <div>
                                <input type="radio" name="question-25-answers" id="question-25-answers-C" value="C" />
                                <label for="question-25-answers-C">C) Chapter 5 </label>
                            </div>

                            <div>
                                <input type="radio" name="question-25-answers" id="question-25-answers-D" value="D" />
                                <label for="question-25-answers-D">D) Chapter 27</label>
                            </div>


                        </span>


                        <span>

                            <h3> 26) Geographical name is discussed in AACR2 in one of the following chapters:</h3>

                            <div>
                                <input type="radio" name="question-26-answers" id="question-26-answers-A" value="A" />
                                <label for="question-26-answers-A">A) Chapter 25</label>
                            </div>

                            <div>
                                <input type="radio" name="question-26-answers" id="question-26-answers-B" value="B" />
                                <label for="question-26-answers-B">B) Chapter 23</label>
                            </div>

                            <div>
                                <input type="radio" name="question-26-answers" id="question-26-answers-C" value="C" />
                                <label for="question-26-answers-C">C) Chapter 26 </label>
                            </div>

                            <div>
                                <input type="radio" name="question-26-answers" id="question-26-answers-D" value="D" />
                                <label for="question-26-answers-D">D) Chapter 22</label>
                            </div>


                        </span>
                        <span>

                            <h3> 27) When there are many authors,the title of an item is selected as the main entry</h3>

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

                            <h3> 28) The 3 functions of bibliographic tools are not identify, gather/collocate and evaluate</h3>

                            <div>
                                <input type="radio" name="question-28-answers" id="question-28-answers-A" value="A" />
                                <label for="question-28-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-28-answers" id="question-28-answers-B" value="B" />
                                <label for="question-28-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 29) Main entry or main access point is not an identification of the person chiefly responsible for the intellectual content of a work.</h3>

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

                            <h3> 30) The  components to a library catalog are Shelf list, OPAC and authority files</h3>

                            <div>
                                <input type="radio" name="question-30-answers" id="question-30-answers-A" value="A" />
                                <label for="question-30-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-30-answers" id="question-30-answers-B" value="B" />
                                <label for="question-30-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 31) Editors are never named as the main entry because they are not creators of works.</h3>

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

                            <h3> 32) Materials catalogued according to the subject matter that has been classified are called?. Subject Matter or Type Cataloguing Systems.</h3>

                            <div>
                                <input type="radio" name="question-32-answers" id="question-32-answers-A" value="A" />
                                <label for="question-32-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-32-answers" id="question-32-answers-B" value="B" />
                                <label for="question-32-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 33) Cataloguing that is carried out specific to a country using its own traditional heritage is called National Cataloguing Sytems.</h3>

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

                            <h3> 34) Cataloguing that lists items according to the media they are used on or for other specific functions is called Functional cataloguing systems.</h3>

                            <div>
                                <input type="radio" name="question-34-answers" id="question-34-answers-A" value="A" />
                                <label for="question-34-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-34-answers" id="question-34-answers-B" value="B" />
                                <label for="question-34-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 35) The  catalog organized by the last name of the author is known as the author catalogrue.</h3>

                            <div>
                                <input type="radio" name="question-35-answers" id="question-35-answers-A" value="A" />
                                <label for="question-35-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-35-answers" id="question-35-answers-B" value="B" />
                                <label for="question-35-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 36) The catalog that is organized by the title of the materials is known as the title card catalog.</h3>

                            <div>
                                <input type="radio" name="question-36-answers" id="question-36-answers-A" value="A" />
                                <label for="question-36-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-36-answers" id="question-36-answers-B" value="B" />
                                <label for="question-36-answers-B">B) False </label>
                            </div>

                            <span>

                                <h3> 37) The library often has a catalog that it often uses for organization but is not make available to the public. It combines all title, author and subject cards to provide a complete inventory of what the library has on its shelves. It is organized by the location of the books and other materials in the library. It is not a shelf list.</h3>

                                <div>
                                    <input type="radio" name="question-37-answers" id="question-37-answers-A" value="A" />
                                    <label for="question-37-answers-A">A) True. </label>
                                </div>

                                <div>
                                    <input type="radio" name="question-37-answers" id="question-37-answers-B" value="B" />
                                    <label for="question-37-answers-B">B) False </label>
                                </div>

                            </span>
                            <span>

                                <h3> 38) University libraries may also have specialized catalogs that are arranged by subject. They are created for large holdings of music, scientific research and other special collections. They allow librarians to help patrons locate specific books, CDs and other multimedia for research purposes. They are not Specialized shelf list catalogs.</h3>

                                <div>
                                    <input type="radio" name="question-38-answers" id="question-38-answers-A" value="A" />
                                    <label for="question-38-answers-A">A) True. </label>
                                </div>

                                <div>
                                    <input type="radio" name="question-38-answers" id="question-38-answers-B" value="B" />
                                    <label for="question-38-answers-B">B) False </label>
                                </div>

                            </span>

                            <span>

                                <h3> 39) In times of poor funding the library uses all except one of the following to increase cataloguing productivity:</h3>

                                <div>
                                    <input type="radio" name="question-39-answers" id="question-39-answers-A" value="A" />
                                    <label for="question-39-answers-A">A) Limited cataloguing</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-39-answers" id="question-39-answers-B" value="B" />
                                    <label for="question-39-answers-B">B) Shared cataloguing.</label>
                                </div>

                                <div>
                                    <input type="radio" name="question-39-answers" id="question-39-answers-C" value="C" />
                                    <label for="question-39-answers-C">C) Minimal level cataloguing </label>
                                </div>

                                <div>
                                    <input type="radio" name="question-39-answers" id="question-39-answers-D" value="D" />
                                    <label for="question-39-answers-D">D) Original cataloguing</label>
                                </div>


                            </span>

                            <span>

                                <h3> 40) The purpose of uniform titles is to:</h3>

                                <div>
                                    <input type="radio" name="question-40-answers" id="question-40-answers-A" value="A" />
                                    <label for="question-40-answers-A">A)Bring together all catalogue entries for a work when various manifestations (e.g., editions, translations) of it have appeared under various titles and organize the file. </label>
                                </div>

                                <div>
                                    <input type="radio" name="question-40-answers" id="question-40-answers-B" value="B" />
                                    <label for="question-40-answers-B">B)Identify a work when the title by which it is known differs from the title proper of the item being catalogued; differentiate between two or more works published under identical titles proper.</label>
                                </div>
                                <div>
                                    <input type="radio" name="question-40-answers" id="question-40-answers-C" value="C" />
                                    <label for="question-40-answers-C">C)All of the above. </label>
                                </div>

                                <div>
                                    <input type="radio" name="question-40-answers" id="question-40-answers-D" value="D" />
                                    <label for="question-40-answers-D">D)None of the above</label>
                                </div>

                            </span>
                            <span>

                                <h3> 41) Minimal level cataloguing is generally used only for resources of little research value and back logs.</h3>

                                <div>
                                    <input type="radio" name="question-41-answers" id="question-41-answers-A" value="A" />
                                    <label for="question-41-answers-A">A) True. </label>
                                </div>

                                <div>
                                    <input type="radio" name="question-41-answers" id="question-41-answers-B" value="B" />
                                    <label for="question-41-answers-B">B) False </label>
                                </div>

                            </span>

                    </section>

                    <section id="page3" class="step">

                        <span>

                            <h3> 42) Libraries resort to copy cataloguing when a matching existing cataloging record (bibliographic record) for an item can be found.</h3>

                            <div>
                                <input type="radio" name="question-42-answers" id="question-42-answers-A" value="A" />
                                <label for="question-42-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-42-answers" id="question-42-answers-B" value="B" />
                                <label for="question-42-answers-B">B) False </label>
                            </div>

                        </span>

                        <span>

                            <h3> 43) When copy catalog information is not available for an item the cataloguing department resort to original cataloguing.</h3>

                            <div>
                                <input type="radio" name="question-43-answers" id="question-43-answers-A" value="A" />
                                <label for="question-43-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-43-answers" id="question-43-answers-B" value="B" />
                                <label for="question-43-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 44) Limited level cataloging is provided for all foreign language materials</h3>

                            <div>
                                <input type="radio" name="question-44-answers" id="question-44-answers-A" value="A" />
                                <label for="question-44-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-44-answers" id="question-44-answers-B" value="B" />
                                <label for="question-44-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 45) In ISBD, when is this symbol [] is used, information is not available in the proper place. </h3>

                            <div>
                                <input type="radio" name="question-45-answers" id="question-45-answers-A" value="A" />
                                <label for="question-45-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-45-answers" id="question-45-answers-B" value="B" />
                                <label for="question-45-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 46) In ISBD,  ?s.l. (Sine Loco)?  is  used when place of publication is not known;In ISBD, is ?s.n.: (Sine Nomina)?,is  used when name of publisher is unknown;</h3>

                            <div>
                                <input type="radio" name="question-46-answers" id="question-46-answers-A" value="A" />
                                <label for="question-46-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-46-answers" id="question-46-answers-B" value="B" />
                                <label for="question-46-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 47) In ISBD  () is used to denote omission.  </h3>

                            <div>
                                <input type="radio" name="question-47-answers" id="question-47-answers-A" value="A" />
                                <label for="question-47-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-47-answers" id="question-47-answers-B" value="B" />
                                <label for="question-47-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 48) cmp    stands for  Composer  </h3>

                            <div>
                                <input type="radio" name="question-48-answers" id="question-48-answers-A" value="A" />
                                <label for="question-48-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-48-answers" id="question-48-answers-B" value="B" />
                                <label for="question-48-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 49) cnd  stands for Conductor </h3>

                            <div>
                                <input type="radio" name="question-49-answers" id="question-49-answers-A" value="A" />
                                <label for="question-49-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-49-answers" id="question-49-answers-B" value="B" />
                                <label for="question-49-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 50) ctg  stands for  Cartographer </h3>

                            <div>
                                <input type="radio" name="question-50-answers" id="question-50-answers-A" value="A" />
                                <label for="question-50-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-50-answers" id="question-50-answers-B" value="B" />
                                <label for="question-50-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 51) drt  stands for Director</h3>

                            <div>
                                <input type="radio" name="question-51-answers" id="question-51-answers-A" value="A" />
                                <label for="question-51-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-51-answers" id="question-51-answers-B" value="B" />
                                <label for="question-51-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 52) ill  stands for Illustrator </h3>

                            <div>
                                <input type="radio" name="question-52-answers" id="question-52-answers-A" value="A" />
                                <label for="question-52-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-52-answers" id="question-52-answers-B" value="B" />
                                <label for="question-52-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 53) mus  stands for Musician </h3>

                            <div>
                                <input type="radio" name="question-53-answers" id="question-53-answers-A" value="A" />
                                <label for="question-53-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-53-answers" id="question-53-answers-B" value="B" />
                                <label for="question-53-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 54) nrt  stands for Narrator </h3>

                            <div>
                                <input type="radio" name="question-54-answers" id="question-54-answers-A" value="A" />
                                <label for="question-54-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-54-answers" id="question-54-answers-B" value="B" />
                                <label for="question-54-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 55) prf stands for Performer </h3>

                            <div>
                                <input type="radio" name="question-55-answers" id="question-55-answers-A" value="A" />
                                <label for="question-55-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-55-answers" id="question-55-answers-B" value="B" />
                                <label for="question-55-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 56) pro  stands for Producer </h3>

                            <div>
                                <input type="radio" name="question-56-answers" id="question-56-answers-A" value="A" />
                                <label for="question-56-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-56-answers" id="question-56-answers-B" value="B" />
                                <label for="question-56-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 57) scl  stands for Sculptor </h3>

                            <div>
                                <input type="radio" name="question-57-answers" id="question-57-answers-A" value="A" />
                                <label for="question-57-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-57-answers" id="question-57-answers-B" value="B" />
                                <label for="question-57-answers-B">B) False </label>
                            </div>

                        </span>
                        <span>

                            <h3> 58) trl  stands for Translator </h3>

                            <div>
                                <input type="radio" name="question-58-answers" id="question-58-answers-A" value="A" />
                                <label for="question-58-answers-A">A) True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-58-answers" id="question-58-answers-B" value="B" />
                                <label for="question-58-answers-B">B) False </label>
                            </div>

                        </span>

                        <span>

                            <h3> 59) Authority control is a process of organizing bibliographic information in library catalogues. One of the statements
                                mentioned is not included in the process::</h3>

                            <div>
                                <input type="radio" name="question-59-answers" id="question-59-answers-A" value="A" />
                                <label for="question-59-answers-A">A) The use of distinct spelling of author names.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-59-answers" id="question-59-answers-B" value="B" />
                                <label for="question-59-answers-B">B) The use of numeric identifiers for specific topics.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-59-answers" id="question-59-answers-C" value="C" />
                                <label for="question-59-answers-C">C) The description of each controlled entry in an authority record </label>
                            </div>

                            <div>
                                <input type="radio" name="question-59-answers" id="question-59-answers-D" value="D" />
                                <label for="question-59-answers-D">D) Showing what material a library has</label>
                            </div>


                        </span>

                        <span>

                            <h3> 60) All of the following except one are examples of authority control</h3>

                            <div>
                                <input type="radio" name="question-60-answers" id="question-60-answers-A" value="A" />
                                <label for="question-60-answers-A">A) Controlled vocabulary.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-60-answers" id="question-60-answers-B" value="B" />
                                <label for="question-60-answers-B">B) Bibliographic control.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-60-answers" id="question-60-answers-C" value="C" />
                                <label for="question-60-answers-C">C) Establishment of uniform titles used in collocating materials </label>
                            </div>

                            <div>
                                <input type="radio" name="question-60-answers" id="question-60-answers-D" value="D" />
                                <label for="question-60-answers-D">D) Cataloguing control</label>
                            </div>


                        </span>
                        <span>

                            <h3> 61) Authority control is beneficial for:</h3>

                            <div>
                                <input type="radio" name="question-61-answers" id="question-61-answers-A" value="A" />
                                <label for="question-61-answers-A">A) Making catalogue easier to maintain.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-61-answers" id="question-61-answers-B" value="B" />
                                <label for="question-61-answers-B">B) Making search more predictable.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-61-answers" id="question-61-answers-C" value="C" />
                                <label for="question-61-answers-C">C) Keeping records consistent </label>
                            </div>

                            <div>
                                <input type="radio" name="question-61-answers" id="question-61-answers-D" value="D" />
                                <label for="question-61-answers-D">D) Purchasing materials for the library</label>
                            </div>


                        </span>

                    </section>
                    <section id="page4" class="step">

                        <span>

                            <h3> 62) Controlled vocabularies are used to solve one of the following problems while organizing information:</h3>

                            <div>
                                <input type="radio" name="question-62-answers" id="question-62-answers-A" value="A" />
                                <label for="question-62-answers-A">A) Problems of homographs, synonyms, and polysemes.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-62-answers" id="question-62-answers-B" value="B" />
                                <label for="question-62-answers-B">B) Problem of broader terms.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-62-answers" id="question-62-answers-C" value="C" />
                                <label for="question-62-answers-C">C) Problem of narrow terms </label>
                            </div>

                            <div>
                                <input type="radio" name="question-62-answers" id="question-62-answers-D" value="D" />
                                <label for="question-62-answers-D">D) None of the above</label>
                            </div>


                        </span>

                        <span>

                            <h3> 63) Controlled vocabularies are used in all but one of the following</h3>

                            <div>
                                <input type="radio" name="question-63-answers" id="question-63-answers-A" value="A" />
                                <label for="question-63-answers-A">A) Subject indexing .</label>
                            </div>

                            <div>
                                <input type="radio" name="question-63-answers" id="question-63-answers-B" value="B" />
                                <label for="question-63-answers-B">B) Subject headings</label>
                            </div>

                            <div>
                                <input type="radio" name="question-63-answers" id="question-63-answers-C" value="C" />
                                <label for="question-63-answers-C">C) Thesauri </label>
                            </div>

                            <div>
                                <input type="radio" name="question-63-answers" id="question-63-answers-D" value="D" />
                                <label for="question-63-answers-D">D) Directories</label>
                            </div>


                        </span>

                        <span>

                            <h3> 64) Controlled vocabulary is used to:</h3>

                            <div>
                                <input type="radio" name="question-64-answers" id="question-64-answers-A" value="A" />
                                <label for="question-64-answers-A">A) return the most recent search results first.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-64-answers" id="question-64-answers-B" value="B" />
                                <label for="question-64-answers-B">B) allow the user to search using Boolean operators. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-64-answers" id="question-64-answers-C" value="C" />
                                <label for="question-64-answers-C">C) make searching more efficient. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-64-answers" id="question-64-answers-D" value="D" />
                                <label for="question-64-answers-D">D) keep cataloging records consistent. </label>
                            </div>


                        </span>
                        <span>

                            <h3> 65) Authority control, the development and making accurate access points are crucial to effective service and accessibility
                                to information.</h3>

                            <div>
                                <input type="radio" name="question-65-answers" id="question-65-answers-A" value="A" />
                                <label for="question-65-answers-A">A) True.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-65-answers" id="question-65-answers-B" value="B" />
                                <label for="question-65-answers-B">B) False.</label>
                            </div>

                        </span>

                        <span>

                            <h3> 66) The call number of a book </h3>

                            <div>
                                <input type="radio" name="question-66-answers" id="question-66-answers-A" value="A" />
                                <label for="question-66-answers-A">A) enables a user find a book on the shelves</label>
                            </div>

                            <div>
                                <input type="radio" name="question-66-answers" id="question-66-answers-B" value="B" />
                                <label for="question-66-answers-B">B) Used to keep materials in order on shelves </label>
                            </div>

                            <div>
                                <input type="radio" name="question-66-answers" id="question-66-answers-C" value="C" />
                                <label for="question-66-answers-C">C) Is found in the online catalog </label>
                            </div>

                            <div>
                                <input type="radio" name="question-66-answers" id="question-66-answers-D" value="D" />
                                <label for="question-66-answers-D">D) All of the above </label>
                            </div>


                        </span>
                        <span>

                            <h3> 67) ? If a book is cataloged and it contains census information published by the government of Ceylon: The corporate author entry will be Ceylon. But the subject heading will be Sri Lanka. This seems confusing but it is really useful if one wants books on a particular country and does not know all the previous names of the country.? This statement depicts how catalogers treat geographic entities such as countries whose names have changed over time. </h3>

                            <div>
                                <input type="radio" name="question-67-answers" id="question-67-answers-A" value="A" />
                                <label for="question-67-answers-A">A) True.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-67-answers" id="question-67-answers-B" value="B" />
                                <label for="question-67-answers-B">B) False. </label>
                            </div>

                        </span>
                        <span>
                            <h3> 68) ?The heading Malaysia is used for works on the entire nation. The heading Malaya is used for works discussing the area corresponding to the former jurisdiction Malaya, even though there is no longer any jurisdiction corresponding to that area.A cataloger with a book on Iron Age Germany, would assign the subject heading Germany even though Germany did not exist until the 19th century. Headings for the various jurisdictions that preceded the formation of Germany are used for works discussing those areas individually.? These two scenarios depict a situation where jurisdictions can be merge or split . For mergers, the cataloger tries to use the latest form of name, unless the book is only about a specific area which was a valid jurisdiction.</h3>

                            <div>
                                <input type="radio" name="question-68-answers" id="question-68-answers-A" value="A" />
                                <label for="question-68-answers-A">A) True.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-68-answers" id="question-68-answers-B" value="B" />
                                <label for="question-68-answers-B">B) False. </label>
                            </div>

                        </span>
                        <span>
                            <h3> 69) ?Germany (East)? is the scope note attached the heading used for works on the eastern part of Germany before 1949; the Russian occupation zone; the German Democratic Republic from 1949-1990; or the eastern part of reunified Germany since 1990. </h3>

                            <div>
                                <input type="radio" name="question-69-answers" id="question-69-answers-A" value="A" />
                                <label for="question-69-answers-A">A) True.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-69-answers" id="question-69-answers-B" value="B" />
                                <label for="question-69-answers-B">B) False. </label>
                            </div>

                        </span>
                        <span>
                            <h3> 70) The process of indexing where the indexer rely solely on information which is manifest in the document, without attempting to add to this from other knowledge sources is called derived indexing.  </h3>

                            <div>
                                <input type="radio" name="question-70-answers" id="question-70-answers-A" value="A" />
                                <label for="question-70-answers-A">A) True.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-70-answers" id="question-70-answers-B" value="B" />
                                <label for="question-70-answers-B">B) False. </label>
                            </div>

                        </span>
                        <span>
                            <h3> 71) Study the following index entry and identify what indexing system was use:
                                Classification of    BOOKS  in a University Library  1279
                                University Library CLASSIFICATION of Books in a  1279
                                in a University      LIBRARY/Classification of Books  1279
                                of Books in a        UNIV. LIBRARY/Classification    1279 
                            </h3>
                            <div>
                                <input type="radio" name="question-71-answers" id="question-71-answers-A" value="A" />
                                <label for="question-71-answers-A">A)(KWIC)</label>
                            </div>

                            <div>
                                <input type="radio" name="question-71-answers" id="question-71-answers-B" value="B" />
                                <label for="question-71-answers-B">B)KWAC </label>
                            </div>
                            <div>
                                <input type="radio" name="question-71-answers" id="question-71-answers-C" value="C" />
                                <label for="question-71-answers-C">C)KWOC </label>
                            </div>

                        </span>
                        <span>
                            <h3> 72) An indexing system, where the keyword or the access point is shifted to the extreme left at its normal place in the beginning of the line. It is followed by the complete title to provide complete context. The keyword and the context are written either in the same line or in two successive lines. It is called?.</h3>
                            <div>
                                <input type="radio" name="question-72-answers" id="question-72-answers-A" value="A" />
                                <label for="question-72-answers-A">A)(Keyword Out of Context; KWOC).</label>
                            </div>

                            <div>
                                <input type="radio" name="question-72-answers" id="question-72-answers-B" value="B" />
                                <label for="question-72-answers-B">B)Keyword in context</label>
                            </div>
                            <div>
                                <input type="radio" name="question-72-answers" id="question-72-answers-C" value="C" />
                                <label for="question-72-answers-C">C)Keyword and context </label>
                            </div>

                        </span>
                        <span>
                            <h3> 73) Study the following index entry and identify what indexing system was used:
                                Title: Computerisation of Libraries in India
                                COMPUTERISATION     Computerisation of libraries in India      1289
                                INDIA   Computerisation of libraries in India      1289
                                LIBRARIES    Computerisation of libraries in Indian    1289
                            </h3>
                            <div>
                                <input type="radio" name="question-73-answers" id="question-73-answers-A" value="A" />
                                <label for="question-73-answers-A">A)(KWOC).</label>
                            </div>

                            <div>
                                <input type="radio" name="question-73-answers" id="question-73-answers-B" value="B" />
                                <label for="question-73-answers-B">B)KWIC</label>
                            </div>
                            <div>
                                <input type="radio" name="question-73-answers" id="question-73-answers-C" value="C" />
                                <label for="question-73-answers-C">C)KWAC </label>
                            </div>

                        </span>
                        <span>
                            <h3> 74) The indexing system keywords are arranged side by side without forming a sentence. Entries are prepared containing only keywords and location excluding the context. It is not called Key-Term Alphabetical index. </h3>
                            <div>
                                <input type="radio" name="question-74-answers" id="question-74-answers-A" value="A" />
                                <label for="question-74-answers-A">A)TRUE.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-74-answers" id="question-74-answers-B" value="B" />
                                <label for="question-74-answers-B">B)FALSE</label>
                            </div>

                        </span>
                        <span>
                            <h3> 75) 
                                Study the following index entry and identify what indexing system was used:
                                Computerisation of libraries in Nigeria
                                COMPUTERISATION, NIGERIA, LIBRARIES  1289
                                NIGERIA, LIBRARIES, COMPUTERISATION    1289
                                LIBRARIES, COMPUTERISATION, NIGERIA    1289 

                            </h3> 
                            <div>
                                <input type="radio" name="question-75-answers" id="question-75-answers-A" value="A" />
                                <label for="question-75-answers-A">A)Key-Term Alphabetical index</label>
                            </div>

                            <div>
                                <input type="radio" name="question-75-answers" id="question-75-answers-B" value="B" />
                                <label for="question-75-answers-B">B)Keyword out of context</label>
                            </div>
                            <div>
                                <input type="radio" name="question-75-answers" id="question-75-answers-C" value="C" />
                                <label for="question-75-answers-C">C)Keyword in context</label>
                            </div>

                        </span>
                        <span>
                            <h3> 76) A ?see? reference refers to the authorized form used by the library.  A ?see also? reference refers the user to related material for the subject searched </h3>
                            <div>
                                <input type="radio" name="question-76-answers" id="question-76-answers-A" value="A" />
                                <label for="question-76-answers-A">A)True.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-76-answers" id="question-76-answers-B" value="B" />
                                <label for="question-76-answers-B">B)False</label>
                            </div>

                        </span>



                        <span>


                            <h3> 77) ?Prevention of Cholera in Nigeria? generates following index terms according to modified ?Chain Indexing?, arrange
                                them in correct order: (i) India. (ii) Cholera. (iii) Disease. (iv) Treatment.(v) Medicine. </h3>

                            <div>
                                <input type="radio" name="question-77-answers" id="question-77-answers-A" value="A" />
                                <label for="question-77-answers-A">A) (iii), (iv), (i), (ii), (v). </label>
                            </div>

                            <div>
                                <input type="radio" name="question-77-answers" id="question-77-answers-B" value="B" />
                                <label for="question-77-answers-B">B) (ii), (i), (iii), (iv), (v) </label>
                            </div>

                            <div>
                                <input type="radio" name="question-77-answers" id="question-77-answers-C" value="C" />
                                <label for="question-77-answers-C">C) (iv), (iii), (ii), (v), (i). </label>
                            </div>

                            <div>
                                <input type="radio" name="question-77-answers" id="question-77-answers-D" value="D" />
                                <label for="question-77-answers-D">D) (i), (iii), (iv), (v), (ii) </label>
                            </div>

                        </span>

                        <span>
                            <h3> 78) Three of the following but one is the three main indexing languages: </h3>

                            <div>
                                <input type="radio" name="question-78-answers" id="question-78-answers-A" value="A" />
                                <label for="question-78-answers-A">A) Controlled indexing language </label>
                            </div>

                            <div>
                                <input type="radio" name="question-78-answers" id="question-78-answers-B" value="B" />
                                <label for="question-78-answers-B">B) Natural indexing language </label>
                            </div>

                            <div>
                                <input type="radio" name="question-78-answers" id="question-78-answers-C" value="C" />
                                <label for="question-78-answers-C">C) Free indexing language </label>
                            </div>

                            <div>
                                <input type="radio" name="question-78-answers" id="question-78-answers-D" value="D" />
                                <label for="question-78-answers-D">D) Keyword out of context </label>
                            </div>
                        </span>
                        <span>
                            <h3> 79) A ?see also? reference refers the user to related material for the subject searched </h3>

                            <div>
                                <input type="radio" name="question-79-answers" id="question-79-answers-A" value="A" />
                                <label for="question-79-answers-A">A)True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-79-answers" id="question-79-answers-B" value="B" />
                                <label for="question-79-answers-B">B)False. </label>
                            </div>
                        </span>
                        <span>
                            <h3> 80) There are bound to be snags and things that need to be modified or changed in the process of cataloguing. One of the
                                following is not the best way to handle the challenges as they ensue? </h3>

                            <div>
                                <input type="radio" name="question-80-answers" id="question-80-answers-A" value="A" />
                                <label for="question-80-answers-A">A)Modifications should be seen as normal. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-80-answers" id="question-80-answers-B" value="B" />
                                <label for="question-80-answers-B">B)It is important to maintain a vision of what is essential to achieve the final goal. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-80-answers" id="question-80-answers-C" value="C" />
                                <label for="question-80-answers-C">C) Maintaining the sense of the big picture. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-80-answers" id="question-80-answers-D" value="D" />
                                <label for="question-80-answers-D">D) Drive the rest of the work force into a panic mode</label>
                            </div>
                        </span>

                        <span>

                            <h3> 81) Creating favorable conditions that cause cataloguers to get their work done should be the first priority every cataloguer
                                in the department. </h3>

                            <div>
                                <input type="radio" name="question-81-answers" id="question-81-answers-A" value="A" />
                                <label for="question-81-answers-A">A)True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-81-answers" id="question-81-answers-B" value="B" />
                                <label for="question-81-answers-B">B)False </label>
                            </div>
                        </span>

                    </section>
                    <section id="page5" class="step">


                        <span>
                            <h3> 82) Overall achievements in the cataloguing department are accomplished through a series of small steps. The ensuring that
                                all the small steps are meticulously taken care of results in the effective cataloguing services </h3>

                            <div>
                                <input type="radio" name="question-82-answers" id="question-82-answers-A" value="A" />
                                <label for="question-82-answers-A">A)True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-82-answers" id="question-82-answers-B" value="B" />
                                <label for="question-82-answers-B">B)False </label>
                            </div>
                        </span>
                        <span>
                            <h3> 83) How do you go about explaining a complex  technical cataloguing problems to a person who does not understand technical jargon?
                                What approach do you take in communicating with librarians outside the cataloguing department
                                These are ethical issues cataloguing Match the terms in column A with their corresponding statements in column B.
                                Write down answers only eg. 1. F 
                                COLUMN A	        COLUMN B
                                1. Ethnocentrism   ----	A. Making sweeping generalisations about people.
                                2. Verbal messages ----	B. Established rules of what is acceptable and  appropriate behaviour.
                                3. Stereotyping	   ---- C. Thinking that your culture is superior.
                                4. Generalisation  ----D. Misunderstanding deeper meaning of words and  idioms.
                                                        E. Oversimplified, one-sided and inflexible view of a  group.
                                 The answer is 1C, 2D, 3E AND 4A
                            </h3>

                            <div>
                                <input type="radio" name="question-83-answers" id="question-83-answers-A" value="A" />
                                <label for="question-83-answers-A">A)True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-83-answers" id="question-83-answers-B" value="B" />
                                <label for="question-83-answers-B">B)False </label>
                            </div>
                        </span>
                        <span>
                            <h3> 84) "An aloof glance", "an amused facial expression", "an unfriendly posture" are descriptions of which level of communication
                                below? </h3>

                            <div>
                                <input type="radio" name="question-84-answers" id="question-84-answers-A" value="A" />
                                <label for="question-84-answers-A">A) Verbal level . </label>
                            </div>

                            <div>
                                <input type="radio" name="question-84-answers" id="question-84-answers-B" value="B" />
                                <label for="question-84-answers-B">B) Para-verbal level . </label>
                            </div>

                            <div>
                                <input type="radio" name="question-84-answers" id="question-84-answers-C" value="C" />
                                <label for="question-84-answers-C">C) Context level . </label>
                            </div>

                            <div>
                                <input type="radio" name="question-84-answers" id="question-84-answers-D" value="D" />
                                <label for="question-84-answers-D">D) Non-verbal level</label>
                            </div>
                        </span>
                        <span>
                            <h3> 85) What is the basis for good moderation? </h3>

                            <div>
                                <input type="radio" name="question-85-answers" id="question-85-answers-A" value="A" />
                                <label for="question-85-answers-A">A)Description of the task. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-85-answers" id="question-85-answers-B" value="B" />
                                <label for="question-85-answers-B">B) Preparation of minutes </label>
                            </div>

                            <div>
                                <input type="radio" name="question-85-answers" id="question-85-answers-C" value="C" />
                                <label for="question-85-answers-C">C)Disclosure of information to third parties.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-85-answers" id="question-85-answers-D" value="D" />
                                <label for="question-85-answers-D">D)Establishing a dialogue between all participants</label>
                            </div>
                        </span>
                        <span>
                            <h3> 86) The following lists two of a head cataloguers tasks: </h3>

                            <div>
                                <input type="radio" name="question-86-answers" id="question-86-answers-A" value="A" />
                                <label for="question-86-answers-A">A)Defining communication channels </label>
                            </div>

                            <div>
                                <input type="radio" name="question-86-answers" id="question-86-answers-B" value="B" />
                                <label for="question-86-answers-B">B) Monitoring the status of task processing </label>
                            </div>

                            <div>
                                <input type="radio" name="question-86-answers" id="question-86-answers-C" value="C" />
                                <label for="question-86-answers-C">C)Approving the cataloguing plan </label>
                            </div>

                            <div>
                                <input type="radio" name="question-86-answers" id="question-86-answers-D" value="D" />
                                <label for="question-86-answers-D">D)Alignment with the library?s objectives</label>
                            </div>
                        </span>
                        
                        <span>
                            <h3> 87)Two steps are important if you wish to secure acceptance for your point of view in the department. </h3>

                            <div>
                                <input type="radio" name="question-87-answers" id="question-87-answers-A" value="A" />
                                <label for="question-87-answers-A">A)Discarding bad habits </label>
                            </div>

                            <div>
                                <input type="radio" name="question-87-answers" id="question-87-answers-B" value="B" />
                                <label for="question-87-answers-B">B)Analysing the situation </label>
                            </div>

                            <div>
                                <input type="radio" name="question-87-answers" id="question-87-answers-C" value="C" />
                                <label for="question-87-answers-C">C)Setting targets </label>
                            </div>

                            <div>
                                <input type="radio" name="question-87-answers" id="question-87-answers-D" value="D" />
                                <label for="question-87-answers-D">D)Autogenic training</label>
                            </div>
                        </span>
                        <span>
                            <h3> 88) I am an extrovert if I (there are two correct answers)? </h3>

                            <div>
                                <input type="radio" name="question-88-answers" id="question-88-answers-A" value="A" />
                                <label for="question-88-answers-A">A)1. ...am sociable </label>
                            </div>

                            <div>
                                <input type="radio" name="question-88-answers" id="question-88-answers-B" value="B" />
                                <label for="question-88-answers-B">B)...am full of get up and go / thirst for action </label>
                            </div>

                            <div>
                                <input type="radio" name="question-88-answers" id="question-88-answers-C" value="C" />
                                <label for="question-88-answers-C">C)...more of a quiet type </label>
                            </div>

                            <div>
                                <input type="radio" name="question-88-answers" id="question-88-answers-D" value="D" />
                                <label for="question-88-answers-D">D)...like working on my own</label>
                            </div>
                        </span>
                        <span>
                            <h3> 89) Two of the following are key factors that block efficient cataloguing: </h3>

                            <div>
                                <input type="radio" name="question-89-answers" id="question-89-answers-A" value="A" />
                                <label for="question-89-answers-A">A)Lack of mutual trust between the cataloguers </label>
                            </div>

                            <div>
                                <input type="radio" name="question-89-answers" id="question-89-answers-B" value="B" />
                                <label for="question-89-answers-B">B)Lack of or tight project budget</label>
                            </div>

                            <div>
                                <input type="radio" name="question-89-answers" id="question-89-answers-C" value="C" />
                                <label for="question-89-answers-C">C)Lack of reporting templates </label>
                            </div>

                            <div>
                                <input type="radio" name="question-89-answers" id="question-89-answers-D" value="D" />
                                <label for="question-89-answers-D">D)Lack of orientation in the chores</label>
                            </div>
                        </span>
                        <span>
                            <h3> 90) There are usually several indicators of conflicts. Which two indicators are part of the conflict symptom "impaired
                                communication"? </h3>

                            <div>
                                <input type="radio" name="question-90-answers" id="question-90-answers-A" value="A" />
                                <label for="question-90-answers-A">A)Rejection of suggestions </label>
                            </div>

                            <div>
                                <input type="radio" name="question-90-answers" id="question-90-answers-B" value="B" />
                                <label for="question-90-answers-B">B)Choice of words and tone (cynicism, aggressiveness, etc.) </label>
                            </div>

                            <div>
                                <input type="radio" name="question-90-answers" id="question-90-answers-C" value="C" />
                                <label for="question-90-answers-C">C)Retreat to purely factual and formal communications </label>
                            </div>

                            <div>
                                <input type="radio" name="question-90-answers" id="question-90-answers-D" value="D" />
                                <label for="question-90-answers-D">D)Retreat to working to rule</label>
                            </div>
                        </span>
                        <span>
                            <h3> 91) Areas that should be d eliminate team work in the cataloguing department include:</h3>

                            <div>
                                <input type="radio" name="question-91-answers" id="question-91-answers-A" value="A" />
                                <label for="question-91-answers-A">A)Failure in preparedness: lacking the context or understanding of the university?s cataloguing situation, diminishes
                                    cataloguing quality, slows the pace of the team and truncates active contribution creating a gap in the team's success.
                                </label>
                            </div>

                            <div>
                                <input type="radio" name="question-91-answers" id="question-91-answers-B" value="B" />
                                <label for="question-91-answers-B">B)Failing to dissent early: nurturing a difference in opinion and not throwing it open for discussion and debate is
                                    passive aggressive behavior. It diminishes the effectiveness of execution of tasks</label>
                            </div>

                            <div>
                                <input type="radio" name="question-91-answers" id="question-91-answers-C" value="C" />
                                <label for="question-91-answers-C">C)Decisions should be collectively arrived at, and all staff members must be willing to commit to them.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-91-answers" id="question-91-answers-D" value="D" />
                                <label for="question-91-answers-D">D)The department is only as strong as its weakest contributor. Therefore, every cataloguers success is measured by
                                    the department?s success, and should be the main purpose for which every staff member strives.</label>
                            </div>
                        </span>
                        <span>
                            <h3> 92) The university library is now acquiring materials for that greatly vary in format, from books to visual media to cultural objects, that addresses a variety of subjects. The Library of Congress Subject Heading and the AACR2r are not flexible enough to accommodate this situation. There are other tools available to solve this problem. Name one of the tools and reason why it is appropriate.  Dublin Core. It  is simple and flexible and easy to modify.</h3>

                            <div>
                                <input type="radio" name="question-92-answers" id="question-92-answers-A" value="A" />
                                <label for="question-92-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-92-answers" id="question-92-answers-B" value="B" />
                                <label for="question-92-answers-B">B)False</label>
                            </div>
                        </span>
                        <span>
                            <h3> 93) When indexing a document, the indexer also has to choose the level of indexing exhaustivity, the level of detail in which the document is described. For example using low indexing exhaustivity, minor aspects of the work will not be described with index terms. In general the higher the indexing exhaustivity, the more terms indexed for each document. What would be the appropriate indexing system for this situation?  Use natural language indexing with an indexing exhaustively set to maximum. </h3>

                            <div>
                                <input type="radio" name="question-93-answers" id="question-93-answers-A" value="A" />
                                <label for="question-93-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-93-answers" id="question-93-answers-B" value="B" />
                                <label for="question-93-answers-B">B)False</label>
                            </div>
                        </span>
                        <span>
                            <h3> 94) The English language word football is also applied to Rugby football (Rugby union and rugby league), American football, Australian rules football, Gaelic football, and Canadian football. A search for football therefore will retrieve documents that are about several completely different sports. What is the solution to this situation? Controlled vocabulary  and tagging the documents.  </h3>

                            <div>
                                <input type="radio" name="question-94-answers" id="question-94-answers-A" value="A" />
                                <label for="question-94-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-94-answers" id="question-94-answers-B" value="B" />
                                <label for="question-94-answers-B">B)False</label>
                            </div>
                        </span>
                        <span>
                            <h3> 95) Authority control is used maintain consistency tool in the cataloguing process. One of the following is not a function of authority control:Consistency of headings, provision of links from variants and other authorized forms of headings (cross referencing), shows usage and scope of headings (record that tell the user and/or the cataloger how the headings are applied), supporting manual and automatic error detection and correction. These are all functions of not Authority control.  </h3>

                            <div>
                                <input type="radio" name="question-95-answers" id="question-95-answers-A" value="A" />
                                <label for="question-95-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-95-answers" id="question-95-answers-B" value="B" />
                                <label for="question-95-answers-B">B)False</label>
                            </div>
                        </span>
                        <span>
                            <h3> 96) ?If the subject is a term that describes a new phenomena like cell phones or Wikis or AIDS, the subject cataloger may wait to see what terms surface as the most common terms for the subject. A list of cross-references will also be compiled by waiting. However, in most cases the subjects are established relatively quickly as the new area becomes a part of modern culture, and many books start to surface on the same topic.? At what point during the cataloguing process should this happen? When new subject headings need to be created. </h3>

                            <div>
                                <input type="radio" name="question-96-answers" id="question-96-answers-A" value="A" />
                                <label for="question-96-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-96-answers" id="question-96-answers-B" value="B" />
                                <label for="question-96-answers-B">B)False</label>
                            </div>
                        </span>
                        <span>
                            <h3> 97) ? Although it is rare for the main subject heading to change because of usage, it has happened. For example ?Pluralism (Social sciences)? was changed to ?Cultural pluralism.? In these rare cases what should happen to the  old subject heading (i.e. Pluralism (Social sciences)).It should become a cross reference. </h3>

                            <div>
                                <input type="radio" name="question-97-answers" id="question-97-answers-A" value="A" />
                                <label for="question-97-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-97-answers" id="question-97-answers-B" value="B" />
                                <label for="question-97-answers-B">B)False</label>
                            </div>
                        </span>
                        <span>
                            <h3> 98) ?Here are entered works on the condition in which numerous distinct ethnic, religious, or cultural groups coexist within one society. Works on policies or programs that foster the preservation of different cultural identities, including customs, languages, and beliefs, within a unified society such as a state or nation, are entered under Multiculturalism. Works on the blending of elements from two or more cultures, often producing a distinctive successor culture, are entered under Cultural fusion.? This statement is a typical example of what item in subject heading in Library of congress subject heading? A Scope note.  </h3>

                            <div>
                                <input type="radio" name="question-98-answers" id="question-98-answers-A" value="A" />
                                <label for="question-98-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-98-answers" id="question-98-answers-B" value="B" />
                                <label for="question-98-answers-B">B)False</label>
                            </div>
                        </span>
                        <h3> 99) What is the term clarifies the relationship between a name and the work with which it is associated called? These terms are more often used with non-print materials, such as music or film, than for book cataloging but can also be used in book cataloguing. Realtor term</h3>

                        <div>
                            <input type="radio" name="question-99-answers" id="question-99-answers-A" value="A" />
                            <label for="question-99-answers-A">A)True</label>
                        </div>

                        <div>
                            <input type="radio" name="question-99-answers" id="question-99-answers-B" value="B" />
                            <label for="question-99-answers-B">B)False</label>
                        </div>
                        </span>
                        <span>
                            <h3> 100) Assertion A: ?Name Authority File? should be used in a library. Reason R: All works of an author should be collocated.</h3>

                            <div>
                                <input type="radio" name="question-100-answers" id="question-100-answers-A" value="A" />
                                <label for="question-100-answers-A">A)A is true, but R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-100-answers" id="question-100-answers-B" value="B" />
                                <label for="question-100-answers-B">B)Both A and R true and R is the correct explanation of A</label>
                            </div>

                            <div>
                                <input type="radio" name="question-100-answers" id="question-100-answers-C" value="C" />
                                <label for="question-100-answers-C">C)A is false, but R is true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-100-answers" id="question-100-answers-D" value="D" />
                                <label for="question-100-answers-D">D)Both A and R are false</label>
                            </div>
                        </span>
                        <span>
                            <h3> 101) Assertion A: Modern Integrated Library Management Softwares offer user friendly Graphical User Interfaces (GUI) on
                                the web. Reason R: Almost every module of modern Integrated Library Management Software is accessible through the
                                internet. </h3>

                            <div>
                                <input type="radio" name="question-101-answers" id="question-101-answers-A" value="A" />
                                <label for="question-101-answers-A">A)Both A and R are correct.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-101-answers" id="question-101-answers-B" value="B" />
                                <label for="question-101-answers-B">B)is correct but R is wrong.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-101-answers" id="question-101-answers-C" value="C" />
                                <label for="question-101-answers-C">C)Both A and R are wrong.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-101-answers" id="question-101-answers-D" value="D" />
                                <label for="question-100-answers-D">D)A is wrong but R is correct.</label>
                            </div>
                        </span>

                    </section>
                    <section id="page6" class="step">


                        <span>
                            <h3> 102) Assertion A: Classification plays a significant role in online retrieval. Reason R: Classification played an important
                                role in manual system. </h3>

                            <div>
                                <input type="radio" name="question-102-answers" id="question-102-answers-A" value="A" />
                                <label for="question-102-answers-A">A)A is true, but R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-102-answers" id="question-102-answers-B" value="B" />
                                <label for="question-102-answers-B">B)Both A and R are false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-102-answers" id="question-102-answers-C" value="C" />
                                <label for="question-102-answers-C">C)Both A and R are true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-102-answers" id="question-102-answers-D" value="D" />
                                <label for="question-102-answers-D">D)A is false, but R is true</label>
                            </div>
                        </span>
                        <span>
                            <h3> 103) Assertion A: Abstracting services facilitate literature review. Reason R: Literature review summarises major findings
                                of various studies. </h3>

                            <div>
                                <input type="radio" name="question-103-answers" id="question-103-answers-A" value="A" />
                                <label for="question-103-answers-A">A)A is true, but R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-103-answers" id="question-103-answers-B" value="B" />
                                <label for="question-103-answers-B">B)A is false, but R is true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-103-answers" id="question-103-answers-C" value="C" />
                                <label for="question-103-answers-C">C)Both A and R are true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-103-answers" id="question-103-answers-D" value="D" />
                                <label for="question-103-answers-D">D)Both A and R are false.</label>
                            </div>
                        </span>
                        <span>
                            <h3> 104) Assertion A: Colon classification is an enumerative classification scheme. Reason R: Colon classification has adopted
                                analytico-synthetic approach for the construction of class number. </h3>

                            <div>
                                <input type="radio" name="question-104-answers" id="question-104-answers-A" value="A" />
                                <label for="question-104-answers-A">A)A is false, but R is true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-104-answers" id="question-104-answers-B" value="B" />
                                <label for="question-104-answers-B">B)A is true, but R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-104-answers" id="question-104-answers-C" value="C" />
                                <label for="question-104-answers-C">C)Both A and R are true.Both A and R are true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-104-answers" id="question-104-answers-D" value="D" />
                                <label for="question-103-answers-D">D)Both A and R are false.</label>
                            </div>
                        </span>
                       
                        <span>
                            <h3> 105) Assertion A: An indexing language is an artificial language and it uses controlled vocabulary. Reason R: Controlled
                                vocabulary provides relation between and among terms. </h3>

                            <div>
                                <input type="radio" name="question-105-answers" id="question-105-answers-A" value="A" />
                                <label for="question-105-answers-A">A)Both A and R are true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-105-answers" id="question-105-answers-B" value="B" />
                                <label for="question-105-answers-B">B)A is true, but R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-105-answers" id="question-105-answers-C" value="C" />
                                <label for="question-105-answers-C">C)A is false, but R is true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-105-answers" id="question-105-answers-D" value="D" />
                                <label for="question-105-answers-D">D)Both A and R are false.</label>
                            </div>
                        </span>
                        <span>
                            <h3> 106) Assertion A: Metadata hold much promise for information retrieval and access in the digital age. Reason R: Metadata
                                can save a number of functions including description, resource discovery and management of resources. </h3>

                            <div>
                                <input type="radio" name="question-106-answers" id="question-106-answers-A" value="A" />
                                <label for="question-106-answers-A">A)A is true, but R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-106-answers" id="question-106-answers-B" value="B" />
                                <label for="question-106-answers-B">B)A is false, but R is true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-106-answers" id="question-106-answers-C" value="C" />
                                <label for="question-106-answers-C">C)Both A and R are true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-106-answers" id="question-106-answers-D" value="D" />
                                <label for="question-106-answers-D">D)Both A and R are false.</label>
                            </div>
                        </span>
                        <span>
                            <h3> 107) Assertion A: A combination of hypertext and Hypermedia contains text, images, sounds and other information. Reason
                                R: Hypermedia information is represented in a linear fashion. </h3>

                            <div>
                                <input type="radio" name="question-107-answers" id="question-107-answers-A" value="A" />
                                <label for="question-107-answers-A">A)A is true and R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-107-answers" id="question-107-answers-B" value="B" />
                                <label for="question-107-answers-B">B)Both A and R are true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-107-answers" id="question-107-answers-C" value="C" />
                                <label for="question-107-answers-C">C)A is false and R is true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-107-answers" id="question-107-answers-D" value="D" />
                                <label for="question-107-answers-D">D)Both A and R are false.</label>
                            </div>
                        </span>
                        <span>
                            <h3> 108) Assertion A: RDF supports the use and exchange of metadata on the web. Reason R: Bibliographic standards are the means
                                to create and disseminate secondary information. </h3>

                            <div>
                                <input type="radio" name="question-108-answers" id="question-108-answers-A" value="A" />
                                <label for="question-108-answers-A">A)A is true, R is false.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-108-answers" id="question-108-answers-B" value="B" />
                                <label for="question-108-answers-B">B)A is false, R is true.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-108-answers" id="question-108-answers-C" value="C" />
                                <label for="question-108-answers-C">C)Both A and R are correct.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-108-answers" id="question-108-answers-D" value="D" />
                                <label for="question-108-answers-D">D)Both A and R are false</label>
                            </div>
                        </span>





                        <span>

                            <h3> 109) Which of the following is not true. Resource Description and Access (RDA) is:</h3>

                            <div>
                                <input type="radio" name="question-109-answers" id="question-109-answers-A" value="A" />
                                <label for="question-109-answers-A">A)A package of data element guide lines and instructions for creating library resource metadata.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-109-answers" id="question-109-answers-B" value="B" />
                                <label for="question-109-answers-B">B)A package of data element guidelines and instructions for creating cultural heritage resource metadata.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-109-answers" id="question-109-answers-C" value="C" />
                                <label for="question-109-answers-C">C)A display standard for library metadata.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-109-answers" id="question-109-answers-D" value="D" />
                                <label for="question-109-answers-D">D)A guideline and instruction for cataloguing the Internet</label>
                            </div>


                        </span>

                        <span>

                            <h3> 110) RDA was developed to meet the needs of:</h3>

                            <div>
                                <input type="radio" name="question-110-answers" id="question-110-answers-A" value="A" />
                                <label for="question-110-answers-A">A)Linked data community.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-110-answers" id="question-110-answers-B" value="B" />
                                <label for="question-110-answers-B">B)Cultural heritage communities.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-110-answers" id="question-110-answers-C" value="C" />
                                <label for="question-110-answers-C">C)International communities.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-110-answers" id="question-110-answers-D" value="D" />
                                <label for="question-110-answers-D">D)All of the above</label>
                            </div>


                        </span>

                        <span>

                            <h3> 111) The RDA entities, elements, relationship designators and vocabulary encoding schemes are represented in:</h3>

                            <div>
                                <input type="radio" name="question-111-answers" id="question-111-answers-A" value="A" />
                                <label for="question-111-answers-A">A)RDF.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-111-answers" id="question-111-answers-B" value="B" />
                                <label for="question-111-answers-B">B)Syntax of open linked data.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-111-answers" id="question-111-answers-C" value="C" />
                                <label for="question-111-answers-C">C)Semantic Web</label>
                            </div>

                            <div>
                                <input type="radio" name="question-111-answers" id="question-111-answers-D" value="D" />
                                <label for="question-111-answers-D">D)All of the above.</label>
                            </div>


                        </span>


                        <span>

                            <h3> 112) The conceptual models FRBR and FRAD in RDA are important for all but one of these reasons:</h3>

                            <div>
                                <input type="radio" name="question-112-answers" id="question-112-answers-A" value="A" />
                                <label for="question-112-answers-A">A)They allow for a better understanding of bibliographic and authority data.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-112-answers" id="question-112-answers-B" value="B" />
                                <label for="question-112-answers-B">B)They identify and define bibliographic entities, their attributes and the relationship between them.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-112-answers" id="question-112-answers-C" value="C" />
                                <label for="question-112-answers-C">C)They relate recorded in bibliographic and authority records to the needs of users. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-112-answers" id="question-112-answers-D" value="D" />
                                <label for="question-112-answers-D">D)They display the bibliographic description of library materials.</label>
                            </div>


                        </span>

                        <span>

                            <h3> 113) Find, identify, select and obtain (fiso) are:</h3>

                            <div>
                                <input type="radio" name="question-113-answers" id="question-113-answers-A" value="A" />
                                <label for="question-113-answers-A">A)User tasks identified in FRBR.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-113-answers" id="question-113-answers-B" value="B" />
                                <label for="question-113-answers-B">B)User tasks identified in FRASAR. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-113-answers" id="question-113-answers-C" value="C" />
                                <label for="question-113-answers-C">C)User tasks identified in FRAD.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-113-answers" id="question-113-answers-D" value="D" />
                                <label for="question-113-answers-D">D)User tasks identified in RDF.</label>
                            </div>


                        </span>

                        <span>

                            <h3> 114) Find, identify, contextualise and justify are:</h3>

                            <div>
                                <input type="radio" name="question-114-answers" id="question-114-answers-A" value="A" />
                                <label for="question-114-answers-A">A)User tasks identified in FRASAR.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-114-answers" id="question-114-answers-B" value="B" />
                                <label for="question-114-answers-B">B)User tasks identified in RDF. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-114-answers" id="question-114-answers-C" value="C" />
                                <label for="question-114-answers-C">C)User tasks identified in FRAR.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-114-answers" id="question-114-answers-D" value="D" />
                                <label for="question-114-answers-D">D)User tasks identified in FRAD</label>
                            </div>


                        </span>

                        <span>

                            <h3> 115) Identify the correct sequence of entities in Group 1 of Functional Requirements of Bibliographic Records (FRBR): </h3>

                            <div>
                                <input type="radio" name="question-115-answers" id="question-115-answers-A" value="A" />
                                <label for="question-115-answers-A">A)Expression, Works, Items, Manifestation.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-115-answers" id="question-115-answers-B" value="B" />
                                <label for="question-115-answers-B">B)Works, Items, Expression, Manifestation.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-115-answers" id="question-115-answers-C" value="C" />
                                <label for="question-115-answers-C">C)Works, Expression, Manifestation, Items.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-115-answers" id="question-115-answers-D" value="D" />
                                <label for="question-115-answers-D">D)Works, Expression, Items, Manifestation.</label>
                            </div>


                        </span>

                        <span>

                            <h3> 116) MARC stands for:: </h3>

                            <div>
                                <input type="radio" name="question-116-answers" id="question-116-answers-A" value="A" />
                                <label for="question-116-answers-A">A)Machine Readable Catalogue.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-116-answers" id="question-116-answers-B" value="B" />
                                <label for="question-116-answers-B">B)Machine Readable Character.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-116-answers" id="question-116-answers-C" value="C" />
                                <label for="question-116-answers-C">C)Machine Readable Code.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-116-answers" id="question-116-answers-D" value="D" />
                                <label for="question-116-answers-D">D)Machine Readable Cataloguing.</label>
                            </div>


                        </span>

                        <span>

                            <h3> 117) Which of the following items of MARC formats provides the call number, shelf location, volumes held by library, etc,:
                            </h3>

                            <div>
                                <input type="radio" name="question-117-answers" id="question-117-answers-A" value="A" />
                                <label for="question-117-answers-A">A)Authority records format.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-117-answers" id="question-117-answers-B" value="B" />
                                <label for="question-117-answers-B">B)Bibliographic records format.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-117-answers" id="question-117-answers-C" value="C" />
                                <label for="question-117-answers-C">C)Classification records format.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-117-answers" id="question-117-answers-D" value="D" />
                                <label for="question-117-answers-D">D)Holding records format.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-117-answers" id="question-117-answers-E" value="E" />
                                <label for="question-117-answers-D">E)Community information records format</label>
                            </div>


                        </span>

                        <span>

                            <h3> 118) MARC21 is a result of the combination of the formats of all but one of the following: </h3>

                            <div>
                                <input type="radio" name="question-118-answers" id="question-118-answers-A" value="A" />
                                <label for="question-118-answers-A">A)United States formats (USMARC).</label>
                            </div>

                            <div>
                                <input type="radio" name="question-118-answers" id="question-118-answers-B" value="B" />
                                <label for="question-118-answers-B">B)Canadian MARC formats (CANMARC).</label>
                            </div>

                            <div>
                                <input type="radio" name="question-118-answers" id="question-118-answers-C" value="C" />
                                <label for="question-118-answers-C">C)Union MARC of Europe (UNIMARC).</label>
                            </div>

                            <div>
                                <input type="radio" name="question-118-answers" id="question-118-answers-D" value="D" />
                                <label for="question-118-answers-D">D)Australian MARC (AUSIMARC).</label>
                            </div>


                        </span>

                        <span>

                            <h3> 119) RDA is a content standard while MARC is a metadata transmission standard. </h3>

                            <div>
                                <input type="radio" name="question-119-answers" id="question-119-answers-A" value="A" />
                                <label for="question-119-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-119-answers" id="question-119-answers-B" value="B" />
                                <label for="question-119-answers-B">B)False</label>
                            </div>

                        </span>

                        <span>

                            <h3> 120) MARC uses ISO 2709 standard to define the structure of individual records. </h3>

                            <div>
                                <input type="radio" name="question-120-answers" id="question-120-answers-A" value="A" />
                                <label for="question-120-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-120-answers" id="question-120-answers-B" value="B" />
                                <label for="question-120-answers-B">B)False</label>
                            </div>

                        </span>

                    </section>

                    <section id="page7" class="step">				

                        <span>

                            <h3> 121) When a cataloguer provides information about individual names, subjects, and uniform titles and establishes an authorized form of each heading, with references as appropriate from other forms of the heading.  The cataloguer is producing an ?..Authority record </h3>

                            <div>
                                <input type="radio" name="question-121-answers" id="question-121-answers-A" value="A" />
                                <label for="question-121-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-121-answers" id="question-121-answers-B" value="B" />
                                <label for="question-121-answers-B">B)False</label>
                            </div>

                        </span>
                        <span>

                            <h3> 122) When a cataloguer describes the intellectual and physical characteristics of bibliographic resources (books, sound recordings, video recordings, and so forth). The cataloguer would be said to have produced a?.Bibliographic record</h3>

                            <div>
                                <input type="radio" name="question-122-answers" id="question-122-answers-A" value="A" />
                                <label for="question-122-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-122-answers" id="question-122-answers-B" value="B" />
                                <label for="question-122-answers-B">B)False</label>
                            </div>

                        </span>
                        <span>

                            <h3> 123) MARC records containing classification data. For example, the Library of Congress Classification has been encoded using the MARC 21 Classification format. The product is called?. Classification records  </h3>

                            <div>
                                <input type="radio" name="question-123-answers" id="question-123-answers-A" value="A" />
                                <label for="question-123-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-123-answers" id="question-123-answers-B" value="B" />
                                <label for="question-123-answers-B">B)False</label>
                            </div>

                        </span>
                        <span>

                            <h3> 124) MARC records describing a service providing agency, for example, the local post office or internet provider are called Community Information records. </h3>

                            <div>
                                <input type="radio" name="question-124-answers" id="question-124-answers-A" value="A" />
                                <label for="question-124-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-124-answers" id="question-124-answers-B" value="B" />
                                <label for="question-124-answers-B">B)False</label>
                            </div>

                        </span>
                        <span>

                            <h3> 125) BIBFRAME is slated to replace MARC. </h3>

                            <div>
                                <input type="radio" name="question-125-answers" id="question-125-answers-A" value="A" />
                                <label for="question-125-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-125-answers" id="question-125-answers-B" value="B" />
                                <label for="question-125-answers-B">B)False</label>
                            </div>

                        </span>

                        <span>

                            <h3> 126) Online Public Access Catalogue (OPAC) is purposely meant for the user instead of the library staff. </h3>

                            <div>
                                <input type="radio" name="question-126-answers" id="question-126-answers-A" value="A" />
                                <label for="question-126-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-126-answers" id="question-126-answers-B" value="B" />
                                <label for="question-126-answers-B">B)False</label>
                            </div>

                        </span>

                        <span>

                            <h3> 127) OPAC has interfaces through which the system communicates bibliographic information to users in an interactive manner.
                            </h3>

                            <div>
                                <input type="radio" name="question-127-answers" id="question-127-answers-A" value="A" />
                                <label for="question-127-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-127-answers" id="question-127-answers-B" value="B" />
                                <label for="question-127-answers-B">B)False</label>
                            </div>

                        </span>

                        <span>

                            <h3> 128) OPAC allows the user to search for information in more ways than the traditional card catalogue allows. There more
                                number of access points with little information. </h3>

                            <div>
                                <input type="radio" name="question-128-answers" id="question-128-answers-A" value="A" />
                                <label for="question-128-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-128-answers" id="question-128-answers-B" value="B" />
                                <label for="question-128-answers-B">B)False</label>
                            </div>

                        </span>

                        <span>

                            <h3> 129) Which of the following is the primary advantage of a university library using an online cataloging system? </h3>

                            <div>
                                <input type="radio" name="question-129-answers" id="question-129-answers-A" value="A" />
                                <label for="question-129-answers-A">A)A certified librarian is no longer needed to manage the library. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-129-answers" id="question-129-answers-B" value="B" />
                                <label for="question-129-answers-B">B)Users may manage their accounts remotely.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-129-answers" id="question-129-answers-B" value="C" />
                                <label for="question-129-answers-C">C)Users?catalogue use history may be accessed.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-129-answers" id="question-129-answers-B" value="D" />
                                <label for="question-129-answers-D">D)The cataloguers are free to do other tasks. </label>
                            </div>

                        </span>

                        <span>

                            <h3> 130) Arrange the following web browsers in chronological order: (i) Safari. (ii) Chrome. (iii) Netscape Navigator. (iv)
                                Firefox. </h3>

                            <div>
                                <input type="radio" name="question-130-answers" id="question-130-answers-A" value="A" />
                                <label for="question-130-answers-A">A)(iv) (i) (ii) (iii). </label>
                            </div>

                            <div>
                                <input type="radio" name="question-130-answers" id="question-130-answers-B" value="B" />
                                <label for="question-130-answers-B">B)(i) (ii) (iii) (iv).</label>
                            </div>

                            <div>
                                <input type="radio" name="question-130-answers" id="question-130-answers-C" value="C" />
                                <label for="question-130-answers-C">C)(ii) (i) (iv) (iii).</label>
                            </div>

                            <div>
                                <input type="radio" name="question-130-answers" id="question-130-answers-D" value="D" />
                                <label for="question-130-answers-D">D)(iii) (i) (iv) (ii) </label>
                            </div>

                        </span>

                        <span>

                            <h3> 131) The concept of Artificial Intelligence (AI) belongs to ____________________ </h3>

                            <div>
                                <input type="radio" name="question-131-answers" id="question-131-answers-A" value="A" />
                                <label for="question-131-answers-A">A) Second Generation Computers. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-131-answers" id="question-131-answers-B" value="B" />
                                <label for="question-131-answers-B">B)Third Generation Computers.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-131-answers" id="question-131-answers-C" value="C" />
                                <label for="question-131-answers-C">C)Fourth Generation Computers.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-131-answers" id="question-131-answers-D" value="D" />
                                <label for="question-131-answers-D">D)Fifth Generation Computers </label>
                            </div>

                        </span>

                        <span>

                            <h3> 132) Virtua accommodates Different version of the MARC Standard </h3>

                            <div>
                                <input type="radio" name="question-132-answers" id="question-132-answers-A" value="A" />
                                <label for="question-132-answers-A">A)USMARC. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-132-answers" id="question-132-answers-B" value="B" />
                                <label for="question-132-answers-B">B)UKMARC.</label>
                            </div>

                            <div>
                                <input type="radio" name="question-132-answers" id="question-132-answers-C" value="C" />
                                <label for="question-132-answers-C">C)CANMARC</label>
                            </div>

                            <div>
                                <input type="radio" name="question-132-answers" id="question-132-answers-D" value="D" />
                                <label for="question-132-answers-D">D)SWEMARC/All of above</label>
                            </div>

                        </span>
                        <span>

                            <h3> 133) Which one is E-Bibliographic database? </h3>

                            <div>
                                <input type="radio" name="question-133-answers" id="question-133-answers-A" value="A" />
                                <label for="question-133-answers-A">A)Nature. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-133-answers" id="question-133-answers-B" value="B" />
                                <label for="question-133-answers-B">B)Blackwell</label>
                            </div>

                            <div>
                                <input type="radio" name="question-133-answers" id="question-133-answers-C" value="C" />
                                <label for="question-133-answers-C">C)ISID</label>
                            </div>

                            <div>
                                <input type="radio" name="question-133-answers" id="question-133-answers-D" value="D" />
                                <label for="question-133-answers-D">D)Springer</label>
                            </div>

                        </span>
                        <span>

                            <h3> 134) Familiar with terminology and basic structure of the Internet and of the World Wide Web (websites, webpages, etc.) ? Familiar with internet connection procedures and methods including LAN and WiFi connections as well as troubleshooting procedures ? Access Web content using common browsers and understand URLs, including entering a URL ? Change the default home page ? Clear temporary Internet files and clear history ? Find specific text in web pages ? Download and save files from the Internet including video, audio, and images ? Demonstrate familiarity with Web-based applications (in the ?cloud?) versus desktop applications ? Print from web page ? Know common plug-ins such as Acrobat, Flash. These are basic competencies required for using web technology for the cataloguing process.  </h3>

                            <div>
                                <input type="radio" name="question-134-answers" id="question-134-answers-A" value="A" />
                                <label for="question-134-answers-A">A)True </label>
                            </div>

                            <div>
                                <input type="radio" name="question-134-answers" id="question-134-answers-B" value="B" />
                                <label for="question-134-answers-B">B)False</label>
                            </div>

                        </span>
                        <span>

                            <h3> 135) MySpace, FaceBook, Del.icio.us, Frappr, and Flickr are networks that have enjoyed massive popularity in Web 2.0. They are not social media sites.</h3>

                            <div>
                                <input type="radio" name="question-135-answers" id="question-135-answers-A" value="A" />
                                <label for="question-135-answers-A">A)True </label>
                            </div>

                            <div>
                                <input type="radio" name="question-135-answers" id="question-135-answers-B" value="B" />
                                <label for="question-135-answers-B">B)False</label>
                            </div>

                        </span>
                        <span>

                            <h3> 136) End users access cloud based applications through a web browser or a light weight desktop or mobile app while the business software and data are stored on servers at a remote location.</h3>

                            <div>
                                <input type="radio" name="question-136-answers" id="question-136-answers-A" value="A" />
                                <label for="question-136-answers-A">A)True </label>
                            </div>

                            <div>
                                <input type="radio" name="question-136-answers" id="question-136-answers-B" value="B" />
                                <label for="question-136-answers-B">B)False</label>
                            </div>

                        </span>
                        <span>

                            <h3> 137) ?Understands terminology and functions of basic computer (CPU, monitor, keyboard, mouse memory, hard drive, server, operating system, cloud storage, USB) Turn a computer on and off correctly . Use mouse, keyboard, and function keys . Recognize important of backing up files and how to do so . Disconnect and reconnect cables, cords and connections .Understands basic printer functions and troubleshooting procedures, including adding paper, replacing ink/toner cartridge, and clearing paper jams.? This is a typical:</h3>

                            <div>
                                <input type="radio" name="question-137-answers" id="question-137-answers-A" value="A" />
                                <label for="question-137-answers-A">A)Basic Computer Hardware and Peripherals Knowledge and Skills required by a cataloguer</label>
                            </div>

                            <div>
                                <input type="radio" name="question-137-answers" id="question-137-answers-B" value="B" />
                                <label for="question-137-answers-B">B)Expert Computer Hardware and Peripherals Knowledge and Skills required by a cataloguer</label>
                            </div>

                            <div>
                                <input type="radio" name="question-137-answers" id="question-137-answers-C" value="C" />
                                <label for="question-137-answers-C">C)Advanced  computer Hardware and Peripherals Knowledge and Skills required by a cataloguer</label>
                            </div>

                        </span>
                        <span>

                            <h3> 138)? Open and close applications correctly ? Open and save files to network shared drive(s) ? Locate and use tutorials or help ? Move between documents and windows ? Print all or part of a document ? Able to cut, copy and paste. These are software skills required for cataloguing. </h3>

                            <div>
                                <input type="radio" name="question-138-answers" id="question-138-answers-A" value="A" />
                                <label for="question-138-answers-A">A)True </label>
                            </div>

                            <div>
                                <input type="radio" name="question-138-answers" id="question-138-answers-B" value="B" />
                                <label for="question-138-answers-B">B)False</label>
                            </div>

                        </span>
                        <span>

                            <h3> 139) ? Perform keyword, author, and title searches ? Use advanced search strategies such as ISBN, format, etc. ? Limit, restrict, expand, and sort searches ? Determine due date, status, and location of items in the collection ?  Find and use other library catalogs ? Demonstrates a basic understanding of metadata schema. These are skills that must be acquired by cataloguers</h3>

                            <div>
                                <input type="radio" name="question-139-answers" id="question-139-answers-A" value="A" />
                                <label for="question-139-answers-A">A)True </label>
                            </div>

                            <div>
                                <input type="radio" name="question-139-answers" id="question-139-answers-B" value="B" />
                                <label for="question-139-answers-B">B)False</label>
                            </div>

                        </span>
                        <span>

                            <h3> 140) Web Page Creation and Maintenance ? Create a basic web page using library?s web page software ? Update existing web page using library?s web page software ? Obtain/renew domain name ? Use HTML, CSS, scripting, and database enabling to create and update web pages. These are:</h3>

                            <div>
                                <input type="radio" name="question-140-answers" id="question-140-answers-A" value="A" />
                                <label for="question-140-answers-A">A)Basic Knowledge and Skills required by a cataloguer</label>
                            </div>

                            <div>
                                <input type="radio" name="question-140-answers" id="question-140-answers-B" value="B" />
                                <label for="question-140-answers-B">B)Expert  Knowledge and Skills required by a cataloguer</label>
                            </div>
                            <div>
                                <input type="radio" name="question-140-answers" id="question-140-answers-C" value="C" />
                                <label for="question-140-answers-C">C)Advanced Knowledge and Skills required by a cataloguer </label>
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

                <p>Copyright ©
                    <a href="#">NandomGusen</a> 2018. All rights reserved.</p>

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