@Grab('org.codehaus.groovy.modules.http-builder:http-builder:0.7.1')
import groovyx.net.http.RESTClient

def client = new RESTClient('https://httpbin.org/')
def response = client.get(path: 'json')

println "Title: ${response.data.slideshow.title}"
