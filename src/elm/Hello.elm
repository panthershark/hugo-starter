module Hello exposing (main)

import Browser exposing (element)
import Html exposing (Html, h1, text)
import Html.Attributes exposing (classList)


type alias Model =
    {}


type Msg
    = Noop


view : Model -> Html Msg
view model =
    h1 [] [ text "Hello world" ]


main : Program {} Model Msg
main =
    element
        { init = always ( {}, Cmd.none )
        , view = view
        , update = \_ -> always ( {}, Cmd.none )
        , subscriptions = always Sub.none
        }
