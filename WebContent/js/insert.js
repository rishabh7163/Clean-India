$(document).ready(function(){
	$('#reg').click(function() {
		var name=$('#name').val();
		var uname=$('#uname').val();
		var pass=$('#pass').val();
		var mobile=$('#mobile').val();
		var email=$('#email').val();
		
		if(name!=""&&uname!=""&&pass!=""&&mobile!=""&&email!=""){
		
		 $.post("usercontroller?opt=1",
				 {
	          name: name,
	          uname: uname,
	          pass:pass,
	          mobile:mobile,
	          email:email,
	        },
	        function(data){
	        $('#result').html(data);
	        });
		}else{
			alert("please fill all fields");
		}
	});
	
		$('#reset').click(function() {
			$('#name').val('');
			$('#uname').val('');
			$('#pass').val('');
			$('#mobile').val('');
			$('#email').val('');
		});
	
});