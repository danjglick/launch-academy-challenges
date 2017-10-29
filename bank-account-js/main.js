class BankAccount {
	constructor(initialBalance, transactions) {
		this.initialBalance = initialBalance;
		this.transactions = transactions || [];
	}
	addTransaction(amount) {
		this.transactions.push(amount);
	}
	currentBalance() {
		let currentBalance = this.initialBalance;
		this.transactions.forEach(transaction => {
			currentBalance += transaction;
		})
		return currentBalance;
	}
}

let glick = new BankAccount(1000, [-45, -99.95, -34.43]);
console.log(glick.currentBalance());
