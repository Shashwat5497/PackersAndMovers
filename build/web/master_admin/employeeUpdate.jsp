<%@page import="java.util.StringTokenizer"%>
<%@page import="javafx.scene.control.Alert" %>
<jsp:useBean id="masterAdmin" class="Test.Master_Admin_Dao"></jsp:useBean>
<%
    String data = request.getParameter("data");
    StringTokenizer st = new StringTokenizer(data,"*");
    int id = Integer.parseInt(st.nextToken());
    String name = st.nextToken();
      String mob = st.nextToken();
        int branchId = Integer.parseInt(st.nextToken());
    String add = st.nextToken();
    String type=st.nextToken();
  
  
    String address = st.nextToken();
    int i = masterAdmin.updateEmployee(id, name, mob, branchId, add, type);
    if(i>0)
        out.print("Record Updated");
    else
        out.print("Record not Updated");
%>