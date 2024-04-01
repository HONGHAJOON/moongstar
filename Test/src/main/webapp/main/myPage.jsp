<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>마이페이지</title>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <style>
      @font-face {
        font-family: "JalnanGothic";
        src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_231029@1.1/JalnanGothic.woff")
          format("woff");
        font-weight: normal;
        font-style: normal;
      }
      @font-face {
        font-family: "Pretendard-Regular";
        src: url("https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff")
          format("woff");
        font-weight: 400;
        font-style: normal;
      }
      * {
        font-family: Pretendard-Regular;
      }
      .container {
        margin: 0 16.6%;
      }
      .mypage-container {
        display: flex;
        margin: 5% 0;
        height: 100%;
        justify-content: center;
        align-items: center;
        flex: 1;
      }
      .mypage-container2 {
        display: flex;
        margin: 2% 0;

        flex: 1;
      }

      .myactive {
        height: 100%;
      }

      .inner_profile {
        width: 100%;
        height: 100%;
        padding: 30px;
        border-radius: 50%;
        box-sizing: border-box;
        background-color: #f0f0f0;
        box-shadow: 0 5px 5px rgb(179, 179, 179);
      }

      .inner_profile img {
        width: 200px;
        height: 200px;
        border-radius: 50%;
        box-shadow: 0 -3px 10px rgb(94, 94, 94);
      }
      .gender {
        display: flex;
        align-items: center;
      }
      .gender input[type="radio"] {
        display: none;
      }
      .gender input[type="radio"] + label {
        display: inline-block;
        cursor: pointer;
        height: 27px;
        width: 90px;
        border: 1px solid #dadada;
        line-height: 27px;
        text-align: center;
        font-weight: bold;
        font-size: 13px;
        border-radius: 3px;
      }
      .gender input[type="radio"] + label {
        background-color: #fff;
        color: #333;
      }
      .gender input[type="radio"]:checked + label {
        background-color: #0155b7;
        color: #fff;
      }

      .wel-txt {
        font-family: "JalnanGothic";
        font-size: 38px;
        font-weight: 700;
        margin-left: 60px;
        position: relative;
      }
      .hello {
        display: grid;
      }
      .actGrid {
        display: grid;
        margin: 0 3%;
        height: 100%;
      }
      .actTitle {
        font-size: 25px;
        font-weight: 700;
        margin: 5% 0;
      }
      .inner-txt {
        text-align: left;
        width: 150px;
        font-size: 14px;
        font-weight: 700;
      }
      .myinfo {
        font-size: 12px;
      }

      .field1 {
        display: flex;
        padding: 5px;
        flex: 1;
        margin: 0 10%;
      }

      .petInfo {
        border-style: solid;
        border-width: 3px 0 1px 0;
        border-color: #c9c9c9;
        padding: 3% 0;
      }
      .petInfo2 {
        border-style: solid;
        border-width: 3px 0 1px 0;
        border-color: #c9c9c9;
        padding: 3% 0;
      }
      .field {
        display: flex;
        flex: 1;
        padding: 1% 0;
      }
      .signup-container {
        margin: 0 10%;
      }
      /*
      .actBtn {
        flex: 1;
        padding: 25px 15px;
        margin: 5px;
        font-weight: 700;
        display: flex;
        text-align: center;
        align-items: center;
        justify-content: center;
        border: none;
        border-radius: 10px;
        background-color: #275efe;
        color: #fff;
        box-shadow: 0px 3px 3px rgb(179, 179, 179);
      }*/
      .actBtn {
        flex: 1;
        padding: 20px 15px;
        border: 2px solid #c9c9c9;
        border-radius: 5px;
        font-family: "Lato", sans-serif;
        font-weight: 700;
        background: transparent;
        cursor: pointer;
        transition: all 0.3s ease;
        position: relative;
        display: inline-block;
        margin: 5px;
        transition: all 0.3s ease;
        text-align: center;
        align-items: center;
        justify-content: center;
      }
      .actBtn:hover {
        box-shadow: -7px -7px 20px 0px #fff9, -4px -4px 5px 0px #fff9,
          7px 7px 20px 0px rgba(128, 128, 128, 0.133), 4px 4px 5px 0px #0001;
      }
    </style>
  </head>
  <body>
    <jsp:include page="../main/header.jsp"></jsp:include>
    <div class="container">
      <!-- 인삿말 -->
      <div class="mypage-container">
        <div class="wel-Img">
          <div class="inner_profile">
            <img src="../image/프로필01.jpg" />
          </div>
        </div>
        <div class="wel-txt">
          <div class="hello">
            <span style="display: flex"
              ><span
                style="
                  text-decoration: underline;
                  text-underline-offset: 10px;
                  text-decoration-thickness: 5%;
                  font-family: 'JalnanGothic';
                "
              >
                소금이산책기계
              </span>
              <span style="text-decoration: none; font-weight: 900">
                &nbsp;님</span
              >
            </span>
            <div style="margin-top: 10px; font-weight: 900">다녀오셨어요?</div>
          </div>
        </div>
      </div>

      <hr />
      <!-- 내 활동 -->

      <div class="mypage-container2">
        <div
          class="myactive"
          style="
            width: 100%;
            padding: 0 5%;
            border-right: 2px solid rgb(199, 199, 199);
          "
        >
          <div class="actGrid">
            <div class="actTitle">개인 정보</div>
            <div class="petInfo" style="text-align: center">
              <!-- <hr /> -->

              <div class="field1">
                <div class="inner-txt">이름</div>
                <div class="myinfo">홍길동</div>
              </div>
              <div class="field1">
                <div class="inner-txt">닉네임</div>
                <div class="myinfo">소금이산책기계</div>
              </div>
              <div class="field1">
                <div class="inner-txt">전화 번호</div>
                <div class="myinfo">
                  <span id="tel1">010</span>
                  <span id="tel2">1234</span>
                  <span id="tel3">5678</span>
                </div>
              </div>
              <div class="field1">
                <div class="inner-txt">프로필 사진</div>
                <div class="myinfo">
                  <img
                    src="../image/프로필01.jpg"
                    style="width: 100px; height: 100px"
                  />
                </div>
              </div>
            </div>

            <!-- 펫 정보(추가/ 삭제) -->
            <!-- <div class="actTitle">반려동물 정보</div> -->
            <div
              class="actTitle"
              style="
                display: flex;
                justify-content: space-between;
                align-items: center;
              "
            >
              <span>반려동물정보</span>
              <div class="header-line"></div>
              <div class="button-group">
                <!-- 추가 버튼 -->
                <button class="add-btn" onclick="addPetInfo()">추가</button>
                <button class="save-btn" onclick="savePetInfo()">저장</button>
              </div>
            </div>
            <div
              class="petInfo2"
              style="text-align: center; border-width: 3px 0 0 0"
            >
              <!-- <hr /> -->

              <div class="signup-container"></div>

              <script>
                // 추가 버튼 클릭 시 양식 추가
                function addPetInfo() {
                  const signupContainer =
                    document.querySelector(".signup-container");
                  const newPetInfo = document.createElement("div");
                  newPetInfo.classList.add("signup"); // 양식에 클래스 추가
                  newPetInfo.innerHTML = `
            <span class="field">
              <span class="inner-txt">이름</span>
              <div>
                <input type="text" name="pet-name" />
              </div>
            </span>

            <!-- 반려동물 성별 -->
            <span class="field">
              <span class="inner-txt">성별</span>
              <div class="gender">
                <div class="field">
                <input type="radio" id="male" name="pet-gender" value="male" />
                <label for="male">남</label>
                <input type="radio" id="female" name="pet-gender" value="female" />
                <label for="female">여</label>
              </div>
            </div>
            </span>
            <span class="field">
              <span class="inner-txt">나이</span>
              <div>
                <input class="text"; type="text" name="pet-age" />
              </div>
            </span>

            <!-- 반려동물 사진 -->
            <span class="field" style="display: flex;justify-content: flex-end;">
              <!-- 삭제 버튼 -->
              <button class="delete-btn" onclick="deletePetInfo(this)">
              삭제
              </button>
        
            </span>
            <hr/>
          `;
                  signupContainer.appendChild(newPetInfo);
                }

                // 양식 삭제 함수
                function deletePetInfo(button) {
                  const signupContainer =
                    document.querySelector(".signup-container");
                  signupContainer.removeChild(button.parentNode.parentNode);
                }

                // 파일 선택 시 미리보기 업데이트
                const fileInputs = document.querySelectorAll(".file-input");
                fileInputs.forEach(function (fileInput) {
                  fileInput.addEventListener("change", function (event) {
                    const previewImage =
                      event.target.parentNode.querySelector(".preview-image");
                    const file = event.target.files[0];
                    if (file) {
                      const reader = new FileReader();
                      reader.onload = function (e) {
                        previewImage.src = e.target.result;
                      };
                      reader.readAsDataURL(file);
                    }
                  });
                });
              </script>
            </div>
          </div>
        </div>

        <!--왜 안먹어 이시키야
        -->
        <div class="myactive" style="width: 100%; height: 100%; padding: 0 5%">
          <div class="actGrid">
            <div class="actTitle">내 활동</div>
            <div class="petInfo">
              <div style="margin: 5% 7%">
                <div class="act-btn" style="display: flex">
                  <button class="actBtn" id="">산책로 추천</button>
                  <button class="actBtn" id="">자유게시판</button>
                </div>
                <div class="act-btn" style="display: flex">
                  <button id="" class="actBtn">임시 보호소</button>
                  <button id="" class="actBtn">미멍 보호소</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>