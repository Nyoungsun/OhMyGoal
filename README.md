<h1>🌍OhMyGoal! - 1일 1미션 사이트</h1>
개인 역량이 중요시되는 동시에, 개인주의가 깊어지는 현대 사회에서 자기계발을 통해 공통의 관심사를 가진 사람들끼리 모임을 도모하여 공동체 협력심을 함양하고자하는 목적을 가졌습니다.

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
<li>youngsun: 마이페이지, 명예의 전당, 아이디/비밀번호 찾기, 개인정보수정(비밀번호 확인, 비밀번호 변경), 회원탈퇴, Git, Oracle Cloud DB</li> <br>
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
<li>Oracle Cloud DB</li>
<li>Apache Tomcat</li>
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

<h4>버전 관리💻</h4>
<ul>
<li>Github</li>
</ul>

<h2>소개📄</h2>

<h4>사이트맵</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236657260-42dd7c16-860b-4021-af8c-7b423e52ed57.png"/>
총 25개의 페이지로 구성되었으며, 사이트 맵에 표시되어있지 않은 6개의 페이지는 모달 창입니다. <br>
&nbsp;→ 메인페이지에서 로그인을 눌렀을 시 나타나는 <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1) 로그인 모달 창 (2) 회원가입 모달 창 <br>
&nbsp;→ 마이페이지에서 개인정보수정을 눌렀을 시 나타나는 <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1) 비밀번호 확인 모달 창 (2) 개인정보수정 모달 창 (3) 비밀번호 변경 모달 창 (4) 회원탈퇴 모달 창

<h4>DataBase</h4>
<img width="80%" src="https://github.com/Nyoungsun/OhMyGoal/assets/121652746/1f8430b5-8455-4086-b266-e819d70aec34"/>


<h4>1. 메인페이지 - geonryul</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236657081-4e1b6696-ebde-4618-b229-06b1fb8d7a03.gif"/>
1) 게시물<br>
메인 페이지에서 보이는 게시물 부분에서는 크게 3가지 기능을 구현하였습니다.<br>
- 첫번째로 미션들의 가독성을 높이기 위해 infinite scroll을 구현하였습니다.<br>
구현 방식으로는 해당 문서의 스크롤 위치를 감지하여 최하단 부분까지 도달할 경우 서버에서 해당 문서 영역에 계속 페이지를 불러오는 방식을 통하여 해당 기능을 구현 하였습니다.<br>
- 두번째로 태그 기능을 구현하였습니다.<br>
최신순, 조회수순, 좋아요순 3가지 태그를 구현하였고 해당 태그에 따라 DB단에서 서로 다른 배열로 게시물을 페이징 처리하고 가져오는 과정을 통해서 원하는 태그에 따라 게시물을 나열하였습니다.<br>
- 세번째로는 검색 기능을 구현하였습니다.<br>
서버로 보내는 데이터로 태그와 검색어를 함께 보내어 두가지 조건을 통하여 페이징 처리를 거침으로서 배열을 생성하고 해당 게시물 배열을 가져오는것으로 검색 기능을 구현하였습니다.<br>

<h4>2. 로그인/회원가입 - geonryul</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236684252-e5cf439c-8709-4bb9-8f0b-f344102ace13.png"/>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236684267-8955eaf0-d756-4987-a730-456e90a064a4.png"/>
- 첫번째로 로그인, 회원가입 두 창은 모두 모달 창 구조로 제작하였고 직접적인 모달창 기능이 아닌 fade in, fade out 기능을 통하여 유사하게 모달창 기능을 구현하였습니다.<br>
- 두번째로 회원가입에 이메일 인증을 구현하였고 해당 인증은 사이트쪽에서 6자리 난수를 생성하뒤 자바쪽에서 Gmail SMTP 서버 정보를 기반으로 이메일 세션을 통하여 가입자에게 보내는 방식으로 구현하였습니다.<br>

<h4>3. 아이디/비밀번호 찾기 - youngsun</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236684648-a2ec80c3-76c7-4b86-85b6-591ef6e33820.png"/>
아이디/비밀번호 찾기시 SMS 인증을 통하여 본인임을 인증하도록 하였습니다. <br>
인증번호는 java의 random 함수를 이용하여 6자리의 숫자를 생성하여 전송하였습니다.  <br>
* coolSMS API 활용 <br>

