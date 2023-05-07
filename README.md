<h1>🌍OhMyGoal! - 1일 1미션 사이트</h1>
* 학습용 프로젝트입니다.
<h2>Team👪</h2>
<table>
  <tbody>
    <tr>
      <td align="center"><img src="https://avatars.githubusercontent.com/u/121652746?v=4" width="100px;"/><br />
      <sub><b>팀장: youngsun </b></sub></a><br /></td>
      <td align="center"><img src="https://avatars.githubusercontent.com/u/109847507?v=4" width="100px;"/><br />
      <sub><b>팀원: geonryul  </b></sub></a><br /></td>
      <td align="center"><img src="https://avatars.githubusercontent.com/u/33363571?v=4" width="100px;"/><br />
      <sub><b>팀원: hyunju </b></sub></a><br /></td>
      <td align="center"><img src="https://avatars.githubusercontent.com/u/121652054?v=4" width="100px;"/><br />
      <sub><b>팀원: sunghwan </b></sub></a><br /></td>
      <td align="center"><img src="https://avatars.githubusercontent.com/u/81378507?v=4" width="100px;"/><br />
      <sub><b>팀원: seojeong  </b></sub></a><br /></td>
  </tbody>
</table>
<ul>
<li>youngsun: 마이페이지, 명예의 전당, 아이디/비밀번호 찾기, 개인정보수정(비밀번호 확인, 비밀번호 변경), 회원탈퇴, Git, Oracle Cloud</li> <br>
<li>geonryul: 메인페이지, 로그인/회원가입</li> <br>
<li>hyunju: 미션 만들기, 미션 글 보기</li> <br>
<li>sunghwan: 사이트 소개, 문의하기(QnA, FAQ)</li> <br>
<li>seojeong: 관리자 페이지(대시보드, 회원관리, 미션관리)</li> <br>
</ul>


<h2>제작기간📆</h2>
2023.04.11 ~ 2023.04.28

<h2>Skill🛠</h2>
<h4>기획💻</h4>
<ul>
<li>Figma</li>
</ul>
<h4>BackEnd💻</h4>
<ul>
<li>Spring</li>
<li>JDBC</li>
<li>MyBatis</li>
<li>Oracle Cloud</li>
</ul>

<h4>FrontEnd💻</h4>
<ul>
<li>HTML</li>
<li>CSS</li>
<li>JavaScript</li>
<li>jQuery</li>
</ul>

<h4>OpenAPI(plugin, source)💻</h4>
<ul>
<li>Daum PostCode Service</li>
<li>coolsms</li>
<li>Bootstrap</li>
<li>CKEditor4</li>
<li>Google Charts</li>
<li>Google Apps Mail</li>
<li>Tistory flower</li>
</ul>

<h2>소개📄</h2>
<h4>사이트맵</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236657260-42dd7c16-860b-4021-af8c-7b423e52ed57.png"/>
총 25개의 페이지로 구성되었으며, 사이트 맵에 표시되어있지 않은 6개의 페이지는 모달 창입니다. <br>
&nbsp;→ 메인페이지에서 로그인을 눌렀을 시 나타나는 <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1) 로그인 모달 창 (2) 회원가입 모달 창 <br>
&nbsp;→ 마이페이지에서 개인정보수정을 눌렀을 시 나타나는 <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1) 비밀번호 확인 모달 창 (2) 개인정보수정 모달 창 (3) 비밀번호 변경 모달 창 (4) 회원탈퇴 모달 창

<h4>1.메인페이지 - geonryul</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236657081-4e1b6696-ebde-4618-b229-06b1fb8d7a03.gif"/>
infinite scroll: 스크롤의 위치를 인식하여 특정 범위를 벗어나면 동적 할당으로 계속 데이터를 가져오는 방식으로 구현 <br>
검색: 동적 데이터를 가져오는 항목으로 나열할 태그와 검색을 추가하여 실시간으로 사용자가 원하는 게시글을 가져올 수 있도록 구현

<h4>2.로그인/회원가입 - geonryul</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236684252-e5cf439c-8709-4bb9-8f0b-f344102ace13.png"/>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236684267-8955eaf0-d756-4987-a730-456e90a064a4.png"/>
로그인/회원가입: 모달 창으로 제작, 직접적인 모달 창 기능이 아닌 fade in, fade out을 이용하여 구현 <br>
* 회원가입시 이메일 인증은 site쪽에서 6자리 난수를 생성, Backend에서 Gmail SMTP 서버 정보를 기반으로 이메일 세션을 통하여 가입자에게 보내는 방식으로 구현

<h4>3.아이디/비밀번호 찾기 - youngsun</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236684648-a2ec80c3-76c7-4b86-85b6-591ef6e33820.png"/>
아이디/비밀번호 찾기시 SMS 인증을 통하여 본인임을 인증하도록 했고, coolSMS API를 활용하여 구현

<h4>3.소개 - sunghwan</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236684936-81668a2d-7a77-4a04-8d49-f4ca7f7f2186.gif"/>
소개 페이지를 읽고 어떤 사이트인지 또는 어떻게 이용하면 좋을지에 대해 알 수 있게끔, 또 바로 미션에 참가할 수 있도록 구성 <br>
* Bootstrap과 JavaScript 오픈 소스 활용

<h4>4.명예의전당 - youngsun</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236685236-ea447747-0c09-4d35-8b3f-b7463c5b0ca0.gif"/>
* Tistory flower 활용

<h4>5.문의하기(QnA), FAQ - sunghwan</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236685490-6d96c32f-b1c0-4f5c-a456-f4e8c9be9bba.gif"/>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236685786-5805d665-39c4-4855-8a4a-631f30a13514.gif"/>
QnA: Google Apps Mail, Gooogle sheet를 이용하여 사용자의 문의사항을 관리자 메일로 전송되게끔 구현 <br>
FAQ: 사이트 이용에 관한 자주묻는 질문과 답변

<h4>6.마이페이지 - youngsun</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236685983-c96bd549-5e11-4930-b805-7d6f5408bd97.gif"/>
사용자별 참가 중인 미션 목록과 등급을 확인할 수 있고, 참가중인 미션에 대한 내용 글 보러가기, 미션에서 빠지기(도망가기), 개인정보수정으로 이동

<h4>7.개인정보수정(비밀번호 확인, 비밀번호 변경) - youngsun</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236686350-835aa528-8df0-4194-9233-a4e81dba9ca6.gif"/>
개인정보수정 창으로 이동하기 전에 비밀번호를 먼저 체크, 개인정보수정 창에서 비밀번호 변경과 회원탈퇴로 이동 가능

<h4>8.회원탈퇴 - youngsun</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236686657-34e64c71-d266-438b-bae7-b5477537831d.gif"/>
마이페이지의 모든 모달 창에서 'X' 버튼과 모달 바깥 영역을 누르면 창이 사라지고, '뒤로' 버튼을 누르면 한 단계 이전으로 이동


<h4>8.미션 만들기 - hyunju </h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236686798-bc21e61d-ec28-4bf7-b4e9-ffede98d8cd2.jpg"/>










