package testgrails


import javax.portlet.*

class TestPortlet {

	def title = 'Grails Portlet Title' // this show up in the Add menu on the left
	def description = '''
Description about the portlet goes here.
'''
	def displayName = 'TestGrails'
	def supports = ['text/html':['view', 'edit', 'help']]
	
	//uncomment to declare events support
	def events = [publish: ["event1"], process: ["event2"]]
	
	//uncomment to declare public render parameter support
	def public_render_params = ["prp-1","prp-2"]

	// Used for liferay
	// @see http://www.liferay.com/documentation/liferay-portal/6.0/development/-/ai/anatomy-of-a-portlet
	 def liferay_display_category = "category.sample"
         
    
     // DEFINITIONS FOR liferay-portlets.xml
  def liferay_portlet_ajaxable = 'true'
  /*
  def liferay_portlet_header_portlet_css = [
          '/css/protoFlow.css'
  ]
  def liferay_portlet_header_portlet_javascript = [
          '/plugins/richui-0.5/js/flow/lib/prototype.js',
          '/plugins/richui-0.5/js/flow/lib/scriptaculous.js',
          '/plugins/richui-0.5/js/reflection/reflection.js',
          '/plugins/richui-0.5/js/flow/protoFlow.js'
  ]
  */
	def actionView = {
		//TODO Define action phase for 'view' portlet mode
                println "In action view"
                log.info("In action view")
               
                PortletResponse portletResponse = (PortletResponse)request.getAttribute("javax.portlet.response");
                portletResponse.setRenderParameter("prp-1", "value-1");
                //portletResponse.setRenderParameter("prp-1", "value-1");
	}

	def eventView = {
		//TODO Define event phase for 'view' portlet mode.
		def eventValue = portletRequest.event.value
	}

	def renderView = {
		//TODO Define render phase for 'view' portlet mode.
		//Return the map of the variables bound to the view,
		//in this case view.gsp if it exists or render.gsp if not
                println "In render view"
               log.info("In render view")

		['mykey':'myvalue2']
	}

	def resourceView = {
		//TODO define resource phase for 'view' portlet mode.
		//Render HTML as response
		render {
			html {
				head()
				body {
					"Render me!!"
				}
			}
		}
	}

	def actionEdit = {
		//TODO Define action phase for 'edit' portlet mode
		//PortletResponse.setEvent("event-1","event-1")
		//PortletResponse.setPortletMode(PortletMode.VIEW)
	}

	def renderHelp = {
		//TODO Define render phase for 'help' portlet mode
		//Return the map of the variables bound to the view,
		//in this case help.gsp if it exists or render.gsp if not
		['mykey':'myvalue']
	}

	def doResource = {
		//TODO Define handling for default resource URL handling method, independent of porlet mode
		//Return the map of the variables bound to the view,
		//in this case resource.gsp
		['mykey':'myvalue']
	}

	//invoked by setting 'action' param in resourceURL (as an example) to 'doSomethingAjaxy'
	def doSomethingAjaxy =  {
		//render JSON
		render(contentType:"text/json") {
			example(mykey:"myvalue")
		}
	}

	//invoked by setting 'action' param in eventURL (as an example) to 'handleThisEvent'
	def handleThisEvent =  {
		//render thisEvent.gsp
		render(view:"thisEvent")
	}
}
