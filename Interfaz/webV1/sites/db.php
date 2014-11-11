<?php



  class db {

    /*Define constant to connect to database */

    DEFINE('DATABASE_USER', 'root');

    DEFINE('DATABASE_PASSWORD', 'rb7373');

    DEFINE('DATABASE_HOST', 'localhost');

    DEFINE('DATABASE_NAME', 'petsRecue');

    function __construct()
    {
        global $dbh;
        if (!is_null($dbh)) return;
        $dbh = mysql_pconnect(DB_HOST, DB_USER, DB_PASSWORD);
        mysql_select_db(DB_NAME);
        mysql_query('SET NAMES utf8');
    }

    function select_list($query)
    {
        $q = mysql_query($query);
        if (!$q) return null;
        $ret = array();
        while ($row = mysql_fetch_array($q, MYSQL_ASSOC)) {
            array_push($ret, $row);
        }
        mysql_free_result($q);
        return $ret;
    }
  }
?>
