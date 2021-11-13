import net.http
import readline


fn main(){
	// mut r := readline.Readline{}
	//team := r.read_line('Input a soccer team: ')
	request('Liverpool')
}
fn request(team string){
	resp := http.get('https://www.thesportsdb.com/api/v1/json/1/searchteams.php?t=$team') or {
    	println('failed to fetch data from the server')
    	return
	}
	println(resp)
}
