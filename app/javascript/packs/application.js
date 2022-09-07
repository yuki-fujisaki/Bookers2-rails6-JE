// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import jQuery from "jquery"

import "packs/jquery.jpostal.js"

import "popper.js"
import "bootstrap"

import '@fortawesome/fontawesome-free/js/all';
import "../stylesheets/application" 

Rails.start()
Turbolinks.start()
ActiveStorage.start()

global.$ = jQuery;
window.$ = jQuery;

$(function() {
    $(document).on('turbolinks:load', () => {
      $('#user_postal_code').jpostal({
        postcode : [
          '#user_postal_code'
        ],
        address: {
          "#user_prefecture_code": "%3", // # 都道府県が入力される
          "#user_address"           : "%4%5", // # 市区町村と町域が入力される
          "#user_street"         : "%6%7" // # 大口事務所の番地と名称が入力される
        }
      });
    });
  });