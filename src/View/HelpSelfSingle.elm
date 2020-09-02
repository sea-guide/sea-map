module View.HelpSelfSingle exposing (view)

import Copy.Keys exposing (Key(..))
import Copy.Text exposing (t)
import Css exposing (..)
import Css.Media as Media exposing (minWidth, only, screen, withMedia)
import Css.Transitions exposing (transition)
import Html.Styled exposing (Html, a, blockquote, button, div, h1, h2, header, img, li, nav, p, text, ul)
import Html.Styled.Attributes exposing (css, href, src)
import Html.Styled.Events exposing (onClick)
import Page.HelpSelfSingle exposing (CategoryResource, Model, Msg(..), categoryKeysFromSlug, resourceIsExpanded)
import Route exposing (Direction(..), Route(..), renderNavLink)
import Theme exposing (containerContent, expanderButtonStyle, expanderClosedStyle, expanderDefinitionStyles, expanderHeadingStyle, expanderItemStyle, expanderOpenStyle, expanderSymbolStyle, grey, lightGrey, lightOrange, lightPink, lightPurple, lightTeal, navItemStyles, navLinkStyle, navListStyle, oneColumn, orange, pageHeadingStyle, pink, pureWhite, purple, quoteStyle, rotate90Style, verticalSpacing, white)


view : String -> Model -> Html Msg
view slug model =
    let
        categoryData =
            categoryKeysFromSlug slug
    in
    div []
        [ containerContent
            [ header []
                [ h1 [ css [ pageHeadingStyle ] ] [ text (t categoryData.title) ] ]
            , case categoryData.resources of
                Just resources ->
                    div [ css [ margin2 zero (rem 1) ] ] [ renderResourceList model resources ]

                Nothing ->
                    text ""
            , verticalSpacing 2
            , nav [ css [ navListStyle ] ]
                [ renderNavLink Back HelpSelfGrid ToHelpSelfFromSingleCategoryLink
                ]
            ]
        , verticalSpacing 2
        ]


renderResourceList : Model -> List CategoryResource -> Html Msg
renderResourceList model resources =
    ul [ css [ resourceListStyle ] ]
        (List.map
            (\resource ->
                if resourceIsExpanded model resource.title then
                    li [ css [ expanderItemStyle ] ]
                        [ button [ onClick (ToggleResource resource.title), css [ expanderButtonStyle, expanderOpenStyle ] ]
                            [ h2 [ css [ expanderHeadingStyle ] ] [ text (t resource.title) ]
                            , img [ css [ expanderSymbolStyle, rotate90Style ], src "/sea-map/Arrow.svg" ] []
                            ]
                        , div [ css expanderDefinitionStyles ]
                            ([]
                                ++ renderResourceDetails resource
                            )
                        ]

                else
                    li [ css [ expanderItemStyle ] ]
                        [ button [ onClick (ToggleResource resource.title), css [ expanderButtonStyle, expanderClosedStyle ] ]
                            [ h2 [ css [ expanderHeadingStyle ] ] [ text (t resource.title) ]
                            , img [ css [ expanderSymbolStyle ], src "/sea-map/Arrow.svg" ] []
                            ]
                        ]
            )
            resources
        )


renderResourceDetails : CategoryResource -> List (Html msg)
renderResourceDetails resource =
    [ p [] [ text (t resource.summary) ]
    , verticalSpacing 2
    ]
        ++ renderQuotes resource.quotes
        ++ verticalSpacing 2
        :: renderPdfDownload resource


renderPdfDownload : CategoryResource -> List (Html msg)
renderPdfDownload resource =
    [ text (t HelpSelfPdfDownloadLabel ++ " ")
    , a [ href (t resource.linkHref), css [ resourceLinkStyle ] ] [ text (t resource.linkName) ]
    ]


renderQuotes : List Key -> List (Html msg)
renderQuotes quoteKeys =
    List.map (\quoteKey -> blockquote [] [ p [ css [ quoteStyle ] ] [ text (t quoteKey) ] ]) quoteKeys


resourceLinkStyle : Style
resourceLinkStyle =
    batch
        [ color purple
        , fontWeight (int 700)
        ]


resourceListStyle : Style
resourceListStyle =
    batch
        [ listStyle none ]
