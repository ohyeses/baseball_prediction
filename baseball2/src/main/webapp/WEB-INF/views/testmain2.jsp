<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>선수별 예측연봉</title>
<script src="assets/css/highcharts2.css"></script>
<script src="assets/js/salary.js"></script>
<style type="text/css">
.datatable {
	font-family: Verdana, sans-serif;
	border-collapse: collapse;
	border: 1px solid #EBEBEB;
	margin: 10px auto;
	text-align: center;
	width: 100%;
	max-width: 500px;
}

.datatable caption {
	padding: 1em 0;
	font-size: 1.2em;
	color: #555;
}

.datatable th {
	font-weight: 600;
	padding: 0.5em;
}

.datatable td, #datatable th, #datatable caption {
	padding: 0.5em;
}

.datatable thead tr, #datatable tr:nth-child(even) {
	background: #f1f7ff;
}

.datatable tr:hover {
	background: #f8f8f8;
}
</style>
</head>
<body>
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/data.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>

	<!-- 1 -->
	<figure class="highcharts-figure">
		<div id="container1"></div>
		<table class="datatable" id="datatable1">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>박종훈</th>
					<td>32000</td>
					<td>31926.48928</td>
					<td>29000</td>
				</tr>
			</tbody>
		</table>
	</figure>

	<!-- 2 -->
	<!-- <figure class="highcharts-figure">
		<div id="container2"></div>
		<table class="datatable" id="datatable2">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>원종현</th>
					<td>30000</td>
					<td>28529.02303</td>
					<td>26000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	3
	<figure class="highcharts-figure">
		<div id="container3"></div>
		<table class="datatable" id="datatable3">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김상수</th>
					<td>30000</td>
					<td>23154.22849</td>
					<td>16500</td>
				</tr>
			</tbody>
		</table>
	</figure>


	4
	<figure class="highcharts-figure">
		<div id="container4"></div>
		<table class="datatable" id="datatable4">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>최원태</th>
					<td>29000</td>
					<td>20017.79399</td>
					<td>15000</td>
				</tr>
			</tbody>
		</table>
	</figure>

	5
	<figure class="highcharts-figure">
		<div id="container5"></div>
		<table class="datatable" id="datatable5">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>주권</th>
					<td>25000</td>
					<td>16291.3897</td>
					<td>15000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	6
	<figure class="highcharts-figure">
		<div id="container6"></div>
		<table class="datatable" id="datatable6">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김진성</th>
					<td>20000</td>
					<td>17694.82001</td>
					<td>16000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	7
	<figure class="highcharts-figure">
		<div id="container7"></div>
		<table class="datatable" id="datatable7">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>오주원</th>
					<td>20000</td>
					<td>16755.57975</td>
					<td>15000</td>
				</tr>
			</tbody>
		</table>
	</figure>

	8
	<figure class="highcharts-figure">
		<div id="container8"></div>
		<table class="datatable" id="datatable8">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>우규민</th>
					<td>20000</td>
					<td>63547.0485</td>
					<td>70000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	9
	<figure class="highcharts-figure">
		<div id="container9"></div>
		<table class="datatable" id="datatable9">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>고우석</th>
					<td>18000</td>
					<td>26620.95889</td>
					<td>22000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	10
	<figure class="highcharts-figure">
		<div id="container10"></div>
		<table class="datatable" id="datatable10">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>정우영</th>
					<td>10463.16917</td>
					<td>8000</td>
					<td>22000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	11
	<figure class="highcharts-figure">
		<div id="container11"></div>
		<table class="datatable" id="datatable11">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김재윤</th>
					<td>17000</td>
					<td>19604.78569</td>
					<td>12000</td>
				</tr>
			</tbody>
		</table>
	</figure>

	12
	<figure class="highcharts-figure">
		<div id="container12"></div>
		<table class="datatable" id="datatable12">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>서진용</th>
					<td>17000</td>
					<td>22596.30091</td>
					<td>20000</td>
				</tr>
			</tbody>
		</table>
	</figure>

	13
	<figure class="highcharts-figure">
		<div id="container13"></div>
		<table class="datatable" id="datatable13">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김원중</th>
					<td>17000</td>
					<td>14131.33878</td>
					<td>10000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	14
	<figure class="highcharts-figure">
		<div id="container14"></div>
		<table class="datatable" id="datatable14">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>배제성</th>
					<td>17000</td>
					<td>16255.37957</td>
					<td>11000</td>
				</tr>
			</tbody>
		</table>
	</figure>



	15
	<figure class="highcharts-figure">
		<div id="container15"></div>
		<table class="datatable" id="datatable15">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>박세웅</th>
					<td>16500</td>
					<td>15873.31131</td>
					<td>11000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	16
	<figure class="highcharts-figure">
		<div id="container16"></div>
		<table class="datatable" id="datatable16">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>함덕주</th>
					<td>16500</td>
					<td>20659.99425</td>
					<td>21000</td>
				</tr>
			</tbody>
		</table>
	</figure>

	17
	<figure class="highcharts-figure">
		<div id="container17"></div>
		<table class="datatable" id="datatable17">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>박준표</th>
					<td>16000</td>
					<td>12796.9325</td>
					<td>11000</td>
				</tr>
			</tbody>
		</table>
	</figure>

	18
	<figure class="highcharts-figure">
		<div id="container18"></div>
		<table class="datatable" id="datatable18">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>최원준</th>
					<td>16000</td>
					<td>11914.90912</td>
					<td>5900</td>
				</tr>
			</tbody>
		</table>
	</figure>



	19
	<figure class="highcharts-figure">
		<div id="container19"></div>
		<table class="datatable" id="datatable19">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김태훈</th>
					<td>16000</td>
					<td>23998.27378</td>
					<td>7500</td>
				</tr>
			</tbody>
		</table>
	</figure>



	20
	<figure class="highcharts-figure">
		<div id="container20"></div>
		<table class="datatable" id="datatable20">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김태훈</th>
					<td>16000</td>
					<td>23998.27378</td>
					<td>24000</td>
				</tr>
			</tbody>
		</table>
	</figure>



	21
	<figure class="highcharts-figure">
		<div id="container21"></div>
		<table class="datatable" id="datatable21">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김태훈</th>
					<td>16000</td>
					<td>24102.58717</td>
					<td>7500</td>
				</tr>
			</tbody>
		</table>
	</figure>


	22
	<figure class="highcharts-figure">
		<div id="container22"></div>
		<table class="datatable" id="datatable22">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김태훈</th>
					<td>16000</td>
					<td>24102.58717</td>
					<td>24000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	23
	<figure class="highcharts-figure">
		<div id="container23"></div>
		<table class="datatable" id="datatable23">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>박치국</th>
					<td>16000</td>
					<td>8520.788642</td>
					<td>8000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	24
	<figure class="highcharts-figure">
		<div id="container24"></div>
		<table class="datatable" id="datatable24">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>윤명준</th>
					<td>15600</td>
					<td>20396.65054</td>
					<td>21000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	25
	<figure class="highcharts-figure">
		<div id="container25"></div>
		<table class="datatable" id="datatable25">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>문경찬</th>
					<td>15600</td>
					<td>5238.277869</td>
					<td>3100</td>
				</tr>
			</tbody>
		</table>
	</figure>

	26
	<figure class="highcharts-figure">
		<div id="container26"></div>
		<table class="datatable" id="datatable26">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>구승민</th>
					<td>15600</td>
					<td>9451.496403</td>
					<td>8000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	27
	<figure class="highcharts-figure">
		<div id="container27"></div>
		<table class="datatable" id="datatable27">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>장현식</th>
					<td>15000</td>
					<td>8084.582048</td>
					<td>6400</td>
				</tr>
			</tbody>
		</table>
	</figure>



	28
	<figure class="highcharts-figure">
		<div id="container28"></div>
		<table class="datatable" id="datatable28">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>소형준</th>
					<td>14000</td>
					<td>7187.014657</td>
					<td>2700</td>
				</tr>
			</tbody>
		</table>
	</figure>


	29
	<figure class="highcharts-figure">
		<div id="container29"></div>
		<table class="datatable" id="datatable29">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>임창민</th>
					<td>14000</td>
					<td>15692.20292</td>
					<td>16000</td>
				</tr>
			</tbody>
		</table>
	</figure>



	30
	<figure class="highcharts-figure">
		<div id="container30"></div>
		<table class="datatable" id="datatable30">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>임정호</th>
					<td>13000</td>
					<td>9917.917522</td>
					<td>9200</td>
				</tr>
			</tbody>
		</table>
	</figure>




	30~60




	31
	<figure class="highcharts-figure">
		<div id="container31"></div>
		<table class="datatable" id="datatable31">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>최지광</th>
					<td>12000</td>
					<td>7040.810092</td>
					<td>6000</td>
				</tr>
			</tbody>
		</table>
	</figure>

	32
	<figure class="highcharts-figure">
		<div id="container32"></div>
		<table class="datatable" id="datatable32">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>양현</th>
					<td>12000</td>
					<td>9938.514897</td>
					<td>8400</td>
				</tr>
			</tbody>
		</table>
	</figure>


	33
	<figure class="highcharts-figure">
		<div id="container33"></div>
		<table class="datatable" id="datatable33">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>최동환</th>
					<td>12000</td>
					<td>6937.34642</td>
					<td>7000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	34
	<figure class="highcharts-figure">
		<div id="container34"></div>
		<table class="datatable" id="datatable34">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>박진형</th>
					<td>12000</td>
					<td>10396.43892</td>
					<td>9000</td>
				</tr>
			</tbody>
		</table>
	</figure>

	35
	<figure class="highcharts-figure">
		<div id="container35"></div>
		<table class="datatable" id="datatable35">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>송명기</th>
					<td>11000</td>
					<td>5882.828382</td>
					<td>2700</td>
				</tr>
			</tbody>
		</table>
	</figure>


	36
	<figure class="highcharts-figure">
		<div id="container36"></div>
		<table class="datatable" id="datatable36">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>홍건희</th>
					<td>11000</td>
					<td>9561.094754</td>
					<td>8000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	37
	<figure class="highcharts-figure">
		<div id="container37"></div>
		<table class="datatable" id="datatable37">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김강률</th>
					<td>11000</td>
					<td>22541.73528</td>
					<td>15000</td>
				</tr>
			</tbody>
		</table>
	</figure>

	38
	<figure class="highcharts-figure">
		<div id="container38"></div>
		<table class="datatable" id="datatable38">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>홍성민</th>
					<td>11000</td>
					<td>9749.757953</td>
					<td>10000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	39
	<figure class="highcharts-figure">
		<div id="container39"></div>
		<table class="datatable" id="datatable39">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>전유수</th>
					<td>10500</td>
					<td>10802.69007</td>
					<td>10000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	40
	<figure class="highcharts-figure">
		<div id="container40"></div>
		<table class="datatable" id="datatable40">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>이승진</th>
					<td>10000</td>
					<td>6994.340166</td>
					<td>2700</td>
				</tr>
			</tbody>
		</table>
	</figure>


	41
	<figure class="highcharts-figure">
		<div id="container41"></div>
		<table class="datatable" id="datatable41">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>임기영</th>
					<td>10000</td>
					<td>11765.19596</td>
					<td>7000</td>
				</tr>
			</tbody>
		</table>
	</figure>

	42
	<figure class="highcharts-figure">
		<div id="container42"></div>
		<table class="datatable" id="datatable42">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>이태양</th>
					<td>10000</td>
					<td>10435.5341</td>
					<td>7300</td>
				</tr>
			</tbody>
		</table>
	</figure>

	43
	<figure class="highcharts-figure">
		<div id="container43"></div>
		<table class="datatable" id="datatable43">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김태훈</th>
					<td>10000</td>
					<td>10247.98852</td>
					<td>7500</td>
				</tr>
			</tbody>
		</table>
	</figure>


	44
	<figure class="highcharts-figure">
		<div id="container44"></div>
		<table class="datatable" id="datatable44">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김태훈</th>
					<td>10000</td>
					<td>10247.98852</td>
					<td>24000</td>
				</tr>
			</tbody>
		</table>
	</figure>



	45
	<figure class="highcharts-figure">
		<div id="container45"></div>
		<table class="datatable" id="datatable45">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김태훈</th>
					<td>10000</td>
					<td>10143.67514</td>
					<td>7500</td>
				</tr>
			</tbody>
		</table>
	</figure>


	46
	<figure class="highcharts-figure">
		<div id="container46"></div>
		<table class="datatable" id="datatable46">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김태훈</th>
					<td>10000</td>
					<td>10143.67514</td>
					<td>24000</td>
				</tr>
			</tbody>
		</table>
	</figure>

	47
	<figure class="highcharts-figure">
		<div id="container47"></div>
		<table class="datatable" id="datatable47">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김민우</th>
					<td>9000</td>
					<td>11640.25076</td>
					<td>4200</td>
				</tr>
			</tbody>
		</table>
	</figure>

	48
	<figure class="highcharts-figure">
		<div id="container48"></div>
		<table class="datatable" id="datatable48">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>안우진</th>
					<td>9000</td>
					<td>5953.881942</td>
					<td>2700</td>
				</tr>
			</tbody>
		</table>
	</figure>



	49
	<figure class="highcharts-figure">
		<div id="container49"></div>
		<table class="datatable" id="datatable49">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>서준원</th>
					<td>8500</td>
					<td>7990.022224</td>
					<td>4600</td>
				</tr>
			</tbody>
		</table>
	</figure>



	50
	<figure class="highcharts-figure">
		<div id="container50"></div>
		<table class="datatable" id="datatable50">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김영규</th>
					<td>8300</td>
					<td>11126.29862</td>
					<td>6300</td>
				</tr>
			</tbody>
		</table>
	</figure>



	51
	<figure class="highcharts-figure">
		<div id="container51"></div>
		<table class="datatable" id="datatable51">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김세현</th>
					<td>8000</td>
					<td>11336.01252</td>
					<td>12000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	52
	<figure class="highcharts-figure">
		<div id="container52"></div>
		<table class="datatable" id="datatable52">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>유원상</th>
					<td>8000</td>
					<td>6654.515515</td>
					<td>4000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	53
	<figure class="highcharts-figure">
		<div id="container53"></div>
		<table class="datatable" id="datatable53">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김건태</th>
					<td>8000</td>
					<td>8671.796304</td>
					<td>9000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	54
	<figure class="highcharts-figure">
		<div id="container54"></div>
		<table class="datatable" id="datatable54">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김진영</th>
					<td>7900</td>
					<td>5064.870953</td>
					<td>3200</td>
				</tr>
			</tbody>
		</table>
	</figure>


	55
	<figure class="highcharts-figure">
		<div id="container55"></div>
		<table class="datatable" id="datatable55">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>강재민</th>
					<td>7900</td>
					<td>5612.089886</td>
					<td>2700</td>
				</tr>
			</tbody>
		</table>
	</figure>

	56
	<figure class="highcharts-figure">
		<div id="container56"></div>
		<table class="datatable" id="datatable56">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>윤대경</th>
					<td>7700</td>
					<td>5797.988535</td>
					<td>2800</td>
				</tr>
			</tbody>
		</table>
	</figure>


	57
	<figure class="highcharts-figure">
		<div id="container57"></div>
		<table class="datatable" id="datatable57">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>조현우</th>
					<td>7500</td>
					<td>4592.355821</td>
					<td>3000</td>
				</tr>
			</tbody>
		</table>
	</figure>



	58
	<figure class="highcharts-figure">
		<div id="container58"></div>
		<table class="datatable" id="datatable58">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>안영명</th>
					<td>7000</td>
					<td>31748.8713</td>
					<td>35000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	59
	<figure class="highcharts-figure">
		<div id="container59"></div>
		<table class="datatable" id="datatable59">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김민수</th>
					<td>7000</td>
					<td>9435.236344</td>
					<td>6500</td>
				</tr>
			</tbody>
		</table>
	</figure>



	60
	<figure class="highcharts-figure">
		<div id="container60"></div>
		<table class="datatable" id="datatable60">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>정해영</th>
					<td>7000</td>
					<td>11404.27612</td>
					<td>2700</td>
				</tr>
			</tbody>
		</table>
	</figure>



	61~89

	61
	<figure class="highcharts-figure">
		<div id="container61"></div>
		<table class="datatable" id="datatable61">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김종수</th>
					<td>6100</td>
					<td>4825.167884</td>
					<td>3800</td>
				</tr>
			</tbody>
		</table>
	</figure>

	62
	<figure class="highcharts-figure">
		<div id="container62"></div>
		<table class="datatable" id="datatable62">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김성민</th>
					<td>6000</td>
					<td>6687.420323</td>
					<td>5500</td>
				</tr>
			</tbody>
		</table>
	</figure>


	63
	<figure class="highcharts-figure">
		<div id="container63"></div>
		<table class="datatable" id="datatable63">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김건국</th>
					<td>6000</td>
					<td>6336.829288</td>
					<td>5400</td>
				</tr>
			</tbody>
		</table>
	</figure>


	64
	<figure class="highcharts-figure">
		<div id="container64"></div>
		<table class="datatable" id="datatable64">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>이민우</th>
					<td>6000</td>
					<td>6227.504788</td>
					<td>4300</td>
				</tr>
			</tbody>
		</table>
	</figure>

	65
	<figure class="highcharts-figure">
		<div id="container65"></div>
		<table class="datatable" id="datatable65">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>하준호</th>
					<td>6000</td>
					<td>5883.423462</td>
					<td>4500</td>
				</tr>
			</tbody>
		</table>
	</figure>


	66
	<figure class="highcharts-figure">
		<div id="container66"></div>
		<table class="datatable" id="datatable66">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김민규</th>
					<td>5500</td>
					<td>5483.29207</td>
					<td>2900</td>
				</tr>
			</tbody>
		</table>
	</figure>


	67
	<figure class="highcharts-figure">
		<div id="container67"></div>
		<table class="datatable" id="datatable67">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김선기</th>
					<td>5300</td>
					<td>5516.697499</td>
					<td>2700</td>
				</tr>
			</tbody>
		</table>
	</figure>

	68
	<figure class="highcharts-figure">
		<div id="container68"></div>
		<table class="datatable" id="datatable68">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김재웅</th>
					<td>5200</td>
					<td>5386.889674</td>
					<td>2700</td>
				</tr>
			</tbody>
		</table>
	</figure>


	69
	<figure class="highcharts-figure">
		<div id="container69"></div>
		<table class="datatable" id="datatable69">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김대우</th>
					<td>5000</td>
					<td>5878.02237</td>
					<td>2900</td>
				</tr>
			</tbody>
		</table>
	</figure>


	70
	<figure class="highcharts-figure">
		<div id="container70"></div>
		<table class="datatable" id="datatable70">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>조영우</th>
					<td>5000</td>
					<td>7571.638143</td>
					<td>3300</td>
				</tr>
			</tbody>
		</table>
	</figure>


	71
	<figure class="highcharts-figure">
		<div id="container71"></div>
		<table class="datatable" id="datatable71">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>박진태</th>
					<td>5000</td>
					<td>8627.858228</td>
					<td>6000</td>
				</tr>
			</tbody>
		</table>
	</figure>

	72
	<figure class="highcharts-figure">
		<div id="container72"></div>
		<table class="datatable" id="datatable72">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김대우</th>
					<td>5000</td>
					<td>4918.558224</td>
					<td>2900</td>
				</tr>
			</tbody>
		</table>
	</figure>

	73
	<figure class="highcharts-figure">
		<div id="container73"></div>
		<table class="datatable" id="datatable73">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>이정용</th>
					<td>5000</td>
					<td>5041.134689</td>
					<td>2700</td>
				</tr>
			</tbody>
		</table>
	</figure>


	74
	<figure class="highcharts-figure">
		<div id="container74"></div>
		<table class="datatable" id="datatable74">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김윤식</th>
					<td>5000</td>
					<td>7177.387594</td>
					<td>2700</td>
				</tr>
			</tbody>
		</table>
	</figure>



	75
	<figure class="highcharts-figure">
		<div id="container75"></div>
		<table class="datatable" id="datatable75">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>이인복</th>
					<td>4800</td>
					<td>4738.057112</td>
					<td>3000</td>
				</tr>
			</tbody>
		</table>
	</figure>


	76
	<figure class="highcharts-figure">
		<div id="container76"></div>
		<table class="datatable" id="datatable76">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김유영</th>
					<td>4500</td>
					<td>6358.328683</td>
					<td>6200</td>
				</tr>
			</tbody>
		</table>
	</figure>

	77
	<figure class="highcharts-figure">
		<div id="container77"></div>
		<table class="datatable" id="datatable77">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김명신</th>
					<td>4500</td>
					<td>5714.153538</td>
					<td>2700</td>
				</tr>
			</tbody>
		</table>
	</figure>

	78
	<figure class="highcharts-figure">
		<div id="container78"></div>
		<table class="datatable" id="datatable78">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>최준용</th>
					<td>4200</td>
					<td>5879.108332</td>
					<td>2700</td>
				</tr>
			</tbody>
		</table>
	</figure>



	79
	<figure class="highcharts-figure">
		<div id="container79"></div>
		<table class="datatable" id="datatable79">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김이환</th>
					<td>4100</td>
					<td>6358.399741</td>
					<td>3700</td>
				</tr>
			</tbody>
		</table>
	</figure>



	80
	<figure class="highcharts-figure">
		<div id="container80"></div>
		<table class="datatable" id="datatable80">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>이상규</th>
					<td>4000</td>
					<td>3229.452394</td>
					<td>2900</td>
				</tr>
			</tbody>
		</table>
	</figure>



	81
	<figure class="highcharts-figure">
		<div id="container81"></div>
		<table class="datatable" id="datatable81">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>문동욱</th>
					<td>3600</td>
					<td>3353.53715</td>
					<td>3200</td>
				</tr>
			</tbody>
		</table>
	</figure>


	82
	<figure class="highcharts-figure">
		<div id="container82"></div>
		<table class="datatable" id="datatable82">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>정수민</th>
					<td>3600</td>
					<td>6064.817368</td>
					<td>4200</td>
				</tr>
			</tbody>
		</table>
	</figure>


	83
	<figure class="highcharts-figure">
		<div id="container83"></div>
		<table class="datatable" id="datatable83">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>채지선</th>
					<td>3500</td>
					<td>3255.694317</td>
					<td>2800</td>
				</tr>
			</tbody>
		</table>
	</figure>


	84
	<figure class="highcharts-figure">
		<div id="container84"></div>
		<table class="datatable" id="datatable84">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>남호</th>
					<td>3300</td>
					<td>3000.939885</td>
					<td>2700</td>
				</tr>
			</tbody>
		</table>
	</figure>


	85
	<figure class="highcharts-figure">
		<div id="container85"></div>
		<table class="datatable" id="datatable85">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>박주홍</th>
					<td>3300</td>
					<td>5000.937797</td>
					<td>3500</td>
				</tr>
			</tbody>
		</table>
	</figure>

	86
	<figure class="highcharts-figure">
		<div id="container86"></div>
		<table class="datatable" id="datatable86">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>오원석</th>
					<td>3000</td>
					<td>6723.184395</td>
					<td>2700</td>
				</tr>
			</tbody>
		</table>
	</figure>


	87
	<figure class="highcharts-figure">
		<div id="container87"></div>
		<table class="datatable" id="datatable87">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김동혁</th>
					<td>3000</td>
					<td>7179.784445</td>
					<td>2670</td>
				</tr>
			</tbody>
		</table>
	</figure>



	88
	<figure class="highcharts-figure">
		<div id="container88"></div>
		<table class="datatable" id="datatable88">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>박관진</th>
					<td>3000</td>
					<td>3504.594389</td>
					<td>2670</td>
				</tr>
			</tbody>
		</table>
	</figure>


	89
	<figure class="highcharts-figure">
		<div id="container89"></div>
		<table class="datatable" id="datatable89">
			<thead>
				<tr>
					<th></th>
					<th>2021 연봉</th>
					<th>2021 예측연봉</th>
					<th>2020 연봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>김택형</th>
					<td>3000</td>
					<td>5259.028893</td>
					<td>3700</td>
				</tr>
			</tbody>
		</table>
	</figure> -->





	<!-- END -->
	<script src="assets/js/salary.js"></script>

</body>
</html>
