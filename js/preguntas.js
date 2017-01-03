var cuestionario = new Array();

cuestionario[0] = ["¿Cuál es el resultado de minimizar? (((x+y)'+yzw) )' x' y' ",1,["xy'+x'yz'+x'yw'","ay'+a'bc'+a'bd'","xy'z+x'yz'+x'ywz'","xyz+x'yz'+x'ywz'"]];
cuestionario[1] = ["¿Cuál es el resultado de minimizar? a (bc + ac) +bc ",1,[" bc + ac "," bc + a"," abc + ac"," ab + cd"]];
cuestionario[2] = ["¿Cuál es el resultado de lal siguiente operación? p(p+q)",3,["pq","q","p","p'"]];
cuestionario[3] = ["¿Cuál es la SOP de la siguiente operación? p+q",2,["p+q'", "pq+pq'+p'q","p'q+qq'+p'q+pq+q","p'q+qq'"]];
cuestionario[4] = ["¿Cuál es la correcta demostración de idempotencia?",4,["a=a.1=aa.aa+aa.aa'=a.a","b=ab.1=b.b+b.b'=ab.b","a=a.1=a.ba+a.ba'=a.a","a=a.1=a.a+a.a'=a.a"]];

var nums = [0,1,2,3,4];
var pr1 = Math.floor(Math.random() * (10+1));
var currentIndex = nums.length, temporaryValue, randomIndex ;

while (0 !== currentIndex) {
	randomIndex = Math.floor(Math.random() * currentIndex);
	currentIndex -= 1;

	temporaryValue = nums[currentIndex];
	nums[currentIndex] = nums[randomIndex];
	nums[randomIndex] = temporaryValue;
}
