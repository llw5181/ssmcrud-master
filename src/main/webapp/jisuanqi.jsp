<%@ page contentType="text\html" %>
<%@ page pageEncoding="UTF-8" %>
<html>
    <body>
        <%
            double a = 0.0;
            double b = 0.0;
            double p = 0.0;
            String numberone = request.getParameter("numberone");
            String numbertwo = request.getParameter("numbertwo");
            String operator = request.getParameter("operator");

            if (numberone != null && !"".equals(numberone) && numbertwo != null && !"".equals(numbertwo)) {
                a = Double.parseDouble(numberone);
                b = Double.parseDouble(numbertwo);
            } else {
                numberone = "0.0";
                numbertwo = "0.0";//默认值
            }

            if ("+".equals(operator)) {
                p = a + b;
            } else if ("-".equals(operator)) {
                p = a - b;
            } else if ("*".equals(operator)) {
                p = a * b;
            } else if ("/".equals(operator)) {
                p = a / b;
            }
        %>
        <h1>
            <font color="red">WAN YI ZHEN</font>
        </h1>
        <div style="margin: auto">
            <form action=" ">
                <input type="text" name="numberone"/>
                <select name="operator">
                    <option>+</option>
                    <option>-</option>
                    <option>*</option>
                    <option>/</option>
                </select>
                <input type="text" name="numbertwo" placeholder="<%=numbertwo %>"/>
                <input type="submit" name="提交" value="="/>
                <font color="red"><%=p %></font>
            </form>
        </div>
    </body>
</html>