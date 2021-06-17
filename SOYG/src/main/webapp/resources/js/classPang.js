$(function() {
	CKEDITOR.replace('meaning', {
		resize_enable: false,
		filebrowserUploadUrl: '${pageContext.request.contextPath }/imageUpload',
		width: "735px",
		height: "350px",
	});
	CKEDITOR.replace('course', {
		resize_enable: false,
		filebrowserUploadUrl: '${pageContext.request.contextPath}/imageUpload',
		width: "735px",
		height: "200px",
	});

	$count = 0;
	$count_1 = 0;
	$count_2 = 0;
	$count_3 = 0;
	$count_4 = 0;
	$count_5 = 0;
	$enCount = ["One", "Two", "Three", "Four", "Five"];
	$numCount = ["1", "2", "3", "4", "5"];

	$addCourse = function(course) {
		console.log(course);
		if (course == "bigCourse") {
			if ($count > 3) {
				alert("더이상 추가할 수 없습니다.");
			} else {
				$count += 1;
				console.log($enCount[$count]);
				$addHtml = '<div class="card"><div class="card-header" role="tab" id="heading' + $enCount[$count] + '"><h5 class="mb-0"><a data-toggle="collapse" href="#collapse' + $enCount[$count] + '" aria-expanded="true" aria-controls="collapse' + $enCount[$count] + '"><i class="indicator ti-minus"></i><input type="text" name="bigCourse' + $enCount[$count] + '" id="bigCourse' + $enCount[$count] + '" /></a></h5></div><div id="collapse' + $enCount[$count] + '" class="collapse show" role="tabpanel" aria-labelledby="heading' + $enCount[$count] + '"><div class="card-body"><input type="text" name="midCourse' + $enCount[$count] + '" id="midCourse' + $enCount[$count] + '" /><div class="list_lessons_2"><ul class="listBody' + $enCount[$count] + '"><li><input type="text" name="smallCourse' + $enCount[$count] + '_' + $numCount[0] + '" id="smallCourse' + $enCount[$count] + '_' + $numCount[0] + '" />&nbsp;&nbsp;&nbsp;<span>과정제목 추가</span><button type="button" id="addSmallBtn' + $enCount[$count] + '" class="btn btn-primary btnsIze"><small>추가</small></button></li></ul></div></div></div></div><!-- /card -->';
				$("#accordion_lessons").append($addHtml);
				$("#addSmallBtn" + $enCount[$count]).attr("onclick", "$addCourse('smallCourse" + $enCount[$count] + "')");
			}
		} else if (course == "smallCourse") {
			if ($count_1 > 3) {
				alert("더이상 추가할 수 없습니다.");
			} else {
				$count_1 += 1;
				$addHtml = '<li><input type="text" name="smallCourseOne_' + $numCount[$count_1] + '" id="smallCourseOne_' + $numCount[$count_1] + '" /></li>';
				$(".listBodyOne").append($addHtml);
			}
		} else if (course == "smallCourseTwo") {
			if ($count_2 > 3) {
				alert("더이상 추가 할 수 없습니다.");
			} else {
				$count_2 += 1;
				$addHtml = '<li><input type="text" name="smallCourseTwo_' + $numCount[$count_2] + '" id="smallCourseTwo_' + $numCount[$count_2] + '" /></li>';
				$(".listBodyTwo").append($addHtml);
			}
		} else if (course == "smallCourseThree") {
			if ($count_3 > 3) {
				alert("더이상 추가 할 수 없습니다.");
			} else {
				$count_3 += 1;
				$addHtml = '<li><input type="text" name="smallCourseThree_' + $numCount[$count_3] + '" id="smallCourseThree_' + $numCount[$count_3] + '" /></li>';
				$(".listBodyThree").append($addHtml);
			}
		} else if (course == "smallCourseFour") {
			if ($count_4 > 3) {
				alert("더이상 추가 할 수 없습니다.");
			} else {
				$count_4 += 1;
				$addHtml = '<li><input type="text" name="smallCourseFour_' + $numCount[$count_4] + '" id="smallCourseFour_' + $numCount[$count_4] + '" /></li>';
				$(".listBodyFour").append($addHtml);
			}
		} else if (course == "smallCourseFive") {
			if ($count_5 > 3) {
				alert("더이상 추가 할 수 없습니다.");
			} else {
				$count_5 += 1;
				$addHtml = '<li><input type="text" name="smallCourseFive_' + $numCount[$count_5] + '" id="smallCourseFive_' + $numCount[$count_5] + '" /></li>';
				$(".listBodyFive").append($addHtml);
			}
		}

	};
})

function loadImg(value, num) {
	if (value.files && value.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			$("#previewImage" + num).attr("src", e.target.result);
		}
		reader.readAsDataURL(value.files[0]);
	}
}