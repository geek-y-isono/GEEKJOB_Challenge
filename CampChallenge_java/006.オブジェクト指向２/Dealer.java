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

public class Dealer extends Human{
    ArrayList<Integer> cards = new ArrayList<>();
    public Dealer(){
        for(int i=0;i<4;i++){
            for(int j=1;j<=13;j++){
                cards.add(j);
            }
        }
        Collections.shuffle(cards);
    }
        public ArrayList<Integer> deal(){
            ArrayList<Integer> deal = new ArrayList<>();
            
            //最初の手札2枚を渡し、山札から2枚削除する
            deal.add(cards.get(0));
            cards.remove(0);
            deal.add(cards.get(0));
            cards.remove(0);
            return deal;
        }
        public ArrayList<Integer> hit(){
            ArrayList<Integer> hit = new ArrayList();
            //要求が来たら1枚を渡し、山札から1枚削除する
            hit.add(cards.get(0));
            cards.remove(0);
            return hit;
        }
        //ArrayListで受け取ったカードをmyCardに追加する
        public void setCard(ArrayList<Integer> setCard){
            for(int i=0;i < setCard.size();i++){
                myCards.add(setCard.get(i));
            }
        }
        public boolean checkSum(){
            if(open()<17){
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