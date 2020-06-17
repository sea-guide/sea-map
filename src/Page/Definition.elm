module Page.Definition exposing (Model, Msg, init, view)

import Copy.Keys exposing (Key(..))
import Copy.Text exposing (t)
import Css exposing (..)
import Html.Styled exposing (Html, a, div, h1, h2, header, li, p, text, ul)
import Html.Styled.Attributes exposing (css, href)
import Theme exposing (colours, pageHeading)


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
        [ header []
            [ h1 [ css [ pageHeading ] ] [ text (t DefinitionTitle) ]
            , p [ css [ pageDescription ] ]
                [ text (t DefinitionConcise)
                , text " "
                , a [ href "/[cCc]somewhere" ] [ text (t DefinitionMoreLink) ]
                ]
            ]
        , ul []
            [ li [ css [ category ] ] [ h2 [] [ text (t DefinitionCategoryTitle1) ] ]
            , li [ css [ category ] ] [ h2 [] [ text (t DefinitionCategoryTitle2) ] ]
            , li [ css [ category ] ] [ h2 [] [ text (t DefinitionCategoryTitle3) ] ]
            , li [ css [ category ] ] [ h2 [] [ text (t DefinitionCategoryTitle4) ] ]
            , li [ css [ category ] ] [ h2 [] [ text (t DefinitionCategoryTitle5) ] ]
            ]
        , p [] [ text (t SplitterAffirmation) ]
        , ul []
            [ li [] [ a [ href "help-self" ] [ text (t ToHelpSelfFromDefinitionLink) ] ]
            , li [] [ a [ href "get-help" ] [ text (t ToGetHelpFromDefinitionLink) ] ]
            ]
        ]


category : Style
category =
    Css.batch
        [ margin2 (rem 2) zero ]


pageDescription : Style
pageDescription =
    Css.batch
        [ color colours.purple
        , fontFamilies [ "Raleway", sansSerif.value ]
        , fontSize (rem 1.25)
        , margin2 (rem 2) zero
        ]
