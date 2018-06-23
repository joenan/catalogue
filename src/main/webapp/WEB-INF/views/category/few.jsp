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

                <form class="pure-form steps" method="post" action="${pageContext.request.contextPath}/fewscorequiz">

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
                    </section>
                 



                    <footer class="steps-nav">

                        <button type="button" class="prev pure-button">Previous</button>
                        <button type="button" class="next pure-button">Next</button>
                        <button type="submit" class="submit pure-button">Submit</button>

                    </footer>

                </form>

            </div>

            <footer role="contentinfo">

                <center><p>Copyright © <a href="#">NandomGusen</a> 2018. All rights reserved.</p></center>

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