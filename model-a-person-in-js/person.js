let me = {
	firstName: 'Dan',
	lastName: 'Glick',
	hometown: 'Wayland',
	occupation: 'Software Engineer',
	catchPhrase: 'To infiniti, and beyond!',
	name() {
		return this.firstName + " " + this.lastName
	}
}

console.log(me.name())