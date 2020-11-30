<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>회원 정보 수정</title>
    <link rel="stylesheet" href="static/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bungee">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:400,600,800">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Condensed">
    <link rel="stylesheet" href="static/assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="static/assets/css/--mp---Multiple-items-slider-responsive.css">
    <link rel="stylesheet" href="static/assets/css/Comment.css">
    <link rel="stylesheet" href="static/assets/css/Footer-Clean.css">
    <link rel="stylesheet" href="static/assets/css/Grid-and-List-view-V10-1.css">
    <link rel="stylesheet" href="static/assets/css/Grid-and-List-view-V10.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
    <link rel="stylesheet" href="static/assets/css/Media-Slider-Bootstrap-3-1.css">
    <link rel="stylesheet" href="static/assets/css/Media-Slider-Bootstrap-3.css">
    <link rel="stylesheet" href="static/assets/css/Simple-Slider.css">
    <link rel="stylesheet" href="static/assets/css/styles.css">
    <link rel = "preconnect"href = "https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">   
</head>

<body>
    <div id="navigation-block">
        <nav class="navbar navbar-light navbar-expand-md d-flex">
            <div class="container-fluid"><a class="navbar-brand" style="font-family: Bungee, cursive;padding-left: 20px;font-size: 31px;" href="MAIN.html">Local libarary</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
               
            </div>
        </nav>
    </div>
    <style type="text/css">
        :root{
            --body-background-color: white;
            --font-color: #4e4e4e;
            --border-gray-color : #dadada;
            --naver-green-color: rgb(38,166,67);
            --naver-green-border-color:rgb(38,166,67);
        }
    
    
        *{
            margin:0;
            padding:0;
        }
    
        .main-container{
            width:100%;
            display:flex;
            flex-direction:column;
            align-items:center;
            margin-top: 150px;
            margin: 0 auto;
            padding-bottom: 100px;
        
        }
        .main-container .main-wrap{
            width:768px;
    
        }
    
        .main-container .main-wrap .logo-wrap{
            padding-top:55px;
            color:rgb(38,166,67);
        }
    
    
        .main-container .main-wrap header .sel-lang-wrap{
            display:flex;
            justify-content:flex-end;
        }
    
        .main-container .main-wrap header .logo-wrap{
            display:flex;	
            flex-direction: column;
            align-items: center;
            
        }
        .updateUserInfo-input-section-wrap{
            padding-top: 60px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
    
        .updateUserInfo-input-wrap{
            width: 465px;
            height :48px;
            border: solid 1px var(	--border-gray-color );
            background: white;
        }
        .password-wrap{
            margin-top: 13px;
            margin-bottom: 13px;
        }
    
        .nickname-wrap{
            width: 465px;
            height :48px;
            border: solid 1px var(	--border-gray-color );
            background: white;
        }
        .phonenumber-wrap{
            margin-top: 13px;
            margin-bottom: 13px;
        }
        .address-wrap{
            width: 465px;
            height :48px;
            border: solid 1px var(	--border-gray-color );
            background: white;
        }
        .dealaddress-wrap{
            margin-top: 13px;
            margin-bottom: 13px;
        }
        
        .updateUserInfo-input-wrap input{
            border: none;
            width:430px;
            margin-top: 10px;
            font-size: 14px;
            margin-left: 10px;
            height:30px;
        }
        .updateUserInfo-button-wrap {
            padding-top: 13px;
        }
        .updateUserInfo-button-wrap button{
            width: 465px;
            height :48px;
            font-size: 18px;
            background: var(--naver-green-color);
            color: white;
            border: solid 1px var(--naver-green-border-color);
            border-radius: 15px;
            margin-bottom: 50px;
        
        }
        </style>
       
        
        <form method="post" action="/updateUserInfo">
            <div class="main-container" style="font-family: 'Do Hyeon', sans-serif;height: 100%; width: 40%; border:2px solid var(--naver-green-border-color); border-radius: 15px;">
                <div class="main-wrap" >
                <header>
                   
                    <div class="logo-wrap" >
                        <strong><h2 style="font-family: Bungee, cursive;">Local Library</h2></strong>
                    </div>
                </header>
                </div>
                <section class="updateUserInfo-input-section-wrap">
                    <div class="updateUserInfo-input-wrap" style="border-radius: 15px; ">	
                         <input placeholder="이름" type="text" name="customer_name"></input>
                    </div>
                    <div class="updateUserInfo-input-wrap password-wrap" style="border-radius: 15px;">	
                        <input placeholder="비밀번호" type="password" name="customer_pw"></input>
                    </div>
                    <div class="updateUserInfo-input-wrap nickname-wrap" style="border-radius: 15px;">	
                        <input placeholder="닉네임" type="text" name="customer_nickname"></input>
                    </div>
                    <div class="updateUserInfo-input-wrap phonenumber-wrap" style="border-radius: 15px;">	
                        <input placeholder="전화번호" type="text" name="customer_phone"></input>
                    </div>
                    <div class="updateUserInfo-input-wrap address-wrap" style="border-radius: 15px;">	
                        <input placeholder="주소" type="text" name="customer_address"></input>
                    </div>
                    <div class="updateUserInfo-input-wrap dealaddress-wrap" style="border-radius: 15px;">	
                        <input placeholder="거래주소" type="text" name="customer_deal_address"></input>
                    </div>
                    
                    <div class="updateUserInfo-button-wrap">
                        <button type="submit" value="회원정보 수정">수정하기</button>
                    </div>
                    
                </section>
                
            </div>
        </form>
     
    <script src="static/assets/js/jquery.min.js"></script>
    <script src="static/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="static/assets/js/bs-init.js"></script>
    <script src="static/assets/js/--mp---Multiple-items-slider-responsive-1.js"></script>
    <script src="static/assets/js/--mp---Multiple-items-slider-responsive.js"></script>
    <script src="static/assets/js/Grid-and-List-view-V10.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
    <script src="static/assets/js/Media-Slider-Bootstrap-3.js"></script>
    <script src="static/assets/js/Simple-Slider.js"></script>
</body>

</html>