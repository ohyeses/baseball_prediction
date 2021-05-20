/**
 * 
 */

var team_member_list = [ [ "박종훈", "SK", 32000, 31926.48928, 29000 ],
		[ "원종현", "NC", 30000, 28529.02303, 26000 ],
		[ "김상수", "SK", 30000, 23154.22849, 16500 ],
		[ "최원태", "KH", 29000, 20017.79399, 15000 ],
		[ "주권", "KT", 25000, 16291.3897, 15000 ],
		[ "김진성", "NC", 20000, 17694.82001, 16000 ],
		[ "오주원", "KH", 20000, 16755.57975, 15000 ],
		[ "우규민", "SL", 20000, 63547.0485, 70000 ],
		[ "고우석", "LG", 18000, 26620.95889, 22000 ],
		[ "정우영", "LG", 18000, 10463.16917, 8000 ],
		[ "김재윤", "KT", 17000, 19604.78569, 12000 ],
		[ "서진용", "SK", 17000, 22596.30091, 20000 ],
		[ "김원중", "GI", 17000, 14131.33878, 10000 ],
		[ "배제성", "KT", 17000, 16255.37957, 11000 ],
		[ "박세웅", "GI", 16500, 15873.31131, 11000 ],
		[ "함덕주", "LG", 16500, 20659.99425, 21000 ],
		[ "박준표", "KIA", 16000, 12796.9325, 11000 ],
		[ "최원준", "DU", 16000, 11914.90912, 5900 ],
		[ "김태훈", "SK", 16000, 23998.27378, 24000 ],
		[ "김태훈", "KH", 16000, 24102.58717, 7500 ],
		[ "박치국", "DU", 16000, 8520.788642, 8000 ],
		[ "윤명준", "DU", 15600, 20396.65054, 21000 ],
		[ "문경찬", "NC", 15000, 5238.277869, 3100 ],
		[ "구승민", "GI", 15000, 9451.496403, 8000 ],
		[ "장현식", "KIA", 15000, 8084.582048, 6400 ],
		[ "소형준", "KT", 14000, 7187.014657, 2700 ],
		[ "임창민", "NC", 14000, 15692.20292, 16000 ],
		[ "임정호", "NC", 13000, 9917.917522, 9200 ],
		[ "최지광", "SL", 12000, 7040.810092, 6000 ],
		[ "양현", "KH", 12000, 9938.514897, 8400 ],
		[ "최동환", "LG", 12000, 6937.34642, 7000 ],
		[ "박진형", "GI", 12000, 10396.43892, 9000 ],
		[ "송명기", "NC", 11000, 5882.828382, 2700 ],
		[ "홍건희", "DU", 11000, 9561.094754, 8000 ],
		[ "김강률", "DU", 11000, 22541.73528, 15000 ],
		[ "홍성민", "NC", 11000, 9749.757953, 10000 ],
		[ "전유수", "KT", 10500, 10802.69007, 10000 ],
		[ "이승진", "DU", 10000, 6994.340166, 2700 ],
		[ "임기영", "KIA", 10000, 11765.19596, 7000 ],
		[ "이태양", "SK", 10000, 10435.5341, 7300 ],
		[ "김민우", "HE", 9000, 11640.25076, 4200 ],
		[ "안우진", "KH", 9000, 5953.881942, 2700 ],
		[ "서준원", "GI", 8500, 7990.022224, 4600 ],
		[ "김영규", "NC", 8300, 11126.29862, 6300 ],
		[ "김세현", "SK", 8000, 11336.01252, 12000 ],
		[ "유원상", "KT", 8000, 6654.515515, 4000 ],
		[ "김건태", "NC", 8000, 8671.796304, 9000 ],
		[ "김진영", "HE", 7900, 5064.870953, 3200 ],
		[ "강재민", "HE", 7900, 5612.089886, 2700 ],
		[ "윤대경", "HE", 7700, 5797.988535, 2800 ],
		[ "조현우", "KT", 7500, 4592.355821, 3000 ],
		[ "안영명", "KT", 7000, 31748.8713, 35000 ],
		[ "김민수", "KT", 7000, 9435.236344, 6500 ],
		[ "정해영", "KIA", 7000, 11404.27612, 2700 ],
		[ "김종수", "HE", 6100, 4825.167884, 3800 ],
		[ "김성민", "KH", 6000, 6687.420323, 5500 ],
		[ "김건국", "GI", 6000, 6336.829288, 5400 ],
		[ "이민우", "KIA", 6000, 6227.504788, 4300 ],
		[ "하준호", "KT", 6000, 5883.423462, 4500 ],
		[ "김민규", "DU", 5500, 5483.29207, 2900 ],
		[ "김선기", "KH", 5300, 5516.697499, 2700 ],
		[ "김재웅", "KH", 5200, 5386.889674, 2700 ],
		[ "김대우", "SL", 5000, 5878.02237, 2900 ],
		[ "조영우", "SK", 5000, 7571.638143, 3300 ],
		[ "박진태", "KIA", 5000, 8627.858228, 6000 ],
		[ "김대우", "GI", 5000, 4918.558224, 2900 ],
		[ "이정용", "LG", 5000, 5041.134689, 2700 ],
		[ "김윤식", "LG", 5000, 7177.387594, 2700 ],
		[ "이인복", "GI", 4800, 4738.057112, 3000 ],
		[ "김유영", "GI", 4500, 6358.328683, 6200 ],
		[ "김명신", "DU", 4500, 5714.153538, 2700 ],
		[ "최준용", "GI", 4200, 5879.108332, 2700 ],
		[ "김이환", "HE", 4100, 6358.399741, 3700 ],
		[ "이상규", "LG", 4000, 3229.452394, 2900 ],
		[ "문동욱", "HE", 3600, 3353.53715, 3200 ],
		[ "정수민", "SK", 3600, 6064.817368, 4200 ],
		[ "채지선", "LG", 3500, 3255.694317, 2800 ],
		[ "남호", "DU", 3300, 3000.939885, 2700 ],
		[ "박주홍", "HE", 3300, 5000.937797, 3500 ],
		[ "오원석", "SK", 3000, 6723.184395, 2700 ],
		[ "김동혁", "KH", 3000, 7179.784445, 2670 ],
		[ "박관진", "KH", 3000, 3504.594389, 2670 ],
		[ "김택형", "SK", 3000, 5259.028893, 3700 ] ]
