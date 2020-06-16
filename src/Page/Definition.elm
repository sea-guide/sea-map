module Page.Definition exposing (Model, Msg, init, view)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)


type alias Model =
    {}


init : () -> ( Model, Cmd Msg )
init _ =
    ( {}
    , Cmd.none
    )


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div []
        [ div [] [ text "Definition page" ]
        , ul []
            [ li [] [ a [ href "help-self" ] [ text "Find out more" ] ]
            , li [] [ a [ href "get-help" ] [ text "Get help" ] ]
            ]
        ]
