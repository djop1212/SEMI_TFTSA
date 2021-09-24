package test.socket;

import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/unicast")
public class UniCast {
	//�뿰寃고븳 �궗�슜�옄 �븘�씠�뵒 ���옣�슜 �븘�뱶
	//�떒, �궗�슜�옄 �븘�씠�뵒�뒗 �븳踰덈쭔 �벑濡�(以묐났 �벑濡� �븞�릺寃� �븿)
	//Set 怨꾩뿴 �궗�슜�븯硫� �빐寃�. �룞湲고솕 泥섎━源뚯� �빐寃�
	private static Set<Session> clients = 
		Collections.synchronizedSet(new HashSet<Session>());

	//�쟾�넚�긽�깭�뿉 �뵲瑜� 硫붿냼�뱶 援ы쁽
	@OnOpen
	public void onOpen(Session session) {
		//�겢�씪�씠�뼵�듃媛� �꽌踰꾩뿉 �뿰寃곕릺�뒗 �떆�젏�뿉�꽌 �옄�룞 �떎�뻾�릺�뒗
		//硫붿냼�뱶�엫
		System.out.println(session);
		//�뿰寃� �슂泥��븳 �겢�씪�씠�뼵�듃瑜� Set �뿉 異붽��븿
		clients.add(session);
	}
	
	@OnMessage
	public void onMessage(String msg, Session session) 
			throws IOException {
		//�겢�씪�씠�뼵�듃媛� 蹂대궦 硫붿꽭吏� 諛쏅뒗 硫붿냼�뱶�엫.
		System.out.println(msg);
		
		//硫붿꽭吏�瑜� 諛쏆븘�꽌, �떎瑜� �겢�씪�씠�뼵�듃�뿉寃� �쟾�넚 泥섎━
		//�쟾�넚泥섎━�븯�뒗 �룞�븞, �떎瑜� �겢�씪�씠�뼵�듃媛� 蹂대궦 硫붿꽭吏�媛�
		//泥섎━�릺吏� �븡�룄濡� �룞湲고솕 泥섎━�븿
		//NullPointerException �삁�쇅 泥섎━�븿
		synchronized(clients) {
			//�쁽�옱 �뿰寃곕맂 紐⑤뱺 �궗�슜�옄�뿉寃� 諛쏆� 硫붿꽭吏�瑜� 蹂대깂
			for(Session client : clients) {
				//蹂대궦 �떦�궗�옄�뒗 鍮쇨퀬 蹂대깂
				if(!client.equals(session)) {
					client.getBasicRemote().sendText(msg);
				}
			}
		}
	}
	
	@OnError
	public void onError(Throwable error) {
		//硫붿꽭吏� �쟾�넚怨쇱젙�뿉�꽌 �뿉�윭媛� 諛쒖깮�븳 寃쎌슦 �옄�룞 �떎�뻾�맖
		error.printStackTrace();
	}

	@OnClose
	public void onClose(Session session) {
		//�빐�떦 session �쓽 �겢�씪�씠�뼵�듃媛� �뿰寃곗쓣 �걡�뿀�쓬
		//Set �뿉�꽌 �젣嫄고븿
		clients.remove(session);
	}

}





