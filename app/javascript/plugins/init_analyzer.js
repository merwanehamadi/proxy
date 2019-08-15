const initAnalyzer =  () => {
  console.log("")
  document.addEventListener('click', function (event) {

    if (event.target.tagName === "TD") {
      Array.from(document.querySelectorAll("span")).forEach((element) => {
        element.classList.remove("mark");
      });
      Array.from(document.getElementsByClassName(`analyzer-${event.target.innerText}`)).forEach((element) => {
        element.classList.add("mark");
      });
      // Run your code to open a modal
    }
  }, false);
};
export { initAnalyzer };
