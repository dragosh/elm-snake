module Types exposing (..)

import Keyboard.Extra
import Time exposing (Time, second)


type alias Position =
    ( Int, Int )


type alias Model =
    { snake : List Position
    , apple : Position
    , arrows : Position
    , direction : Position
    , keyboardModel : Keyboard.Extra.Model
    }


type Msg
    = Tick Time
    | TickControl Time
    | KeyboardMsg Keyboard.Extra.Msg
    | NewApple ( Int, Int )


config =
    { fps = 60
    , tps = 5
    , max = 10
    , spriteSize = 20
    }
