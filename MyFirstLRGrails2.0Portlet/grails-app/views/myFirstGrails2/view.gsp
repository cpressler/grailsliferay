<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet" %>
<div>
<h1>View Page Grails V2.02 Test</h1>
The map returned by renderView is passed in. Value of mykey: ${mykey}
<form action="${portletResponse.createActionURL()}">
    <input type="submit" value="Submit"/>
</form>
</div>
