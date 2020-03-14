<?php

// Class Name: Session

class Session{


  // Session Start Method
  public static function init(){

    if (version_compare(phpversion(), '5.4.0', '<')) {
      if (session_id() == '') {
        session_start();
      }
    }else{
      if (session_status() == PHP_SESSION_NONE) {
        session_start();
      }
    }



  }


  // Session Set Method
  public static function set($key, $val){
    $_SESSION[$key] = $val;
  }



  // Session Get Method
  public static function get($key){
    if (isset($_SESSION[$key])) {
      return $_SESSION[$key];
    }else{
      return false;
    }
  }

  // User logout Method
  public static function destroy(){
    session_destroy();
    session_unset();
    header('Location:login.php');
  }


  // Check Session Method
  public static function CheckSession(){
    if (self::get('login') == FALSE) {
      session_destroy();
      header('Location:login.php');
    }
  }


  // Check Login Method
  public static function CheckLogin(){
    if (self::get("login") == TRUE) {
      header('Location:index.php');
    }
  }







}