<h4>4. 소개 - sunghwan</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236684936-81668a2d-7a77-4a04-8d49-f4ca7f7f2186.gif"/>
소개 페이지를 읽고 어떤 사이트인지 또는 어떻게 이용하면 좋을지에 대해 알 수 있게끔, 또 바로 미션에 참가할 수 있도록 구성하였습니다. <br>
* Bootstrap과 JavaScript 오픈 소스 활용

<h4>5. 문의하기(QnA), FAQ - sunghwan</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236685490-6d96c32f-b1c0-4f5c-a456-f4e8c9be9bba.gif"/>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236685786-5805d665-39c4-4855-8a4a-631f30a13514.gif"/>
QnA: Google Apps Mail, Google sheet를 이용하여 사용자의 문의사항을 관리자 메일로 전송되게끔 구현하였습니다. <br>
FAQ: 사이트 이용에 관한 자주묻는 질문과 답변을 모아 Q&A 하기 전 문제를 해결할 수 있도록 하였습니다.

<h4>6. 명예의전당 - youngsun</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236685236-ea447747-0c09-4d35-8b3f-b7463c5b0ca0.gif"/>
사용자가 참여하고 있는 미션 개수에 따라 순위가 결정됩니다.<br>
* Tistory flower 활용

<h4>7. 마이페이지 - youngsun</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236685983-c96bd549-5e11-4930-b805-7d6f5408bd97.gif"/>
1) 사용자별 참가 중인 미션 목록과 등급을 확인할 수 있습니다. (등급은 사용자가 참여 중인 미션 개수에 따라 많을 수록 높아집니다.)<br>
3) 참가중인 미션에 대한 내용 글 보러가기 <br>
4) 미션에서 빠지기(도망가기) <br>
5) 개인정보수정으로 이동 <br>

<h4>8. 개인정보수정(비밀번호 확인, 비밀번호 변경) - youngsun</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236686350-835aa528-8df0-4194-9233-a4e81dba9ca6.gif"/>
1) 개인정보수정 버튼 클릭 시 사용자 비밀번호 확인 모달 창을 통하여 사용자 비밀번호를 먼저 체크합니다.<br>
2) 비밀번호가 일치하면 개인정보수정 모달 창이 나타남 → 아이디와 이메일을 제외한 사용자 정보를 변경할 수 있습니다.<br>
3) 개인정보수정 모달 창에서 비밀번호 변경과 회원탈퇴로 이동할 수 있습니다.<br>
3-1) 비밀번호 변경의 경우, 앞 전에 사용자 비밀번호를 체크했으므로 곧바로 새 비밀번호로 변경할 수 있도록 했습니다.<br>

<h4>9. 회원탈퇴 - youngsun</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236686657-34e64c71-d266-438b-bae7-b5477537831d.gif"/>
1) 개인정보수정 모달 창에서 회원탈퇴를 누를 경우 다시 한번 탈퇴 여부를 묻고, 확인 버튼을 누르면 탈퇴가 완료됩니다. (탈퇴 시에 모든 정보는 삭제되고, 참여중인 미션의 참여자 리스트에서 해당 사용자는 빠지게 됩니다.)<br>
2) 마이페이지의 모든 모달 창에서 'X' 버튼과 모달 바깥의 회색 영역을 누르면 창이 사라지고, '뒤로' 버튼을 누르면 한 단계 이전으로 이동할 수 있습니다.

