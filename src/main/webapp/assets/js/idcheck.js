/**
 * 
 */

//아이디 체크여부 확인 (아이디 중복일 경우 = 0 , 중복이 아닐경우 = 1 )
var idck = 0;
$(function() {
    //idck 버튼을 클릭했을 때 
    $("#idck").click(function() {
        
        //userid 를 param.
        var userid =  $("#userid").val(); 
        $.ajax({
            async: true,
            type : 'POST',
            data : userid,
            url : "idcheck.do",
            dataType : "json",
            contentType: "application/json; charset=UTF-8",
            success : function(data) {
            	console.log(data);
                if (data.cnt > 0) {
                    
                    alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
                    $("#divInputId").addClass("has-error")
                    $("#divInputId").removeClass("has-success")
                    $("#userid").focus();
                    
                
                } else {
                    alert("사용가능한 아이디입니다.");
                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
                    $("#divInputId").addClass("has-success")
                    $("#divInputId").removeClass("has-error")
                    $("#userpwd").focus();
                    //아이디가 중복하지 않으면  idck = 1 
                    idck = 1;
                    
                }
            },
            error : function(request, error) {
                alert(request.status+"\n"+request.responseText);
                alert("error : " + error);
            }
        });
    });
});

//아이디 중복검사 후 변경시 값 전환
$("#userid").on("propertychange change keyup paste input", function(){
	idck = 0;
	
});



	//로그인 미기입부 확인
	function check(){
		if($('#id').val()==''){
			alert("아이디를 입력하세요.");
			return false;
		}
		if($('#pw').val()==''){
			alert("패스워드를 입력하세요.");
			return false;
		}
		return true;
	}
	//회원가입 검사
	function idchtr(){
	    if(idck==0){
	        alert('아이디 중복체크를 해주세요');
	        return false;
	    }
	    if($('#userid').val()==''){
			alert("패스워드를 입력하세요.");
			return false;
		}
	    if($('#userpw').val()==''){
			alert("패스워드를 입력하세요.");
			return false;
		}
		return true;
	}
	//로그아웃
	function out(){
		location.href="<c:url value='/memberLogout.do'/>";
	}
	/* 회원가입 활성화 버튼 */
	function signUp(){
		$(".replyModal01").attr("style", "display:block;");
	}
	//회원정보 수정 페이지
	function contentpg(){
		location.href="<c:url value='/memberContent.do'/>?id="+(id="${id}");
	}
	//회원 탈퇴 페이지 활성화 버튼
	function memderdel(){
		$(".replyModal02").attr("style", "display:block;");
	}
	//활성화 페이지 닫기
	function pageclose(){
		$(".replyModal01").attr("style", "display:none;");
		$(".replyModal02").attr("style", "display:none;");
	}



