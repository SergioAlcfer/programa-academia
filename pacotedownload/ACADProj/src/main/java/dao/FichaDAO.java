

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Ficha;

public class FichaDAO {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Ficha>lista=new ArrayList<>();

    public FichaDAO() {
        conn = new ConnectionFactory().getConexao();
    }
    
    public void inserir (Ficha ficha){
        String sql = "INSERT INTO dbpm.Ficha(id_Aluno, id_Professor, data_Ficha)VALUES(?,?,?)";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, ficha.getId_Aluno());
            stmt.setInt(2, ficha.getId_Professor());
            stmt.setString(3, ficha.getData_Ficha());
            stmt.execute();
            stmt.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 2: "+erro);
        }
    }
    public void alterar (Ficha ficha){
        String sql = "UPDATE dbpm.Ficha SET id_Aluno =?, id_Professor =? WHERE id_Ficha =?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, ficha.getId_Aluno());
            stmt.setInt(2, ficha.getId_Professor());
            stmt.setInt(3, ficha.getId_Ficha());
            stmt.execute();
            stmt.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 3: "+erro);
        }
    }
    public void excluir(int valor){
        String sql = "DELETE FROM dbpm.Ficha WHERE id_Ficha ="+valor;
        try {
            st=conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 4: "+erro);
        }
    }
    public ArrayList<Ficha>listarTodos(){
        String sql = "SELECT * FROM dbpm.Ficha";
        try {
            st=conn.createStatement();
            rs=st.executeQuery(sql);
            while(rs.next()){
                Ficha ficha = new Ficha();
                ficha.setData_Ficha(rs.getString("data_Ficha"));
                ficha.setId_Ficha(rs.getInt("id_Ficha"));
                ficha.setId_Aluno(rs.getInt("id_Aluno"));
                ficha.setId_Professor(rs.getInt("id_Professor"));
                lista.add(ficha);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro 5: "+erro);
        }
        return lista;
    }
     public ArrayList<Ficha>listarTodosNome(int id){
        String sql = "SELECT * FROM dbpm.Ficha WHERE id_Aluno LIkE '%"+id+"%'";
        try {
            st=conn.createStatement();
            rs=st.executeQuery(sql);
            while(rs.next()){
                Ficha ficha = new Ficha();
                ficha.setData_Ficha(rs.getString("data_Ficha"));
                ficha.setId_Ficha(rs.getInt("id_Ficha"));
                ficha.setId_Aluno(rs.getInt("id_Aluno"));
                ficha.setId_Professor(rs.getInt("id_Professor"));
                lista.add(ficha);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro 6: "+erro);
        }
        return lista;
    }
}