var data_list = [
	[ "박종훈", "출생", "1991년 8월 13일, 전라북도 군산", "신체", "186cm, 82kg", "소속팀","SK","SSG 랜더스 (투수, 50)", "01"],
	[ "김상수", "출생", "1988년 1월 2일", "신체", "180cm, 88kg", "소속팀","SK","SSG 랜더스 (투수, 31)" ,"02"],
	[ "서진용", "출생", "1992년 10월 2일, 부산광역시", "신체", "184cm, 88kg", "소속팀","SK","SSG 랜더스 (투수, 22)" ,"03"],
	[ "김태훈", "출생", "1990년 5월 19일, 경기도", "신체", "176cm, 88kg", "소속팀","SK","SSG 랜더스 (투수, 51)" ,"04"],
	[ "이태양", "출생", "1990년 7월 3일", "신체", "192cm, 97kg", "소속팀","SK","SSG 랜더스 (투수, 15)" ,"05"],
	[ "김세현", "출생", "1987년 8월 7일", "신체", "188cm, 104kg", "소속팀","SK","SSG 랜더스 (투수, 33)" ,"06"],
	[ "조영우", "출생", "1995년 6월 27일", "신체", "185cm, 80kg", "소속팀","SK","SSG 랜더스 (투수, 1)" ,"07"],
	[ "정수민", "출생", "1990년 4월 1일", "신체", "188cm, 92kg", "소속팀","SK","SSG 랜더스 (투수, 36)" ,"08"],
	[ "오원석", "출생", "2009년 4월 23일, 경기도 성남", "신체", "184cm, 82kg", "소속팀","SK","SSG 랜더스 (투수, 47)" ,"09"],
	[ "김택형", "출생", "1996년 10월 10일", "신체", "183cm, 83kg", "소속팀","SK","SSG 랜더스 (투수, 43)" ,"10"],

	[ "원종현", "출생", "1987년 7월 31일", "신체", "182cm, 83kg", "소속팀","NC","NC 다이노스 (투수, 46)" ,"11"],
	[ "김진성", "출생", "1985년 3월 7일, 서울특별시", "신체", "186cm, 92kg", "소속팀","NC","NC 다이노스 (투수, 55)" ,"12"],
	[ "문경찬", "출생", "1992년 7월 8일", "신체", "186cm, 85kg", "소속팀","NC","NC 다이노스 (투수, 56)" ,"13"],
	[ "임창민", "출생", "1985년 8월 25일", "신체", "183cm, 85kg", "소속팀","NC","NC 다이노스 (투수, 45)" ,"14"],
	[ "임정호", "출생", "1990년 4월 16일", "신체", "188cm, 85kg", "소속팀","NC","NC 다이노스 (투수, 38)" ,"15"],
	[ "송명기", "출생", "2000년 8월 9일", "신체", "191cm, 93kg", "소속팀","NC","NC 다이노스 (투수, 62)" ,"16"],
	[ "홍성민", "출생", "1989년 7월 15일", "신체", "191cm, 82kg", "소속팀","NC","NC 다이노스 (투수, 19)" ,"17"],
	[ "김영규", "출생", "2000년 2월 10일", "신체", "188cm, 86kg", "소속팀","NC","NC 다이노스 (투수, 58)" ,"18"],
	[ "김건태", "출생", "1991년 10월 2일", "신체", "185cm, 85kg", "소속팀","NC","NC 다이노스 (투수, 24)" ,"19"],

	[ "최원태", "출생", "1997년 1월 7일", "신체", "184cm, 93kg", "소속팀","KH","키움 히어로즈 (투수, 20)" ,"20"],
	[ "오주원", "출생", "1985년 3월 31일", "신체", "184cm, 95kg", "소속팀","KH","키움 히어로즈 (투수, 15)" ,"21"],
	[ "김태훈", "출생", "1992년 3월 2일", "신체", "185cm, 90kg", "소속팀","KH","키움 히어로즈 (투수, 17)" ,"22"],
	[ "양현", "출생", "1992년 8월 23일", "신체", "188cm, 70kg", "소속팀","KH","키움 히어로즈 (투수, 39)" ,"23"],
	[ "안우진", "출생", "1999년 8월 30일", "신체", "191cm, 90kg", "소속팀","KH","키움 히어로즈 (투수, 41)" ,"24"],
	[ "김성민", "출생", "1994년 4월 26일", "신체", "181cm, 90kg", "소속팀","KH","키움 히어로즈 (투수, 21)" ,"25"],
	[ "김선기", "출생", "1991년 9월 1일, 충청북도 청주", "신체", "187cm, 94kg", "소속팀","KH","키움 히어로즈 (투수, 49)" ,"26"],
	[ "김재웅", "출생", "1998년 10월 22일", "신체", "174cm, 85kg", "소속팀","KH","키움 히어로즈 (투수, 28)" ,"27"],
	[ "김동혁", "출생", "2001년 12월 27일", "신체", "183cm, 83kg", "소속팀","KH","키움 히어로즈 (투수, 60)" ,"28"],
	[ "박관진", "출생", "1997년 3월 26일", "신체", "186cm, 90kg", "소속팀","KH","키움 히어로즈 (투수, 97)" ,"29"],

	[ "주권", "출생", "1995년 5월 31일", "신체", "181cm, 82kg", "소속팀","KT","kt wiz (투수, 38)" ,"30"],
	[ "김재윤", "출생", "1990년 9월 16일", "신체", "185cm, 95kg", "소속팀","KT","kt wiz (투수, 62)" ,"31"],
	[ "배제성", "출생", "1996년 9월 29일", "신체", "189cm, 85kg", "소속팀","KT","kt wiz (투수, 19)" ,"32"],
	[ "소형준", "출생", "2001년 9월 16일", "신체", "189cm, 92kg", "소속팀","KT","kt wiz (투수, 30)" ,"33"],
	[ "전유수", "출생", "1986년 11월 29일, 부산광역시", "신체", "185cm, 95kg", "소속팀","KT","kt wiz (투수, 31)" ,"34"],
	[ "유원상", "출생", "1986년 6월 17일", "신체", "187cm, 93kg", "소속팀","KT","kt wiz (투수, 55)" ,"35"],
	[ "조현우", "출생", "1994년 3월 30일", "신체", "182cm, 79kg", "소속팀","KT","kt wiz (투수, 59)" ,"36"],
	[ "안영명", "출생", "1984년 11월 19일", "신체", "183cm, 90kg", "소속팀","KT","kt wiz (투수, 48)" ,"37"],
	[ "김민수", "출생", "1992년 7월 24일", "신체", "188cm, 80kg", "소속팀","KT","kt wiz (투수, 26)" ,"38"],
	[ "하준호", "출생", "1989년 4월 29일", "신체", "174cm, 78kg", "소속팀","KT","kt wiz (투수, 28)" ,"39"],

	[ "우규민", "출생", "1985년 1월 21일, 서울특별시", "신체", "184cm, 83kg", "소속팀","SL","삼성 라이온즈 (투수, 2)" ,"40"],
	[ "최지광", "출생", "1998년 3월 13일", "신체", "176cm, 80kg", "소속팀","SL","삼성 라이온즈 (투수, 40)" ,"41"],
	[ "김대우", "출생", "1988년 11월 21일", "신체", "183cm, 85kg", "소속팀","SL","삼성 라이온즈 (투수, 17)" ,"42"],

	[ "고우석", "출생", "1998년 8월 6일", "신체", "182cm, 90kg", "소속팀","LG","LG 트윈스 (투수, 19)" ,"43"],
	[ "정우영", "출생", "1999년 8월 19일", "신체", "193cm, 85kg", "소속팀","LG","LG 트윈스 (투수, 18)" ,"44"],
	[ "함덕주", "출생", "1995년 1월 13일", "신체", "181cm, 78kg", "소속팀",	"LG","LG 트윈스 (투수, 53)" ,"45"],
	[ "최동환", "출생", "1989년 9월 19일", "신체", "184cm, 83kg", "소속팀","LG","LG 트윈스 (투수, 17)" ,"46"],
	[ "이정용", "출생", "1996년 3월 26일", "신체", "186cm, 85kg", "소속팀","LG","LG 트윈스 (투수, 31)" ,"47"],
	[ "김윤식", "출생", "2000년 4월 3일", "신체", "181cm, 83kg", "소속팀","LG","LG 트윈스 (투수, 57)" ,"48"],
	[ "이상규", "출생", "1996년 10월 20일, 서울특별시", "신체", "185cm, 77kg", "소속팀","LG","LG 트윈스 (투수, 60)" ,"49"],
	[ "채지선", "출생", "1995년 7월 11일", "신체", "180cm, 70kg", "소속팀","LG","LG 트윈스 (투수, 67)" ,"50"],

	[ "김원중", "출생", "1993년 6월 14일", "신체", "192cm, 91kg", "소속팀","GI","롯데 자이언츠 (투수, 34)" ,"51"],
	[ "박세웅", "출생", "1995년 11월 30일", "신체", "181cm, 78kg", "소속팀","GI","롯데 자이언츠 (투수, 32)" ,"52"],
	[ "구승민", "출생", "1990년 6월 12일", "신체", "181cm, 80kg", "소속팀","GI","롯데 자이언츠 (투수, 22)" ,"53"],
	[ "박진형", "출생", "1994년 6월 10일", "신체", "181cm, 77kg", "소속팀","GI","롯데 자이언츠 (투수, 40)" ,"54"],
	[ "서준원", "출생", "2000년 11월 5일", "신체", "187cm, 95kg", "소속팀","GI","롯데 자이언츠 (투수, 39)" ,"55"],
	[ "김건국", "출생", "1988년 2월 2일", "신체", "179cm, 85kg", "소속팀","GI","롯데 자이언츠 (투수, 42)" ,"56"],
	[ "김대우", "출생", "1984년 7월 26일", "신체", "189cm, 95kg", "소속팀","GI","롯데 자이언츠 (투수, 41)" ,"57"],
	[ "이인복", "출생", "1991년 6월 18일", "신체", "187cm, 94kg", "소속팀","GI","롯데 자이언츠 (투수, 35)" ,"58"],
	[ "김유영", "출생", "1994년 5월 2일", "신체", "180cm, 80kg", "소속팀","GI","롯데 자이언츠 (투수, 55)" ,"59"],
	[ "최준용", "출생", "2001년 10월 10일", "신체", "185cm, 85kg", "소속팀","GI","롯데 자이언츠 (투수, 56)" ,"60"],

	[ "박준표", "출생", "1992년 6월 26일", "신체", "181cm, 93kg", "소속팀","KIA","KIA 타이거즈 (투수, 31)" ,"61"],
	[ "장현식", "출생", "1995년 2월 24일", "신체", "181cm, 91kg", "소속팀","KIA","KIA 타이거즈 (투수, 50)" ,"62"],
	[ "임기영", "출생", "1993년 4월 16일", "신체", "184cm, 78kg", "소속팀","KIA","KIA 타이거즈 (투수, 17)" ,"63"],
	[ "정해영", "출생", "2001년 8월 23일", "신체", "189cm, 97kg", "소속팀","KIA","KIA 타이거즈 (투수, 62)" ,"64"],
	[ "이민우", "출생", "1993년 2월 9일", "신체", "185cm, 94kg", "소속팀","KIA","KIA 타이거즈 (투수, 11)" ,"65"],
	[ "박진태", "출생", "1994년 10월 19일", "신체", "180cm, 83kg", "소속팀","KIA","KIA 타이거즈 (투수, 46)" ,"66"],

	[ "최원준", "출생", "1994년 12월 21일", "신체", "182cm, 91kg", "소속팀","DU","두산 베어스 (투수, 61)" ,"67"],
	[ "박치국", "출생", "1998년 3월 10일", "신체", "177cm, 78kg", "소속팀","DU","두산 베어스 (투수, 1)" ,"68"],
	[ "홍건희", "출생", "1992년 9월 29일", "신체", "186cm, 88kg", "소속팀","DU","두산 베어스 (투수, 17)" ,"69"],
	[ "김강률", "출생", "1988년 8월 28일", "신체", "187cm, 95kg", "소속팀","DU","두산 베어스 (투수, 27)" ,"70"],
	[ "김민규", "출생", "1999년 5월 7일", "신체", "183cm, 88kg", "소속팀","DU","두산 베어스 (투수, 19)" ,"71"],
	[ "김명신", "출생", "1993년 11월 29일", "신체", "178cm, 90kg", "소속팀","DU","두산 베어스 (투수, 46)" ,"72"],
	[ "남호", "출생", "2000년 7월 20일", "신체", "183cm, 86kg", "소속팀","DU","두산 베어스 (투수, 11)" ,"73"],
	[ "윤명준", "출생", "1989년 6월 18일, 광주광역시", "신체", "178cm, 78kg", "소속팀","DU","두산 베어스 (투수, 42)" ,"74"],
	[ "이승진", "출생", "1995년 1월 7일, 경기도 수원", "신체", "186cm, 88kg", "소속팀","DU","두산 베어스 (투수, 55)" ,"75"],

	[ "김민우", "출생", "1995년 7월 25일", "신체", "186cm, 97kg", "소속팀","HE","한화 이글스 (투수, 53)" ,"76"],
	[ "김진영", "출생", "1992년 4월 16일", "신체", "180cm, 89kg", "소속팀","HE","한화 이글스 (투수, 37)" ,"77"],
	[ "강재민", "출생", "1997년 4월 3일", "신체", "180cm, 86kg", "소속팀","HE","한화 이글스 (투수, 55)" ,"78"],
	[ "윤대경", "출생", "1994년 4월 9일, 인천광역시", "신체", "179cm, 75kg", "소속팀","HE","한화 이글스 (투수, 5)" ,"79"],
	[ "김종수", "출생", "1994년 6월 3일", "신체", "180cm, 80kg", "소속팀","HE","한화 이글스 (투수, 1)" ,"80"],
	[ "김이환", "출생", "2000년 9월 15일", "신체", "183cm, 87kg", "소속팀",	"HE","한화 이글스 (투수, 45)" ,"81"],
	[ "문동욱", "출생", "1992년 1월 7일", "신체", "187cm, 88kg", "소속팀","HE","한화 이글스 (투수, 38)" ,"82"],
	[ "박주홍", "출생", "1999년 8월 20일", "신체", "178cm, 109kg", "소속팀","HE","한화 이글스 (투수, 18)" ,"83"]
	]

