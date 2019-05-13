<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="model.*"%>

<html>
<body>
	
	<!--Employee nesnesi icindeki, department nesnesine ve degerlerine böyle ulasabiiliriz.-->
	<%=((Employee) request.getAttribute("myemployee")).getDepartment().getDepartmentId()%>
	<%=((Employee) request.getAttribute("myemployee")).getDepartment().getDepartmentName()%>
	<br>
	
	
	<!-- JSP UseBean ile Employee icineki department ce degerlerine erisemeyiz 
	 jsp:useBean>sadece bean’in property degerine ulasabilir , ic ice property alanina ulasamayiz!
	 Yani Employee sinifimizda yer alan instance variable’lara ulasabiliriz (department) fakat department
	 objemizin instance variable alanlarina ulasamayiz.
	 property=”employee.department” seklinde bir kullanim sekli yoktur !

	<jsp:useBean id="myemployee" class="model.Employee" scope="request"/>	
	<jsp:getProperty property="department" name="myemployee" />	  -->
	
	
	
	<!-- Expression Language(EL) araciligiyla ic ice(nested) property /instance variable degerlerine ulasabiliriz. -->
	
	<!-- (attribute name).(value) -->
	${myemployee.empId} 
    ${myemployee.name}
	${myemployee.department.departmentName }
	${myemployee.department.departmentId }
	
    ${myemployee["empId"]} 
	${myemployee['name']}
	${myemployee["department"]["departmentName"]}
	${myemployee['department']["departmentId"]}
	<br>
	${map.key1}
    ${map.key2} 
    ${map.key3}
    
    ${map["key1"]}
	${map["key2"]}
	${map["key3"]}
	${map[index]}<!--  index'i tirnak icinde yazmadigimiz icin, index adinda bir attribute aradi ve map["key2"] olmus oldu
						yani [] arasina cift ya da tek tirnakli yazmazsak attribute olarak arar-->
	<br>
	${mapInt['1']}
	${mapInt["2"]}
	${mapInt[1]}
	${mapInt[2]}
	<br>
	
	${arrayList[0]}
	${arrayList['1']}
	${arrayList["2"]}
	${arrayList[key]}
	
	
    </body>
</html>