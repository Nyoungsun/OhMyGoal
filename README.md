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
<li>hyunju: 미션 만들기, 미션 글</li> <br>
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

<h4>FrontEnd💻</h4>
<ul>
<li>HTML</li>
<li>CSS</li>
<li>JavaScript</li>
<li>jQuery</li>
</ul>

<h4>BackEnd💻</h4>
<ul>
<li>Spring</li>
<li>JDBC</li>
<li>MyBatis</li>
<li>Oracle Cloud</li>
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

<h4>4.문의하기(QnA), FAQ - sunghwan</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236685490-6d96c32f-b1c0-4f5c-a456-f4e8c9be9bba.gif"/>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236685786-5805d665-39c4-4855-8a4a-631f30a13514.gif"/>
QnA: Google Apps Mail, Google sheet를 이용하여 사용자의 문의사항을 관리자 메일로 전송되게끔 구현 <br>
FAQ: 사이트 이용에 관한 자주묻는 질문과 답변

<h4>5.명예의전당 - youngsun</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236685236-ea447747-0c09-4d35-8b3f-b7463c5b0ca0.gif"/>
* Tistory flower 활용

<h4>6.마이페이지 - youngsun</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236685983-c96bd549-5e11-4930-b805-7d6f5408bd97.gif"/>
사용자별 참가 중인 미션 목록과 등급을 확인할 수 있고, 참가중인 미션에 대한 내용 글 보러가기, 미션에서 빠지기(도망가기), 개인정보수정으로 이동

<h4>7.개인정보수정(비밀번호 확인, 비밀번호 변경) - youngsun</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236686350-835aa528-8df0-4194-9233-a4e81dba9ca6.gif"/>
개인정보수정 창으로 이동하기 전에 비밀번호를 먼저 체크, 개인정보수정 창에서 비밀번호 변경과 회원탈퇴로 이동 가능

<h4>8.회원탈퇴 - youngsun</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236686657-34e64c71-d266-438b-bae7-b5477537831d.gif"/>
마이페이지의 모든 모달 창에서 'X' 버튼과 모달 바깥 영역을 누르면 창이 사라지고, '뒤로' 버튼을 누르면 한 단계 이전으로 이동


<h4>9.미션 만들기 - hyunju </h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236686798-bc21e61d-ec28-4bf7-b4e9-ffede98d8cd2.jpg"/>
로그인 전에는 글 작성 권한이 없으므로 메인페이지의 '그룹 미션 만들기' 버튼이 보이지 않음 <br>
로그인 후 '그룹 미션 만들기' 버튼을 누르면 미션 글 작성 페이지를 띄움 <br>
미션글 제목, 카테고리, 미션 기간, 참여인원, 썸네일용 사진 첨부, 미션내용을 작성할 수 있음 <br>
&nbsp;&nbsp;&nbsp;- 카테고리: 취업, 취미, 어학, 운동, 기타 <br>
&nbsp;&nbsp;&nbsp;- 미션기간: 현재 날짜 ~ 1년 후까지 선택 가능 / 종료 날짜는 시작 날짜보다 이른 날로 설정할 수 없음<br>
&nbsp;&nbsp;&nbsp;- 참여인원: 1명(미션 작성자는 무조건 해당 미션에 참여) ~ 20명까지 선택<br>
&nbsp;&nbsp;&nbsp;- 썸네일: 메인 페이지에 띄울 사진 선택(선택하지 않았을 시 기본 사진), 업로드 된 사진은 클릭하여 크게 볼 수 있음<br>
&nbsp;&nbsp;&nbsp;- 미션 내용: CKEditor4를 사용하여 미션 내용을 자유롭게 작성하고 꾸밀 수 있음(폰트 크기, 스타일, 이미지 첨부, 링크 삽입 등)<br>

<h4>10.미션 글 - hyunju </h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236687206-3095018d-1a35-4f80-9d7d-d3fb3add1ead.jpg"/>
메인페이지에서 원하는 미션 글을 누르면 해당 미션을 확인할 수 있음<br>
본문 상단에 썸네일 사진을 띄우고 아래에 제목과 미션 카테고리, 최대 참여 인원 수를 보여줌<br>
참여자 수에 따라 실시간으로 참여 인원 수가 업데이트 되며 버튼 클릭 시 모달을 사용해 현재 참여하고 있는 참가자를 확인할 수 있음<br>
미션 작성자, 미션 기간, 미션 내용 확인 가능, 좋아요 버튼 클릭 시 좋아요 수 증가 (메인페이지에도 반영)<br>
그룹미션 참여하기 버튼 클릭 시 모달 창으로 미션 참여 여부 확인메세지 띄움<br>
&nbsp;&nbsp;&nbsp;1) 미로그인 시: 먼저 로그인 진행하라는 알람창 띄움<br>
&nbsp;&nbsp;&nbsp;2) 현재 참여 중인 미션일 때: 이미 참여 중이라는 알람창 띄움<br>
&nbsp;&nbsp;&nbsp;3) 미션 참가 최대 인원을 초과하였을 때: 미션 참여인원 다 찼다는 모달창과 함께 다른 미션을 보러 갈 수 있도록 함<br>
&nbsp;&nbsp;&nbsp;4) 종료된 미션일 때: '미션종료' 썸네일로 변경, 그룹미션 참여하기 버튼 → "종료된 미션입니다.”로 변경되고 클릭할 수 없도록 disabled.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(툴팁 적용), 다른 미션 보러가기 버튼 활성화	(메인 페이지에서 해당 미션 썸네일 변경 & ’그레이’ 색상 필터로 변경)<br>
&nbsp;&nbsp;&nbsp;5) 위 해당 사항 없을 시 미션 참여 완료

<h4>11.관리자페이지(대시보드, 회원관리, 미션관리) - seojeong </h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236687556-460c0d57-713f-43fb-8924-a2a4b1d63c55.png"/>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236687646-6993e72d-21c0-41cf-93f5-f085b2a7b724.png"/>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236687721-9d1cee32-6b35-47ca-8009-1465b11da524.png"/>



















