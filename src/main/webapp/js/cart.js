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
