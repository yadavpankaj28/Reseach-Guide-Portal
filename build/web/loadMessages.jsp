<%@include file="DbConnect.jsp" %>
<%
 String myid = (String)session.getAttribute("username").toString();
    String yemail = (String) session.getAttribute("yemail");
 String time = request.getParameter("last_time");
  

                               
                                     
                                                  ResultSet  res = s.executeQuery("select * from messages where (msgfrom='"+yemail+"' and msgto='"+myid+"' or (msgfrom='"+myid+"' and msgto='"+yemail+"')) and msgTime>'"+time+"' order by msgTime asc ;");
                                                  //out.println("select * from messages where (msgfrom='"+yemail+"' and msgto='"+myid+"' or (msgfrom='"+myid+"' and msgto='"+yemail+"')) and msgTime>'"+time+"' order by msgTime asc ;");
                                                       String ltime="";
                                                
                                            String t="";
                                                      while(res.next())
                                                    {
                                               //      if(res.getString("msgfrom").equals(myid))
                                                     {
                                                        t=t+"<br><b><font color=red>"+res.getString("msgfrom")+"</font>";
                                                        t=t+":"+res.getString("description");
                                                             ltime = res.getString("msgTime");
                                         
                                                       }
                                                                                               
                                                    }
                                              if(t.length()>5)
                                                      out.println(t+"^"+ltime);
                                                %>
