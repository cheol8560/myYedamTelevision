/**
 * 	새로 정의해서 사용해야할 자바스크립트 코드 정의
 */

'use strict';

	function bjOpen(url, name) {
		var userWidth = $( window ).width() * 0.725;
		var userHeight = $( window ).height() * 0.8;
		window.open(url, name,'scrollbars=yes, toolbar=no, location=no, status=yes, ' + 
				' menubar=no, resizable=yes, width='+userWidth+', height='+userHeight+', left=0, top=0');
	}