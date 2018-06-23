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
                            <h3> 1) Authority control is used maintain consistency tool in the cataloguing process. One of the following is not a function of authority control:Consistency of headings, provision of links from variants and other authorized forms of headings (cross referencing), shows usage and scope of headings (record that tell the user and/or the cataloger how the headings are applied), supporting manual and automatic error detection and correction. These are all functions of not Authority control.  </h3>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-A" value="A" />
                                <label for="question-1-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-B" value="B" />
                                <label for="question-1-answers-B">B)False</label>
                            </div>
                        </span>
                        <span>
                            <h3> 2) ?If the subject is a term that describes a new phenomena like cell phones or Wikis or AIDS, the subject cataloger may wait to see what terms surface as the most common terms for the subject. A list of cross-references will also be compiled by waiting. However, in most cases the subjects are established relatively quickly as the new area becomes a part of modern culture, and many books start to surface on the same topic.? At what point during the cataloguing process should this happen? When new subject headings need to be created. </h3>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-A" value="A" />
                                <label for="question-2-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-B" value="B" />
                                <label for="question-2-answers-B">B)False</label>
                            </div>
                        </span>
                        <span>
                            <h3> 3) ? Although it is rare for the main subject heading to change because of usage, it has happened. For example ?Pluralism (Social sciences)? was changed to ?Cultural pluralism.? In these rare cases what should happen to the  old subject heading (i.e. Pluralism (Social sciences)).It should become a cross reference. </h3>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-A" value="A" />
                                <label for="question-3-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-B" value="B" />
                                <label for="question-3-answers-B">B)False</label>
                            </div>
                        </span>
                        <span>
                            <h3> 4) ?Here are entered works on the condition in which numerous distinct ethnic, religious, or cultural groups coexist within one society. Works on policies or programs that foster the preservation of different cultural identities, including customs, languages, and beliefs, within a unified society such as a state or nation, are entered under Multiculturalism. Works on the blending of elements from two or more cultures, often producing a distinctive successor culture, are entered under Cultural fusion.? This statement is a typical example of what item in subject heading in Library of congress subject heading? A Scope note.  </h3>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-A" value="A" />
                                <label for="question-4-answers-A">A)True</label>
                            </div>

                            <div>
                                <input type="radio" name="question-4-answers" id="question-4-answers-B" value="B" />
                                <label for="question-4-answers-B">B)False</label>
                            </div>
                        </span>
                        <h3> 5) What is the term clarifies the relationship between a name and the work with which it is associated called? These terms are more often used with non-print materials, such as music or film, than for book cataloging but can also be used in book cataloguing. Realtor term</h3>

                        <div>
                            <input type="radio" name="question-5-answers" id="question-5-answers-A" value="A" />
                            <label for="question-5-answers-A">A)True</label>
                        </div>

                        <div>
                            <input type="radio" name="question-5-answers" id="question-5-answers-B" value="B" />
                            <label for="question-5-answers-B">B)False</label>
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

                <p>Copyright ?
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