package project.util;
import java.util.ArrayList;
import java.util.List;
import mybatis.model.VProductArticlePictureLatest;
import mybatis.repository.session.SessionRepository;

public class VProductManager {
	private static ArrayList<VProductArticlePictureLatest> productArray = null;

	private VProductManager() {};
	
	static {
		List<Object> selectListProduct = SessionRepository.selectVProductArticlePictureLatestStatic();
		int size = selectListProduct.size();
		productArray = new ArrayList<>();
		
		for(int i=0; i<size; i++) {
			productArray.add((VProductArticlePictureLatest) selectListProduct.get(i));
		}
	}
	
	public static List<VProductArticlePictureLatest> getList(){
		return productArray;
	}
	
	//실시간으로 데이터 들어가게
	public static void addElement(VProductArticlePictureLatest v) {
		productArray.add(0,v);
	}

}
