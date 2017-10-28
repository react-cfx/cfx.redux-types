import 'shelljs/make'
import dd from 'ddeyes'

import {
  toActionsTypes
  mergeActionsTypes
} from '../dist/bundle'

types = {
  'hello_World'
}

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