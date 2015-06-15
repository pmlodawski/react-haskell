{-# LANGUAGE OverloadedStrings, NamedFieldPuns, LiberalTypeSynonyms,
    RebindableSyntax #-}
module Main where

import Prelude hiding ((>>), (=<<), return)
import Data.String

import Data.Void
import GHCJS.Foreign
import GHCJS.Types
import GHCJS.DOM (currentDocument)
import GHCJS.DOM.Types (Document)
import GHCJS.DOM.Document (documentGetElementById)
import React

page :: ReactClass () () Void
page = createClass $ smartClass
    { name = "page"
    , transition = \(_, state) -> (undefined, state)
    , getInitialState = ()
    , renderFn = \_ _ -> div_ [] "hello world!"
    }

page' = classLeaf page

page2 :: ReactNode Void
page2 = div_ [] $ do
    span_ [ class_ "hooray" ] "spanish"
    "hello world!"

main :: IO ()
main = do
    Just doc <- currentDocument
    let elemId :: JSString
        elemId = "inject"
    Just elem <- documentGetElementById doc elemId
    render page2 elem
    -- render (page' ()) elem
