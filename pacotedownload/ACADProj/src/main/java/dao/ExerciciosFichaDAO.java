
package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.ExerciciosFicha;

public class ExerciciosFichaDAO {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<ExerciciosFicha>lista=new ArrayList<>();
    
    public ExerciciosFichaDAO() {
        conn = new ConnectionFactory().getConexao();
    }
    
    public void inserir (ExerciciosFicha exerciciosFicha){
        String sql = "INSERT INTO dbpm.ExerciciosFicha(id_Ficha, exercicios_ExerciciosFicha, serie_ExerciciosFicha, repeticao_ExerciciosFicha, peso_ExerciciosFicha, letra_ExerciciosFicha)VALUES(?,?,?,?,?,?)";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, exerciciosFicha.getId_Ficha());
            stmt.setString(2, exerciciosFicha.getExercicios_ExerciciosFicha());
            stmt.setString(3, exerciciosFicha.getSerie_ExerciciosFicha());
            stmt.setString(4, exerciciosFicha.getRepeticao_ExerciciosFicha());
            stmt.setString(5, exerciciosFicha.getPeso_ExerciciosFicha());
            stmt.setString(6, exerciciosFicha.getLetra_ExerciciosFicha());
            stmt.execute();
            stmt.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 2: "+erro);
        }
    }
    public void alterar (ExerciciosFicha exerciciosFicha){
        String sql = "UPDATE dbpm.ExerciciosFicha SET id_Ficha=? ,exercicios_ExerciciosFicha=?, serie_ExerciciosFicha=?, repeticao_ExerciciosFicha=?, peso_ExerciciosFicha=?, letra_ExerciciosFicha=? WHERE id_ExerciciosFicha =?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, exerciciosFicha.getId_Ficha());
            stmt.setString(2, exerciciosFicha.getExercicios_ExerciciosFicha());
            stmt.setString(3, exerciciosFicha.getSerie_ExerciciosFicha());
            stmt.setString(4, exerciciosFicha.getRepeticao_ExerciciosFicha());
            stmt.setString(5, exerciciosFicha.getPeso_ExerciciosFicha());
            stmt.setString(6, exerciciosFicha.getLetra_ExerciciosFicha());
            stmt.setInt(7, exerciciosFicha.getId_ExerciciosFicha());
            stmt.execute();
            stmt.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 3: "+erro);
        }
    }
    public void excluir(int valor){
        String sql = "DELETE FROM dbpm.ExerciciosFicha WHERE id_ExerciciosFicha ="+valor;
        try {
            st=conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 4: "+erro);
        }
    }
    public ArrayList<ExerciciosFicha>listarTodos(){
        String sql = "SELECT * FROM dbpm.ExerciciosFicha";
        try {
            st=conn.createStatement();
            rs=st.executeQuery(sql);
            while(rs.next()){
                ExerciciosFicha exerciciosFicha = new ExerciciosFicha();
                exerciciosFicha.setId_ExerciciosFicha(rs.getInt("id_ExerciciosFicha"));
                exerciciosFicha.setId_Ficha(rs.getInt("id_Ficha"));
                exerciciosFicha.setExercicios_ExerciciosFicha(rs.getString("exercicios_ExerciciosFicha"));
                exerciciosFicha.setSerie_ExerciciosFicha(rs.getString("serie_ExerciciosFicha"));
                exerciciosFicha.setRepeticao_ExerciciosFicha(rs.getString("repeticao_ExerciciosFicha"));
                exerciciosFicha.setPeso_ExerciciosFicha(rs.getString("peso_ExerciciosFicha"));
                exerciciosFicha.setLetra_ExerciciosFicha(rs.getString("letra_ExerciciosFicha"));
                lista.add(exerciciosFicha);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro 5: "+erro);
        }
        return lista;
    }
     public ArrayList<ExerciciosFicha>listarTodosFicha(int valor){
        String sql = "SELECT * FROM dbpm.ExerciciosFicha WHERE id_Ficha LIkE '%"+valor+"%'";
        try {
            st=conn.createStatement();
            rs=st.executeQuery(sql);
            while(rs.next()){
                ExerciciosFicha exerciciosFicha = new ExerciciosFicha();
                exerciciosFicha.setId_ExerciciosFicha(rs.getInt("id_ExerciciosFicha"));
                exerciciosFicha.setId_Ficha(rs.getInt("id_Ficha"));
                exerciciosFicha.setExercicios_ExerciciosFicha(rs.getString("exercicios_ExerciciosFicha"));
                exerciciosFicha.setSerie_ExerciciosFicha(rs.getString("serie_ExerciciosFicha"));
                exerciciosFicha.setRepeticao_ExerciciosFicha(rs.getString("repeticao_ExerciciosFicha"));
                exerciciosFicha.setPeso_ExerciciosFicha(rs.getString("peso_ExerciciosFicha"));
                exerciciosFicha.setLetra_ExerciciosFicha(rs.getString("letra_ExerciciosFicha"));
                lista.add(exerciciosFicha);
            }
        } catch (Exception erro) {
            throw new RuntimeException("Erro 6: "+erro);
        }
        return lista;
    }
}
