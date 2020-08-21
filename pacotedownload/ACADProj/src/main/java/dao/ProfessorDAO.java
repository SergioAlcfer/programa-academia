
package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Professor;

public class ProfessorDAO {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Professor> lista = new ArrayList<>();

    public ProfessorDAO() {
        conn = new ConnectionFactory().getConexao();
    }
    
    public void inserir (Professor professor){
        String sql = "INSERT INTO dbpm.Professor(nome_Professor, senha_Professor) VALUES (?,?)";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, professor.getNome_Professor());
            stmt.setString(2, professor.getSenha_Professor());
            stmt.execute();
            stmt.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 11: "+erro);
        }
    }
    public void alterar (Professor professor){
        String sql = "UPDATE dbpm.Professor SET nome_Professor=?, senha_Professor=? WHERE id_Professor=?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, professor.getNome_Professor());
            stmt.setString(2, professor.getSenha_Professor());
            stmt.setInt(3, professor.getId_Professor());
            stmt.execute();
            stmt.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 12: "+erro);
        }
    }
    public void excluir (int valor){
        String sql = "DELETE FROM dbpm.Professor WHERE id_Professor ="+valor;
        try {
            st=conn.createStatement();
            st.execute(sql);
            st.close();
            
        } catch (Exception erro) {
            throw new RuntimeException("Erro 13: "+erro);
        }
    }
    public ArrayList<Professor>listarTodos(){
        String sql = "SELECT*FROM dbpm.Professor";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Professor professor = new Professor();
                professor.setId_Professor(rs.getInt("id_Professor"));
                professor.setNome_Professor(rs.getString("nome_Professor"));
                lista.add(professor);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro 14: "+erro);
        }
        return lista;
    }
    public ArrayList<Professor>listarTodosNome(String valor){
        String sql = "SELECT*FROM dbpm.Professor WHERE nome_Professor LIKE '%"+valor+"%'";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Professor professor = new Professor();
                professor.setId_Professor(rs.getInt("id_Professor"));
                professor.setNome_Professor(rs.getString("nome_Professor"));
                lista.add(professor);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro 15: "+erro);
        }
        return lista;
    }

}
