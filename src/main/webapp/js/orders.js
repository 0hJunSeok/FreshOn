/**
 * 
 */
function buy(){
	if(confirm('구매하시겠습니까?')){
		document.order.submit()
	}
}	

function paymoney(){
	if(confirm('결제하시겠습니까?')){
		alert('결제되었습니다')
		document.pay.submit()
	}
}