// team_member_list
function playerPredict() {
	var arr = $("#address2 option:selected").val();

	$('#address3').empty();
	var fu = $("<option value = ''>선택해주세요</option>");
	$('#address3').append(fu);

	for (var i = 0; i < team_member_list.length; i++) {
		if (arr == team_member_list[i][1]) {
			var option = $("<option value = " + team_member_list[i][0] + ">"
					+ team_member_list[i][0] + "</option>");
			$('#address3').append(option);
		}
	}

}

//선수 정보
function playerPredictData(){
	$(".desc-left").removeClass("show");
	
	var arr = $("#address2 option:selected").val();
	var arr2 = $("#address3 option:selected").val();//이름
	
	$("#plaryName").text("");
	$("#birth").text("");
	$("#bady-profile").text("");
	$("#affiliation-team").text("");
	
	for(var i = 0; i<data_list.length; i++){
		
		if(arr==data_list[i][6] && arr2==data_list[i][0]){
			$("#plaryName").text(data_list[i][0]);
			$("#birth").text(data_list[i][2]);
			$("#bady-profile").text(data_list[i][4]);
			$("#affiliation-team").text(data_list[i][7]);
			$("#plarypicture").attr("src", 'assets/plarypicture/'+data_list[i][6]+data_list[i][8]+'.png');
			break;
		}
	}
	//decodeURI(data_list[i][0])
	
	
	$(".desc-left").addClass("show");
	
	
	
}