<h4>10. 미션 만들기 - hyunju </h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236686798-bc21e61d-ec28-4bf7-b4e9-ffede98d8cd2.jpg"/>
로그인 전에는 글 작성 권한이 없으므로 메인페이지의 '그룹 미션 만들기' 버튼이 보이지 않습니다. <br>
로그인 후 '그룹 미션 만들기' 버튼을 누르면 미션 글 작성 페이지를 띄웁니다. <br>
미션글 제목, 카테고리, 미션 기간, 참여인원, 썸네일용 사진 첨부, 미션내용을 작성할 수 있습니다. <br>
- 카테고리: 취업, 취미, 어학, 운동, 기타 <br>
- 미션기간: 현재 날짜 ~ 1년 후까지 선택 가능 / 종료 날짜는 시작 날짜보다 이른 날로 설정할 수 없습니다.<br>
- 참여인원: 1명(미션 작성자는 무조건 해당 미션에 참여) ~ 20명까지 선택<br>
- 썸네일: 메인 페이지에 띄울 사진 선택(선택하지 않았을 시 기본 사진), 업로드 된 사진은 클릭하여 크게 볼 수 있습니다.<br>
- 미션 내용: CKEditor4를 사용하여 미션 내용을 자유롭게 작성하고 꾸밀 수 있습니다.(폰트 크기, 스타일, 이미지 첨부, 링크 삽입 등)<br>

<h4>11. 미션 글 - hyunju </h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236687206-3095018d-1a35-4f80-9d7d-d3fb3add1ead.jpg"/>
메인페이지에서 원하는 미션 글을 누르면 해당 미션을 확인할 수 있습니다.<br>
본문 상단에 썸네일 사진을 띄우고 아래에 제목과 미션 카테고리, 최대 참여 인원 수를 보여줍니다.<br>
참여자 수에 따라 실시간으로 참여 인원 수가 업데이트 되며 버튼 클릭 시 모달을 사용해 현재 참여하고 있는 참가자를 확인할 수 있습니다.<br>
미션 작성자, 미션 기간, 미션 내용 확인 가능, 좋아요 버튼 클릭 시 좋아요 수 증가 (메인페이지에도 반영)<br>
그룹미션 참여하기 버튼 클릭 시 모달 창으로 미션 참여 여부 확인메세지 띄웁니다.<br>
1) 미로그인 시: 먼저 로그인 진행하라는 알람창을 띄웁니다.<br>
2) 현재 참여 중인 미션일 때: 이미 참여 중이라는 알람창을 띄웁니다.<br>
3) 미션 참가 최대 인원을 초과하였을 때: 미션 참여인원 다 찼다는 모달창과 함께 다른 미션을 보러 갈 수 있도록 했습니다.<br>
4) 종료된 미션일 때: '미션종료' 썸네일로 변경, 그룹미션 참여하기 버튼 → "종료된 미션입니다.”로 변경되고 클릭할 수 없도록 disabled(툴팁 적용), 다른 미션 보러가기 버튼 활성화(메인 페이지에서 해당 미션 썸네일 변경 & ’그레이’ 색상 필터로 변경)<br>
5) 위 해당 사항 없을 시 미션 참여 완료

<h4>12. 관리자페이지: 대시보드 - seojeong</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236687556-460c0d57-713f-43fb-8924-a2a4b1d63c55.png"/>
관리자 아이디와 비밀번호로 로그인하면 관리자 페이지에서 대시보드가 나타납니다. <br>
이 대시보드는 부트스트랩과 도넛 차트 API를 활용하여 DB와 연동된 다음과 같은 정보를 실시간으로 보여줍니다.<br>
1) 전체 미션 글 카테고리<br>
2) 전체 미션 글 수<br>
3) 전체 회원 수<br>
4) 전체 회원의 미션 참여 순위<br>

<h4>13. 관리자페이지: 회원관리 - seojeong</h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236687646-6993e72d-21c0-41cf-93f5-f085b2a7b724.png"/>
부트스트랩 라이브러리 스타일을 사용하여 회원 목록을 테이블 형태로 보여주고, 페이지네이션 및 검색 기능을 구현했습니다.
또한, 회원에 대한 자세한 정보를 확인할 수 있는 모달 창도 구현했습니다.

<h4>14. 관리자페이지: 미션관리 - seojeong </h4>
<img width="80%" src="https://user-images.githubusercontent.com/121652746/236687721-9d1cee32-6b35-47ca-8009-1465b11da524.png"/>
부트스트랩 라이브러리 스타일을 사용하여 미션 목록을 테이블 형태로 보여주고, 페이지네이션 및 검색 기능을 구현했습니다.
또한, 선택한 미션에 대해 삭제할 수 있는 기능도 구현했습니다.


















