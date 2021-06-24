import webbrowser
import time
socialMediaUrls= ['www.facebook.com', 'www.twitter.com']
techUrls= ['www.linkedin.com','www.wikipedia.org']

def open_tabs(url_lists):
    for element in url_lists:
        webbrowser.open_new_tab(element)

def main():
    webbrowser.open('www.youtube.com', new=2, autoraise=False)
    time.sleep(1)
    open_tabs(socialMediaUrls)
    open_tabs(techUrls)
    
main()
