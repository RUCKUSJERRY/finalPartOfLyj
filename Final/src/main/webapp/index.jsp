<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

/* Javascript 샘플 코드 */


	

	


function getPartyList() {
	var url = 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival'; /*URL*/
	
	function getParams() {
		var queryParams = '?' + encodeURIComponent('ServiceKey') + '='+'EMJ2Rn9mhuxuoj5KpdNO%2FsWOOIhCiNFnNu%2Bdlizv7uuLcIoIueA%2FPp8ld%2BJfPtz5uWRAxF3toCwBM5oUOU0Tyw%3D%3D'; /*Service Key*/
		queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
		queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
		queryParams += '&' + encodeURIComponent('MobileOS') + '=' + encodeURIComponent('ETC'); /**/
		queryParams += '&' + encodeURIComponent('MobileApp') + '=' + encodeURIComponent('AppTest'); /**/
		queryParams += '&' + encodeURIComponent('listYN') + '=' + encodeURIComponent('Y'); /**/
		queryParams += '&' + encodeURIComponent('arrange') + '=' + encodeURIComponent('A'); /**/
		queryParams += '&' + encodeURIComponent('eventStartDate') + '=' + encodeURIComponent('20210101'); /**/
		queryParams += '&' + encodeURIComponent('eventEndDate') + '=' + encodeURIComponent('20211231'); /**/
		queryParams += '&' + encodeURIComponent('areaCode') + '=' + encodeURIComponent('1'); /**/
		queryParams += '&' + encodeURIComponent('_type=json');
		
		return queryParams;
	}
	
	$.ajax({
		
		url: url+getParams(),
		method: 'get',
		dataType: 'json',
		success:function(data) {
			console.log(data.response.body.items)
			const list = data.response.body.items;
			
			const partylist = document.getElementById('partylist');
			
			for (const i = 0; i < list.length; i++) {
				
				const div = document.createElement('div');
				div.innerHTML(list[i]);
				
				partylist.append(div);
				
			}
				
			
		},
		error:function() {
			alert("실패")
		}
		
	})
	
	
}

</script>
</head>
<body>

	<a href="fullcalendar.do">fullcalendar</a>
	<a href="noticelist.do">공지</a>
	<a href="reservation.do">티켓예매</a>
	
	<!-- 축제 정보를 ajax로 받기 -->
	<input type="button" value="callList" onclick="getPartyList();">
	<div id="partylist">
	
	</div>
	
</body>
</html>

