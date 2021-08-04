function titleize (names, callback) {
    let title = names.map(name => `Mx. ${name} Bildner`);
    callback(title);
};

titleize(["Mary", "Brian", "Leo"], (names) => {
    names.forEach(name => console.log(name));
});


function Elephant (name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
    console.log(`${this.name} the elephant goes 'phrRRRRRRR!!!'`);
};

Elephant.prototype.grow = function () {
    this.height = this.height + 15;
};

Elephant.prototype.addTrick = function (trick) {}