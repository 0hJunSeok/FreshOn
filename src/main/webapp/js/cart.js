/**
 * 
 */

		let total=0
		let prices = document.querySelectorAll('.price')
		let quants = document.querySelectorAll('.sumquant')
		let totals = document.querySelectorAll('.sumtotal')

		const qchange = function(){
			total=0
			totals.forEach((t,index) => {
				console.log(t.innerHTML)
				t.innerHTML = quants[index].value * prices[index].innerHTML
				total+=Number(t.innerHTML)
			})	
			document.getElementById('total').innerHTML=total
		}
	
	document.querySelectorAll('.sumquant').forEach(q => q.addEventListener('change',qchange))
	
	function buy(){
	if(confirm('구매하시겠습니까?')){
		alert('결제 페이지로 이동합니다.')
		document.forms[1].submit()
	}
}	

	function order(){
	if(confirm('결제하시겠습니까?')){
		alert('결제가 완료되었습니다.')
		document.forms[1].submit()
	}
}