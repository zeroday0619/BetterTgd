/* = Tab Context Save = */
const previousTabUrls: string[] = [];

function RepleaceHeaderTitleHref(OnAction: boolean){
    if (OnAction) {
        return "/lib/tgd/script.js"
    } else {
        console.log("It doesn't work on this page.")
    }
}

browser.tabs.onUpdated.addListener(async (tabId, info, tab) => {
    const url: string = info.url || tab.url;
    const previousTabUrl: string = previousTabUrls[tabId];

    const checkUrl: boolean = url.startsWith("https://tgd.kr/s/")

    let scriptPath = RepleaceHeaderTitleHref(checkUrl);
    if (scriptPath) {
        await browser.tabs.executeScript(tabId, {
            file: scriptPath
        });
        console.log('OK');
    }
});