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
	${myemployee['department'][departmentId]}<!-- YANLIS, ic ice siniflara veya degerlere erismek icin tirnak kullanılır. -->
	${myemployee[empId]}<!-- YANLIS, ic ice siniflara veya degerlere erismek icin tirnak kullanılır. -->
	<br>
	${map.key1}
    ${map.key2} 
    ${map.key3}
    
    ${map["key1"]}
    ${map[key1]}<!-- YANLIS. Map keyleri tirnak ici yazilir -->
	${map["key2"]}
	${map["key3"]}
	${map[key]}<!-- Tirnak icinde yazmazsak index adinda bir attr arar -->
	<br>
	${arrayList[0]}<!-- İndexler tirnak ici veya disi yazilabilir -->
	${arrayList['1']}
	${arrayList["2"]}
	${arrayList[index]}<!-- Tirnak icinde yazmazsak index adinda bir attr arar -->
	<br>
	
	
	<!-- EL impclicit nesneleri, JSP impclicit nesneler ile aynı degildir(PageContext haric).Orn request(JSP Implicit) ile requsetScope(EL Implicit) ayni degildir. 
	Request Scope attribute’leri tutan Map’tir.Sadece attrlere ulasabiliriz. Request Propertiese ulasamayız(Req poroperties'a PageContext ile ulastik)-->
	${hasan} 
	${requestScope.hasan} 
	${applicationScope.deniz} 
	${cookie.myCookie.value} 
	${header["host"]}
	${pageContext.request.method}	
    </body>
</html>