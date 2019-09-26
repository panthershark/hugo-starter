module Demo exposing (main)

import Browser exposing (element)
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (class, style)
import Html.Events exposing (onClick)
import Process
import Task
import Time


type Model
    = LoaderVisible Int
    | LoaderHidden


type Msg
    = ShowLoader
    | HideLoader
    | UpdateLoader


decrementTime : Cmd Msg
decrementTime =
    Task.perform (always UpdateLoader) <| Process.sleep (toFloat 1000)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ShowLoader ->
            ( LoaderVisible 5, decrementTime )

        HideLoader ->
            ( LoaderHidden, Cmd.none )

        UpdateLoader ->
            case model of
                LoaderVisible 1 ->
                    ( LoaderHidden, Cmd.none )

                LoaderVisible n ->
                    ( LoaderVisible (n - 1), decrementTime )

                LoaderHidden ->
                    ( LoaderHidden, Cmd.none )


view : Model -> Html Msg
view model =
    let
        loader =
            case model of
                LoaderVisible n ->
                    div [ class "modal" ]
                        [ div [ class "shadow" ] []
                        , div [ class "loader" ] []
                        , div [ class "countdown" ]
                            [ div [] [ text <| String.fromInt n ] ]
                        ]

                LoaderHidden ->
                    text ""
    in
    div []
        [ button [ onClick <| ShowLoader ] [ text "Toggle Loader" ]
        , loader
        ]


main : Program {} Model Msg
main =
    element
        { init = always ( LoaderHidden, Cmd.none )
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }
