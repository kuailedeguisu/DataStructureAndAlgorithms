cache = {}


def getpage(url):
    if cache.get(url):
        return cache[url]
    else:
        data = get_data_from_server(url)
        cache[url] = data
        return data


print getpage("http://baidu.com")
print getpage("http://outlook.com")

