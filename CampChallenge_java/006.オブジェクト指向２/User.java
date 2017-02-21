/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp;

import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author Yui
 */
public class User extends Human{
    ArrayList<Integer> cards = new ArrayList<>();
    public User(){
        for(int i=0;i<4;i++){
            for(int j=1;j<=13;j++){
                cards.add(j);
            }
        }
        Collections.shuffle(cards);
    }

        //ArrayListで受け取ったカードをmyCardに追加する
        public void setCard(ArrayList<Integer> setCard){
            for(int i=0;i < setCard.size();i++){
                myCards.add(setCard.get(i));
            }
        }
        public boolean checkSum(){
            if(open()<15){
                return false;
            }
            return true;
        }
        
        public int open(){
            int sum=0,acount=0;
            for(int i=0;i<myCards.size();i++){
                if(myCards.get(i)>10){
                    sum += 10;
                }
                else if(myCards.get(i)==1){
                    sum += 11;
                    acount++;
                }
                else{
                    sum += myCards.get(i);
                }
            }
            while(acount>0){
                if(sum>21){
                    sum -= 10;
                }
                acount--;
            }
            return sum;
        }
}