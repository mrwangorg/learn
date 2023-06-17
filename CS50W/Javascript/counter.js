if (!localStorage.getItem("counter")) {
    localStorage.setItem("counter", 0);
}

function count() {
    let counter = localStorage.getItem("counter");
    counter++;
    document.querySelector("h1").innerHTML = counter;
    localStorage.setItem("counter", counter);
}
document.addEventListener("DOMContentLoaded", function () {
    //first loaded then add function
    // document.querySelector("button").onclick = count; // without running the funtion
    document.querySelector("h1").innerHTML = localStorage.getItem("counter");
    document.querySelector("button").addEventListener("click", count);
});
