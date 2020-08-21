
<%@page import="model.Exercicio"%>
<%@page import="dao.ExercicioDAO"%>
<%@page import="model.ExerciciosFicha"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ExerciciosFichaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir Ficha</title>
    </head>
    <body>
        <form action="executa_novaFicha.jsp"  method="post">
           
            <!--Ficha-->
            <label><%=request.getParameter("nome_Aluno")%></label><br/>
            <label>Codigo: </label><br/>
            <input type="text" name="id_Aluno" value="<%=request.getParameter("id_Aluno")%>" /><br/>
            <label>Professor: </label><br/>
            <input type="text" name="id_Professor" value="1" /><br/>
            
            
            <!--Exercicios Ficha-->
            <%
            String letra_ExerciciosFicha = "X";
            for(int x=0;x<70;x++){
                if (x==0){
                    %><label >Ficha A: </label></br><%
                    } else if (x==10) {
                        %><label >Ficha B: </label></br><%
                        }else if (x==20) {
                            %><label >Ficha C: </label></br><%
                            }else if (x==30) {
                                %><label >Ficha D: </label></br><%
                                    }else if (x==40) {
                                    %><label >Ficha E: </label></br><%
                                        }else if (x==50) {
                                        %><label >Ficha F: </label></br><%
                                            }else if (x==60) {
                                                %><label >Ficha G: </label></br><%
                                                    }else if (x==70) {
                                                          %><label >Ficha C: </label></br><%
                                                            }
                if (x<10){
                    letra_ExerciciosFicha="A";
                    } else if (x<20) {
                        letra_ExerciciosFicha="B";
                        } else if (x<30) {
                            letra_ExerciciosFicha="C";
                            } else if (x<40) {
                                letra_ExerciciosFicha="D";
                                 } else if (x<50) {
                                     letra_ExerciciosFicha="E";
                                     } else if (x<60) {
                                        letra_ExerciciosFicha="F";
                                        } else if (x<70) {
                                            letra_ExerciciosFicha="G";
                                           }
            %>
            <select name="exercicios_ExerciciosFicha<%out.print(Integer.toString(x));%>"  >
                <%
                ExercicioDAO exe = new ExercicioDAO();
                ArrayList<Exercicio>lista = exe.listarTodos();
                for(int num=0;num<lista.size();num++){
                    %>
                    <option><%=lista.get(num).getNome_Exercicio()%></option>
                    <%
                    }%>
            </select>
            
            <select name="serie_ExerciciosFicha<%out.print(Integer.toString(x));%>">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
            </select>
            
            <select name="repeticao_ExerciciosFicha<%out.print(Integer.toString(x));%>">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
                <option>13</option>
                <option>14</option>
                <option>15</option>
                <option>16</option>
                <option>17</option>
                <option>18</option>
                <option>19</option>
                <option>20</option>
                <option>30</option>
                <option>40</option>
                <option>50</option>
                <option>60</option>
            </select>
            <label>Peso: </label>
            <input type="text" name="peso_ExerciciosFicha<%out.print(Integer.toString(x));%>" size="1" />
            
            <input type="hidden" name="letra_ExerciciosFicha<%out.print(Integer.toString(x));%>" value="<%out.print(letra_ExerciciosFicha);%>" /></br>
            
            <%
                }
            %>
            
            <input type="submit" value="OK" />
            
        </form>
    </body>
</html>
