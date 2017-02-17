/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
抽象クラスHuman
open abstract公開メソッド
ArrayList変数setcard abstract公開メソッド
checkSum abstract公開メソッド
myCard ArrayList変数
*/
package org.camp;

import java.util.ArrayList;

/**
 *
 * @author Yui
 */
public abstract class Human {
    ArrayList<Integer> myCards = new ArrayList<>();
    //abstract公開メソッドopen
    public abstract int open();
    
    //abstract公開メソッドsetCard,引数はArrayList
    public abstract void setCard(ArrayList<Integer> setCard);

    //abstract公開メソッドcheckSum
    public abstract boolean checkSum();
}
