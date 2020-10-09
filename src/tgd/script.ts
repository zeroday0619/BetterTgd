(async () => {
    // href : ex> 김용녀 | https://tgd.kr
    let headerTitle = <HTMLAnchorElement> document.querySelector("body > header > div:nth-child(1) > div > div.col-xs-4 > a");
    // href : ex> 김용녀 | https://tgd.kr/s/b4kking
    let boardInfoTitle = <HTMLAnchorElement> document.querySelector("#board-info > h1 > a");
    // replace
    headerTitle.href = boardInfoTitle.href
})();