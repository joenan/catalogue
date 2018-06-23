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
                            <h3> 1) There are bound to be snags and things that need to be modified or changed in the process of cataloguing. One of the
                                following is not the best way to handle the challenges as they ensue? </h3>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-A" value="A" />
                                <label for="question-1-answers-A">A)Modifications should be seen as normal. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-B" value="B" />
                                <label for="question-1-answers-B">B)It is important to maintain a vision of what is essential to achieve the final goal. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-C" value="C" />
                                <label for="question-1-answers-C">C) Maintaining the sense of the big picture. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-1-answers" id="question-1-answers-D" value="D" />
                                <label for="question-1-answers-D">D) Drive the rest of the work force into a panic mode</label>
                            </div>
                        </span>

                        <span>

                            <h3> 2) Creating favorable conditions that cause cataloguers to get their work done should be the first priority every cataloguer
                                in the department. </h3>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-A" value="A" />
                                <label for="question-2-answers-A">A)True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-2-answers" id="question-2-answers-B" value="B" />
                                <label for="question-2-answers-B">B)False </label>
                            </div>
                        </span>

                    </section>
                    <section id="page5" class="step">


                        <span>
                            <h3> 3) Overall achievements in the cataloguing department are accomplished through a series of small steps. The ensuring that
                                all the small steps are meticulously taken care of results in the effective cataloguing services </h3>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-A" value="A" />
                                <label for="question-3-answers-A">A)True. </label>
                            </div>

                            <div>
                                <input type="radio" name="question-3-answers" id="question-3-answers-B" value="B" />
                                <label for="question-3-answers-B">B)False </label>
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