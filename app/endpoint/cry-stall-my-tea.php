<?php

$this->crystallmyteaQuote = $this->swef->db->dbCall (crystallmytea_call_select) [SWEF_INT_0];

header ('Access-Control-Allow-Origin: *');
header ('Access-Control-Allow-Credentials: true');
header ('Access-Control-Allow-Methods: POST,GET,HEAD');
header ('Access-Control-Allow-Headers: Location,X-Pingother,Content-Type');
header ('Access-Control-Expose-Headers: Location,X-Pingother,Content-Type');
header ('Access-Control-Max-Age: 1728000');

?>
