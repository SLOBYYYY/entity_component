module Main exposing (..)

import Html exposing (program)
import Message exposing (..)
import Model exposing (..)
import View exposing (..)
import Update exposing (..)
import Command exposing (load)


initialize : ( RootNode, Cmd Msg )
initialize =
    ( RootNode "" "" [], load )


main =
    Html.program
        { init = initialize
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }
