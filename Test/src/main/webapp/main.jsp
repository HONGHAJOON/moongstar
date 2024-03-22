<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <title>�۹���</title>
    <style>
      body,
      html {
        margin: 0;
        padding: 0;
        height: 100%;
        font-family: "Pretendard-Regular", sans-serif; /* ��ü �۲� ���� */
      }

      .header {
        height: 10%;
        margin: 0 16.6%;
        display: flex;
        align-items: center;
        justify-content: space-between;
        color: white;
        padding: 0 20px;
        position: relative; /* �ΰ� �߾� ������ ���� position ���� */
      }

      .logo {
        height: 100%;
        max-height: 100%;
        width: auto;
        margin-top: 20px;
      }

      .user-info {
        display: flex;
        align-items: center;
        margin-left: 10px;
        font-size: 12px;
        margin-top: 10px;
      }

      .user-info a {
        margin-right: 10px;
        margin-top: 30px;
      }

      .user-info img {
        height: 100%;
        border-radius: 100%;
      }

      /* �ϴ� �� ��Ÿ�� */
      .header-line {
        border-top: 2px solid rgb(221, 224, 224);
        margin-top: 10px; /* ���� ��� ������ ���� ���� */
      }

      /* �߾� �ΰ� ��Ÿ�� */
      .center-logo {
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
      }
      .container {
        display: flex;
        justify-content: center;
      }

      .slider {
        width: 1280px;
        height: 250px;
        border-radius: 40px;
        overflow: hidden;
        position: relative;
        margin: 10px 16.6%;
      }

      .slider img {
        width: 100%;
        height: 250px;
        position: absolute;
        transition: left 3s ease-in-out;
        border-radius: 10px; /* ���ʿ��� border-radius ���� */
      }

      .dots-container {
        text-align: center;
      }

      .dot {
        display: inline-block;
        width: 11px;
        height: 11px;
        background-color: #c5c5c5;
        border-radius: 50%;
        margin: 0 5px;
        cursor: pointer;
      }

      .dot.active {
        background-color: #fed74b;
      }
    </style>
  </head>
  <body>
    <div class="header">
      <div class="logo">
        <img src="image/logo.png" alt="Logo" width="90px" />
      </div>
      <div class="center-logo">
        <img src="image/cen_logo.png" alt="Cen Logo" width="90px" />
      </div>
      <div class="user-info">
        <a href="#">�α���</a>
        <a href="#">ȸ������</a>
        <img src="image/profile.png" alt="Profile" width="50px" />
      </div>
    </div>
    <div class="header-line"></div>
    <div class="container">
      <div class="slider">
        <div class="img">
          <img src="image/banner1.png" alt="�̹��� 1" />
        </div>
        <div class="img">
          <img src="image/banner2.png" alt="�̹��� 2" />
        </div>
        <div class="img">
          <img src="image/cat.jpg" alt="�̹��� 3" />
        </div>
      </div>
    </div>
    <div class="dots-container">
      <span
        class="dot active"
        onclick="currentSlide = 0; showSlide(currentSlide);"
      ></span>
      <span
        class="dot"
        onclick="currentSlide = 1; showSlide(currentSlide);"
      ></span>
      <span
        class="dot"
        onclick="currentSlide = 2; showSlide(currentSlide);"
      ></span>
    </div>
    <script>
      let currentSlide = 0;
      const slides = document.querySelectorAll(".img");
      const dots = document.querySelectorAll(".dot");
      const slideCount = slides.length;

      function showSlide(n) {
        slides.forEach((slide) => (slide.style.display = "none"));
        slides[n].style.display = "block";
        dots.forEach((dot) => dot.classList.remove("active"));
        dots[n].classList.add("active");
      }

      function nextSlide() {
        currentSlide = (currentSlide + 1) % slideCount;
        showSlide(currentSlide);
      }

      function prevSlide() {
        currentSlide = (currentSlide - 1 + slideCount) % slideCount;
        showSlide(currentSlide);
      }

      document.addEventListener("DOMContentLoaded", () => {
        showSlide(currentSlide);
        setInterval(nextSlide, 5000); // 3�ʸ��� �ڵ� �����̵�
      });
    </script>
  </body>
</html>