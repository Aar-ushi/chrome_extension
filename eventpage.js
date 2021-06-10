var contextMenuItem ={
    "id": "search",
    "title": "Search Bing for %s",
    "contexts": ["selection"]
}

chrome.contextMenus.create(contextMenuItem);

chrome.contextMenus.onClicked.addListener(function(selected_data)
{
    if(selected_data.menuItemId=="search" && selected_data.selectionText){
        
        let search_url="https://www.bing.com/search?q="+ selected_data.selectionText;
        let final_window = {
            "url": search_url,
            "type": "popup",
            "width": screen.availWidth,
            "height": screen.availHeight
        }
        chrome.windows.create(final_window, function(){});
    }
});