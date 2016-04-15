#!/usr/bin/env coffee
{
  log
  error
} = console
echo = log
require 'shelljs/make'
dd = require 'ddeyes'

types = {
  'hello_World'
}

{
  toActionsTypes
  mergeActionsTypes
} = require '../index'

target.all = ->

  dd toActionsTypes types

  types = mergeActionsTypes
    helloworld: toActionsTypes types
    other: toActionsTypes {
      'FETCH_TODO'
      'CREATE_TODO'
      'UPDATE_TODO'
      'DELETE_TODO'
    }

  dd types
