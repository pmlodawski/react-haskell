{-# LANGUAGE CPP #-}

#ifndef __GHCJS__
{-# LANGUAGE RankNTypes, TypeSynonymInstances, FlexibleInstances #-}
{-# OPTIONS_GHC -fno-warn-missing-methods #-}
#endif

module React.GHCJS
    ( currentDocument
    , Document
    , Element
    , JSAny
    , getElementById

    -- * GHCJS stubs
#ifdef __GHCJS__
    , module X
#else
    , ForeignRetention(..)
    , JSVal(..)
    , JSArray
    , JSString
    , FromJSString(..)
    , ToJSString(..)
    , FromJSVal(..)
    , ToJSVal(..)
    , castVal
    , create
    , setProp
    , eqVal
    , toJSArray
    , setProp
    , syncCallback1
    , syncCallback2
#endif
    ) where

-- Export useful things from GHCJS, or mocks of them if we're running in GHC

import qualified Data.Aeson as Aeson
import Data.String
import Data.Text (Text)

#ifdef __GHCJS__

import GHCJS.Foreign.Callback as X (syncCallback1, syncCallback2, OnBlocked(..))
import GHCJS.Marshal as X
import GHCJS.Types as X
import GHCJS.DOM (currentDocument)
import GHCJS.DOM.Document (getElementById)
import GHCJS.DOM.Types (Document, Element)
import GHCJS.Prim as X
import JavaScript.Object as X (create, setProp, Object)

#else

data Document
data Element
data JSVal a = JSVal
data JSString_
type JSArray = JSVal
type JSString = JSVal JSString_

class ToJSString a where
    toJSString :: a -> JSString

class FromJSString a where
    fromJSString :: JSString -> a

class FromJSVal a where
    fromJSVal :: JSVal a -> IO (Maybe a)

class ToJSVal a where
    toJSVal :: a -> IO (JSVal a)

instance FromJSVal Aeson.Value
instance FromJSVal Int
instance (FromJSVal a, FromJSVal b) => FromJSVal (a, b)
instance FromJSVal (JSVal ())
instance ToJSVal Int
instance ToJSVal Aeson.Value
instance ToJSVal a => ToJSVal (Maybe a)
instance ToJSVal (JSVal a)
instance FromJSString String
instance FromJSString Text
instance FromJSString JSString
instance ToJSString String
instance ToJSString Text
instance ToJSString JSString
instance IsString JSString

currentDocument :: IO (Maybe Document)
currentDocument = undefined

getElementById ::
    -- (IsDocument self, ToJSString elementId) =>
    self -> elementId -> IO (Maybe Element)
getElementById = undefined

create :: IO (JSVal a)
create = undefined

data ForeignRetention
    = NeverRetain
    | AlwaysRetain
    | DomRetain (forall a. JSVal a)

eqVal :: JSVal a -> JSVal a -> Bool
eqVal = undefined

toJSArray :: [JSVal a] -> IO (JSArray a)
toJSArray = undefined

setProp :: ToJSString a => a -> JSVal b -> JSVal c -> IO ()
setProp = undefined

syncCallback1 :: ForeignRetention
              -> Bool
              -> (JSVal a -> IO b)
              -> IO (JSVal (JSVal a -> IO b))
syncCallback1 = undefined

syncCallback2 :: ForeignRetention
              -> Bool
              -> (JSVal a -> JSVal b -> IO c)
              -> IO (JSVal (JSVal a -> JSVal b -> IO c))
syncCallback2 = undefined

#endif

type JSAny = JSVal
