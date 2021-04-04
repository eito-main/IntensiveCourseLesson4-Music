//
//  ViewController.swift
//  IntensiveCourseLesson4-Music
//
//  Created by 相良 詠斗 on 2021/04/04.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //シンバルの音源ファイルを指定
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")

    //シンバル用のプレイヤーインスタンスを作成
    var cymbalPlayer = AVAudioPlayer()

    @IBAction func cymbal(_ sender: Any) {
        soundPlayer(player: &cymbalPlayer, path: cymbalPath, count: 0)
        
//        do {
//
//            //シンバル用のプレイヤーに、音源ファイル名を指定
//            cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
//            //シンバルの音源再生
//            cymbalPlayer.play()
//        } catch {
//
//            print("シンバルで、エラーが発生しました!")
//
//        }
    }
    
    //ギターの音源ファイルを指定
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    
    //ギター用のプレイヤーインスタンスを作成
    var guitarPlayer = AVAudioPlayer()
    
    @IBAction func guitar(_ sender: Any) {
        soundPlayer(player: &guitarPlayer, path: guitarPath, count: 0)
        
//        do {
//
//            //ギター用のプレイヤーに、音源ファイル名を指定
//            guitarPlayer = try AVAudioPlayer(contentsOf: guitarPath, fileTypeHint: nil)
//            //ギターの音源再生
//            guitarPlayer.play()
//        } catch {
//
//            print("ギターで、エラーが発生しました!")
//
//        }
    }
    
    //バックミュージックの音源ファイルを指定
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    
    //バックミュージック用のプレイヤーインスタンスを作成
    var backmusicPlayer = AVAudioPlayer()
    
    //Playボタンがタップされたときの処理
    @IBAction func play(_ sender: Any) {
        soundPlayer(player: &backmusicPlayer, path: backmusicPath, count: -1)
        
//        do {
//
//            //バックミュージック用のプレイヤーに、音源ファイル名を指定
//            backmusicPlayer = try AVAudioPlayer(contentsOf: backmusicPath, fileTypeHint: nil)
//            //リピート設定
//            backmusicPlayer.numberOfLoops = -1
//            //バックミュージックの音源再生
//            backmusicPlayer.play()
//        } catch {
//
//            print("エラーが発生しました!")
//
//        }
    }
    
    //Stopボタンがタップされたときの処理
    @IBAction func stop(_ sender: Any) {
        
        //バックミュージック停止
        backmusicPlayer.stop()
    }
    
    //共通のプレイヤー再生処理
    fileprivate func soundPlayer(player:inout AVAudioPlayer, path: URL, count: Int) {
        do {
            player = try AVAudioPlayer(contentsOf: path, fileTypeHint: nil)
            player.numberOfLoops = count
            player.play()
        } catch {
            
            print("エラーが発生しました!")
        }
    }
    
}

