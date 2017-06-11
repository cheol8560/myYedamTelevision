/**
 * 	새로 정의해서 사용해야할 자바스크립트 코드 정의
 */

'use strict';

	function bjOpen(url, name) {
		var userwidth = (window.outerWidth - window.innerWidth);
		var userheight = (window.outerHeight - window.innerHeight);
		window.open(url, name,'scrollbars=yes, toolbar=no, location=no, status=yes, ' + 
				' menubar=no, resizable=yes, width=1500, height=780, left=0, top=0');
	}