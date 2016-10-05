<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/common/header.jsp"></jsp:include>
<script type="text/javascript">
	$(document).ready(function() {
		var error = "${error}";
		if (error == 1) {
			alert("제목을 입력하세요.");
		}
		if (error == 2) {
			alert("내용을 입력하세요.");
		}

		$("#writeBtn").click(function() {
			$("#writeForm").attr({
				"method" : "post",
				"action" : "./doWrite"
			}).submit();
		});
	});
</script>
<jsp:include page="/WEB-INF/view/common/header2.jsp"></jsp:include>
							<div id="writeBtn" class="block div_btn"
								style="background: brown; font-weight: bold; color: white">
								등록</div>
						</div>
					</div>
				</div>
				<div class="clear_left" style="width: 100%; border: 1px solid #ccc;">
				</div>
				<div style="font-size: 20px;">
					<form id="writeForm">
						<div style="background: #efefef; padding: 5px 20px 5px 20px;">
							<input type="text" id="title" name="title"
								style="background: #efefef;; border: 0px; width: 100%; height: 25px"
								placeholder="제목을 적어주세요." />
						</div>
						<div style="padding: 5px 20px 5px 20px; height: 500px;">
							<textarea id="content" name="content"
								style="border: 0px; width: 100%; height: 100%;"
								placeholder="내용을 적어주세요."></textarea>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!-- 이용약관 -->
<jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>