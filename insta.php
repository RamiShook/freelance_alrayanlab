<?php

header("Content-type: text/json");
header("Content-type: application/json");

// Add the username as a parameter to the URL: /?u=username
$username = $_GET['u'];
$url = 'https://www.instagram.com/' . $username;

$ch = curl_init($url);
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$output = curl_exec($ch);
curl_close($ch);

$doc = new DOMDocument();
$doc->loadHTML($output);
$selector = new DOMXPath($doc);

$scripts = $selector->query('//script[@type="text/javascript"]');

function getJsonData($scripts) {
  foreach($scripts as $node) {
    $value = $node->nodeValue;
    if (strpos($value, 'window._sharedData = ') !== false) {
      $json = str_replace('window._sharedData = ', '', $value);
      return str_replace('};', '}', $json);
    }
  }
}

function getUserData($json) {
  $data = json_decode($json);
  return json_encode($data->entry_data->ProfilePage[0]->user);
}

function getLatestMedia($json, $posts) {
  $data = json_decode($json);
  $media = array_slice($data->media->nodes, 0, $posts);
  return json_encode($media);
}

$jsonData = getJsonData($scripts);
$userJson = getUserData($jsonData);

if (isset($_GET['latest'])) {
  // Use the latest paramater with a value between 1 and 12 to get that number of posts.
  echo getLatestMedia($userJson, $_GET['latest']);
} else {
  // Get all user data and the last 12 posts.
  echo $userJson;
}

?>