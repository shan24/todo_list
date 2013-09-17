# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

<%= javascript_include_tag 'jquery.js', 'jquery.tablednd_0_5.js' %>
  <script type="text/javascript" charset="utf-8">
    $().ready(function() {
      $('#specifications').tableDnD({});