
package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Exercicio;

public class ExercicioDAO {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Exercicio>lista=new ArrayList<>();
    
    public ExercicioDAO() {
        conn = new ConnectionFactory().getConexao();
    }
    
    public void inserir (Exercicio exercicio){
        String sql = "INSERT INTO dbpm.Exercicio(nome_Exercicio, obs_Exercicio, grupo_Exercicio)VALUES(?,?,?)";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, exercicio.getNome_Exercicio());
            stmt.setString(2, exercicio.getObs_Exercicio());
            stmt.setString(3, exercicio.getGrupo_Exercicio());
            stmt.execute();
            stmt.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 2: "+erro);
        }
    }
    public void alterar (Exercicio exercicio){
        String sql = "UPDATE dbpm.Exercicio SET nome_Exercicio =?, obs_Exercicio =?, grupo_Exercicio=? WHERE id_Exercicio =?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, exercicio.getNome_Exercicio());
            stmt.setString(2, exercicio.getObs_Exercicio());
            stmt.setString(3, exercicio.getGrupo_Exercicio());
            stmt.setInt(4, exercicio.getId_Exercicio());
            stmt.execute();
            stmt.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 3: "+erro);
        }
    }
    public void excluir(int valor){
        String sql = "DELETE FROM dbpm.Exercicio WHERE id_Exercicio ="+valor;
        try {
            st=conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 4: "+erro);
        }
    }
    public ArrayList<Exercicio>listarTodos(){
        String sql = "SELECT * FROM dbpm.Exercicio";
        try {
            st=conn.createStatement();
            rs=st.executeQuery(sql);
            while(rs.next()){
                Exercicio exercicio = new Exercicio();
                exercicio.setId_Exercicio(rs.getInt("id_Exercicio"));
                exercicio.setNome_Exercicio(rs.getString("nome_Exercicio"));
                exercicio.setGrupo_Exercicio(rs.getString("grupo_Exercicio"));
                lista.add(exercicio);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro 5: "+erro);
        }
        return lista;
    }
     public ArrayList<Exercicio>listarTodosNome(String nome){
        String sql = "SELECT * FROM dbpm.Exercicio WHERE nome_Exercicio LIkE '%"+nome+"%'";
        try {
            st=conn.createStatement();
            rs=st.executeQuery(sql);
            while(rs.next()){
                Exercicio exercicio = new Exercicio();
                exercicio.setId_Exercicio(rs.getInt("id_Exercicio"));
                exercicio.setNome_Exercicio(rs.getString("nome_Exercicio"));
                exercicio.setGrupo_Exercicio(rs.getString("grupo_Exercicio"));
                lista.add(exercicio);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro 6: "+erro);
        }
        return lista;
    }
}
