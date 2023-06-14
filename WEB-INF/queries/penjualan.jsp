<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %> <%@
taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery
  id="query01"
  jdbcDriver="com.mysql.jdbc.Driver"
  jdbcUrl="jdbc:mysql://localhost/fpdwo?user=root&password="
  catalogUri="/WEB-INF/queries/penjualan.xml"
>
  select {[Measures].[TotalDue],[Measures].[OrderQty]} ON COLUMNS,
  {([Customer].[All Customer], [Produk].[All Produk], [Waktu].[All Waktu],
  [Wilayah])} ON ROWS from [Penjualan]
</jp:mondrianQuery>

<c:set var="title01" scope="session">Query WHSAKILA using Mondrian OLAP</c:set>
