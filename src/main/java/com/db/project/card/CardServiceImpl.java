package com.db.project.card;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import javax.smartcardio.Card;
import java.util.HashMap;
import java.util.List;

@Service
public class CardServiceImpl implements CardService{
    SqlSession sqlSession;

    public void insertCard(HashMap<String, Object> HashMap) {
        CardDAO dao = new CardDAO(sqlSession);
        dao.insertCard(HashMap);
    }
    public List<HashMap<String, Object>> selectCard(HashMap<String, Object> HashMap){
        CardDAO dao = new CardDAO(sqlSession);
        return dao.selectCard(HashMap);
    }

    public void deleteCard(HashMap<String, Object> HashMap){
        CardDAO dao = new CardDAO(sqlSession);
        dao.deleteCard(HashMap);
    }

    public void updateCustomerPlusPoint(HashMap<String, Object> HashMap){
        CardDAO dao = new CardDAO(sqlSession);
        dao.updateCustomerPlusPoint(HashMap);
        dao.insertApproval(HashMap);
        dao.insertSales(HashMap);
    }

    public void updateCustomerMinusPoint(HashMap<String, Object> HashMap){
        CardDAO dao = new CardDAO(sqlSession);
        dao.updateCustomerMinusPoint(HashMap);
        dao.insertApproval(HashMap);
        dao.insertSales(HashMap);
    }


    public List<HashMap<String, Object>> selectApproval(HashMap<String, Object> HashMap){
        CardDAO dao = new CardDAO(sqlSession);
        return dao.selectApproval(HashMap);
    }

    public List<HashMap<String, Object>> selectSales(HashMap<String, Object> HashMap){
        CardDAO dao = new CardDAO(sqlSession);
        return dao.selectSales(HashMap);
    }
}
