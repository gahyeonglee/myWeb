function writeSave() {
	if(doucument.writeForm.writer.value==""){
		alert("wirte your name.")
		doucument.writeForm.writer.focus();
		return false;
	}
	
	if(doucument.writeForm.subject.value==""){
		alert("wirte your posting title.")
		doucument.writeForm.subject.focus();
		return false;
	}
	
	if(doucument.writeForm.content.value==""){
		alert("wirte your contets.")
		doucument.writeForm.content.focus();
		return false;
	}
	
	if(doucument.writeForm.pass.value==""){
		alert("wirte your password.")
		doucument.writeForm.pass.focus();
		return false;
	}
}