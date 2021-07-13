<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� - �¼�����</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/default.css">
</head>
<body>
<%@ include file="/WEB-INF/jsp/menu_header.jsp" %>
	<div class="wrap">
		<div class="book_confirm" >
			<div align="center" class="receipt_box">
				<c:forEach var="con" items="${confirmList}">
					<ul>
						<li>${con.filmTitle }</li>
						<li>${con.locName }</li>
						<li>${con.confirmDate }</li>
						<li>${con.confrimTime }</li>
						<li>${con.seat }</li>
						<li>
							<div class="qr">
								<svg xmlns="http://www.w3.org/2000/svg" version="1.1" id="����_1" x="0" y="0" viewBox="0 0 100 100" xml:space="preserve"><path id="XMLID_362_" d="M35.822 7.501H7.5v28.304h28.322V7.501zm-3.398 24.908H10.898V10.898h21.526v21.511z"/><path id="XMLID_365_" d="M14.862 14.86h13.592v13.586H14.862z"/><path id="XMLID_388_" d="M92.466 7.501H64.144v28.304h28.322V7.501zm-3.398 24.908H67.542V10.898h21.526v21.511z"/><path id="XMLID_389_" d="M71.506 14.86h13.592v13.586H71.506z"/><path id="XMLID_392_" d="M7.5 92.424h28.322V64.12H7.5v28.304zm3.398-24.908h21.526v21.511H10.898V67.516z"/><path id="XMLID_393_" d="M14.862 71.479h13.592v13.586H14.862z"/><path id="XMLID_394_" d="M40.556 7.542h4.72v4.72h-4.72z"/><path id="XMLID_395_" d="M54.737 12.233h4.721v-4.72H50.017v9.44h4.72z"/><path id="XMLID_396_" d="M45.297 16.953h4.72v4.72h-4.72z"/><path id="XMLID_397_" d="M40.576 26.394v4.72h4.721v-9.44h-4.721z"/><path id="XMLID_398_" d="M50.017 26.394h4.72v4.72h-4.72z"/><path id="XMLID_399_" d="M54.737 21.674h4.72v4.72h-4.72z"/><path id="XMLID_400_" d="M45.297 31.114h4.72v4.72h-4.72z"/><path id="XMLID_401_" d="M54.737 31.114h4.72v4.72h-4.72z"/><path id="XMLID_402_" d="M7.535 54.716h4.72v4.72h-4.72z"/><path id="XMLID_403_" d="M12.225 45.255v-4.72h-4.72V49.976h9.44v-4.721z"/><path id="XMLID_411_" d="M16.945 49.976h4.72v4.72h-4.72z"/><path id="XMLID_412_" d="M21.666 54.696v4.72h9.44v-4.72h-4.72z"/><path id="XMLID_413_" d="M26.386 45.255h4.72v4.72h-4.72z"/><path id="XMLID_414_" d="M21.666 40.535h4.72v4.72h-4.72z"/><path id="XMLID_415_" d="M31.106 49.976h4.72v4.72h-4.72z"/><path id="XMLID_416_" d="M31.106 40.535h4.72v4.72h-4.72z"/><path id="XMLID_417_" d="M73.589 45.295h4.72v4.72h-4.72z"/><path id="XMLID_418_" d="M87.75 45.295v-4.72h-9.44v4.72h4.72z"/><path id="XMLID_419_" d="M83.03 50.016h4.72v4.72h-4.72z"/><path id="XMLID_420_" d="M78.31 54.736h4.72v4.72h-4.72z"/><path id="XMLID_421_" d="M87.75 45.295h4.72v4.72h-4.72z"/><path id="XMLID_422_" d="M73.589 78.326h4.72v4.72h-4.72z"/><path id="XMLID_423_" d="M83.03 83.047h4.72v4.72h-4.72z"/><path id="XMLID_424_" d="M78.31 87.767h4.72v4.72h-4.72z"/><path id="XMLID_425_" d="M87.75 78.326h4.72v4.72h-4.72z"/><path id="XMLID_426_" d="M87.75 87.767h4.72v4.72h-4.72z"/><path id="XMLID_427_" d="M40.577 59.425h4.72v4.72h-4.72z"/><path id="XMLID_428_" d="M40.547 68.886v4.72H49.988v-4.72h-4.721z"/><path id="XMLID_429_" d="M49.988 64.165h4.72v4.72h-4.72z"/><path id="XMLID_430_" d="M59.428 68.886h4.72v4.72h-4.72z"/><path id="XMLID_431_" d="M50.017 54.716h4.72v-9.421h-4.72v-.02h-4.691v-4.72h-4.72v4.72h4.691v4.741h-4.721v4.72H50.017z"/><path id="XMLID_433_" d="M40.606 78.318h4.72v4.72h-4.72z"/><path id="XMLID_434_" d="M40.576 87.778v4.721H50.017v-4.721h-4.72z"/><path id="XMLID_435_" d="M92.471 59.456v-4.72H87.75v4.72h-4.691v4.721H92.5v-4.721z"/><path id="XMLID_483_" d="M87.78 68.897h4.72v4.72h-4.72z"/><path id="XMLID_485_" d="M68.869 64.165v-.008h4.779v-4.721h-4.72v.009h-.03v-.009h-.029v-4.7h4.72v-4.72H59.458v4.72h4.691v4.709H54.708v4.72H64.149v4.721h4.72z"/><path id="XMLID_172_" d="M54.708 40.575h14.151v4.72H54.708z"/><path id="XMLID_179_" d="M83.03 73.606v-.009h.029v-9.42h-3.746v-.02h-4.72v4.72l-.974.02h-4.721v4.689h-4.719v.02h-.03v4.712H50.017V87.778h4.72v-4.72H64.149v4.72h-4.691v4.721h4.72v-.012h4.691V87.767h4.72v-4.72h-4.72v-.009h.029v-4.72h-.029v-.012h.03v-4.689h9.411v4.709h9.44v-4.72z"/><metadata xmlns:d="https://loading.io/stock/"><d:name>qr code,bar code,encode,scan</d:name><d:tags>cc-by,qr code,bar code,encode,scan</d:tags><d:license>by</d:license><d:slug>jzb00u</d:slug></metadata></svg>
							</div>
						</li>
					</ul>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>