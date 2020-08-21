
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Aluno;

public class AlunoDAO {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Aluno>lista=new ArrayList<>();

    public AlunoDAO() {
        conn = new ConnectionFactory().getConexao();
    }
    
    public void inserir (Aluno aluno){
        String sql = "INSERT INTO dbpm.Aluno(nome_Aluno, senha_Aluno)VALUES(?,?)";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, aluno.getNome_Aluno());
            stmt.setString(2, aluno.getSenha_Aluno());
            stmt.execute();
            stmt.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 2: "+erro);
        }
    }
    public void alterar (Aluno aluno){
        String sql = "UPDATE dbpm.Aluno SET nome_Aluno =?, senha_Aluno =? WHERE id_Aluno =?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, aluno.getNome_Aluno());
            stmt.setString(2, aluno.getSenha_Aluno());
            stmt.setInt(3, aluno.getId_Aluno());
            stmt.execute();
            stmt.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 3: "+erro);
        }
    }
    public void excluir(int valor){
        String sql = "DELETE FROM dbpm.Aluno WHERE id_Aluno ="+valor;
        try {
            st=conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 4: "+erro);
        }
    }
    public ArrayList<Aluno>listarTodos(){
        String sql = "SELECT * FROM dbpm.Aluno";
        try {
            st=conn.createStatement();
            rs=st.executeQuery(sql);
            while(rs.next()){
                Aluno aluno = new Aluno();
                aluno.setId_Aluno(rs.getInt("id_Aluno"));
                aluno.setNome_Aluno(rs.getString("nome_Aluno"));
                lista.add(aluno);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro 5: "+erro);
        }
        return lista;
    }
     public ArrayList<Aluno>listarTodosNome(String nome){
        String sql = "SELECT * FROM dbpm.Aluno WHERE nome_Aluno LIkE '%"+nome+"%'";
        try {
            st=conn.createStatement();
            rs=st.executeQuery(sql);
            while(rs.next()){
                Aluno aluno = new Aluno();
                aluno.setId_Aluno(rs.getInt("id_Aluno"));
                aluno.setNome_Aluno(rs.getString("nome_Aluno"));
                lista.add(aluno);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro 6: "+erro);
        }
        return lista;
    }
}
