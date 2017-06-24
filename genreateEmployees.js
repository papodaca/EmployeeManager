const Chance = require("chance");
let chance = Chance();


let users = [];

for(let ii=0; ii<200; ii++) {
	let address = `${chance.address()}\n${chance.city()}, ${chance.state()} ${chance.zip()}`;
	let user = {
		name: chance.name(),
		dob: chance.birthday().toISOString(),
		ssn: chance.ssn(),
		gender: chance.gender(),
		email: chance.email(),
		phone: chance.phone(),
		address
	};
	users.push(user);
}
console.log(JSON.stringify(users, null, 2))