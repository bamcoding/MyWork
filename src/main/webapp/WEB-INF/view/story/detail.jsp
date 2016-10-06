<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/view/common/header.jsp"></jsp:include>

<script type="text/javascript">
	$(document).ready(function() {
		
		$("#likeBtn").mouseenter(function(){
		    $("#likeBtn").css("color", "red");
		});
		$("#likeBtn").mouseleave(function(){
		    $("#likeBtn").css("color", "black");
		});
		$("#likeBtn").click(function() {
			$.post("/WebToon/story/doLike", { id : "${story.id }"}, function(data) {
				//if(data){
				//	$("#like").text(data);
				if(data == "true"){
					var count = parseInt($("#like").text());
					$("#like").text(count+1);
				}
			});
		});
		$("#delBtn").click(function(){
			if(confirm("정말 삭제하시겠습니까?")){
				location.href="./doDelete?id=${story.id}";
			}
		});
		
	});
</script>
<jsp:include page="/WEB-INF/view/common/header2.jsp"></jsp:include>
							<div class="block div_btn">
								<a href="./write">글쓰기</a>
							</div>
						</div>
					</div>
				</div>
				<div class="clear_left" style="width: 100%; border: 1px solid #ccc;">
				</div>
				<div style="font-size: 20px;">

					<div style="background: #efefef; padding: 5px 20px 5px 20px;">
						<div class="block">${story.title }</div>
						<div class="block right">
							<a id="delBtn" href="javascript:void(0);">삭제</a>
						</div>
					</div>
					<div class="right_clear"
						style="padding: 5px 20px 5px 20px; border-bottom: 1px solid #efefef;">
						<div class="block" id="likeBtn">☆☆☆☆☆별점 <span id="like">${story.likeCount}</span></div>
						<div class="block">조회수 ${story.hitCount}</div>
						<div class="block right">${story.createdDate }</div>
					</div>
					<div class="right_clear"
						style="padding: 5px 20px 5px 20px; height: 500px;">${story.content }</div>
						<div>작성자 : ${story.userVO.nick }</div>
				</div>
			</div>
		</div>

		<!-- 이용약관 -->
<jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>