<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<% List<HashMap<String, Object>> customer = (List<HashMap<String, Object>>)request.getAttribute("customer"); %>
<% List<HashMap<String, Object>> review = (List<HashMap<String, Object>>)request.getAttribute("review"); %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>book</title>
    <link rel="stylesheet" href="/static/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bungee">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:400,600,800">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Condensed">
    <link rel="stylesheet" href="/static/assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="/static/assets/css/--mp---Multiple-items-slider-responsive.css">
    <link rel="stylesheet" href="/static/assets/css/Comment.css">
    <link rel="stylesheet" href="/static/assets/css/Footer-Clean.css">
    <link rel="stylesheet" href="/static/assets/css/Grid-and-List-view-V10-1.css">
    <link rel="stylesheet" href="/static/assets/css/Grid-and-List-view-V10.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
    <link rel="stylesheet" href="/static/assets/css/Media-Slider-Bootstrap-3-1.css">
    <link rel="stylesheet" href="/static/assets/css/Media-Slider-Bootstrap-3.css">
    <link rel="stylesheet" href="/static/assets/css/Simple-Slider.css">
    <link rel="stylesheet" href="/static/assets/css/styles.css">
    <link rel="stylesheet" href="/static/assets/css/TextEditor.css">
</head>

<body>
<div id="navigation-block" style="padding-bottom: 38px;">
    <nav class="navbar navbar-light navbar-expand-md d-flex" style="border-bottom-style: solid;border-bottom-color: rgb(40,167,69);">
        <div class="container-fluid"><a class="navbar-brand" style="font-family: Bungee, cursive;padding-left: 20px;font-size: 31px;" href="/manager/main">Local libarary</a>
            <div class="collapse navbar-collapse d-flex" id="navcol-1">
                <ul class="nav navbar-nav ml-auto" style="margin-right: 6px;">
                    <li class="nav-item" style="margin-right: 5px;"><a class="nav-link active" href="/manager/book" style="font-size: 19px;font-family: 'Roboto Condensed', sans-serif;">도서 목록</a></li>
                    <li class="nav-item" style="margin-right: 3px;"><a class="nav-link active" href="/manager/promotion" style="font-size: 19px;font-family: 'Roboto Condensed', sans-serif;">프로모션 목록</a></li>
                    <li class="nav-item" style="margin-right: 5px;"><a class="nav-link active" href="/manager/report" style="font-size: 19px;font-family: 'Roboto Condensed', sans-serif;">신고 목록</a></li>
                    <li class="nav-item"><a class="nav-link active" href="/manager/sales/1" style="font-size: 19px;font-family: 'Roboto Condensed', sans-serif;">매출 통계</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>
    <div class="container"><strong style="font-size: 35px;margin-top: 30px;">회원신고</strong>
        <div class="table-responsive" style="margin-top: 34px;">
            <table class="table">
                <thead>
                    <tr>
                        <th style="text-align: center;">매칭 번호</th>
                        <th style="text-align: center;">신고 사유</th>
                        <th style="text-align: center;">신고 날짜</th>
                    </tr>
                </thead>
                <tbody style="text-align: center;">
                <%  for(HashMap<String , Object> map : customer){%>
                    <tr style="text-align: center;">
                        <td style="text-align: center;"><%=map.get("matching_seq")%></td>
                        <td style="text-align: center;"><a href="#" style="color: rgb(34,38,41);"><%=map.get("customer_report_reason")%></a></td>
                        <td style="text-align: center;"><%=map.get("customer_report_createAt")%></td>
                    </tr>
                <%}%>
                </tbody>
            </table>
        </div>
    </div>
    <div class="container"><strong style="font-size: 35px;margin-top: 30px;">리뷰 신고</strong>
        <div class="table-responsive" style="margin-top: 34px;">
            <table class="table">
                <thead>
                    <tr>
                        <th style="text-align: center;">리뷰 번호</th>
                        <th style="text-align: center;">신고 사유</th>
                        <th style="text-align: center;">신고 날짜</th>
                    </tr>
                </thead>
                <tbody style="text-align: center;">
                <% for(HashMap<String, Object> map : review){%>
                    <tr style="text-align: center;">
                        <td style="text-align: center;"><%=map.get("reivew_seq")%></td>
                        <td style="text-align: center;"><a href="#" style="color: rgb(34,38,41);"><%=map.get("review_report_reason")%></a></td>
                        <td style="text-align: center;"><%=map.get("review_report_createAt")%></td>
                    </tr>
                    <%}%>

                </tbody>
            </table>
        </div>
    </div>
    <script src="/static/assets/js/jquery.min.js"></script>
    <script src="/static/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static/assets/js/bs-init.js"></script>
    <script src="/static/assets/js/--mp---Multiple-items-slider-responsive-1.js"></script>
    <script src="/static/assets/js/--mp---Multiple-items-slider-responsive.js"></script>
    <script src="/static/assets/js/Grid-and-List-view-V10.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
    <script src="/static/assets/js/Media-Slider-Bootstrap-3.js"></script>
    <script src="/static/assets/js/Simple-Slider.js"></script>
    <script src="/static/assets/js/TextEditor.js"></script>
</body>

</html>