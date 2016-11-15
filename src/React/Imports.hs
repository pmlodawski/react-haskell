{-# LANGUAGE CPP #-}

#ifdef __GHCJS__
{-# LANGUAGE JavaScriptFFI #-}
#else
{-# LANGUAGE RankNTypes, TypeSynonymInstances, FlexibleInstances #-}
{-# OPTIONS_GHC -fno-warn-missing-methods #-}
#endif

module React.Imports
    ( RawEvent
    , ImportedClass

    -- * Foreign imports
    , js_render
    , js_createClass
    , js_react_createElement_DOM
    , js_react_createElement_Class
    , js_set_handler
    , js_forceUpdate
    , js_foreignParent
    ) where

import React.GHCJS

type RawEvent = JSVal

type ImportedClass props sig = JSVal

#ifdef __GHCJS__

foreign import javascript unsafe "React.render($1, $2)"
    js_render :: JSVal -> Element -> IO ()
foreign import javascript unsafe "js_createClass"
    js_createClass :: JSAny -> JSAny
foreign import javascript unsafe "React.createElement.apply(null, [$1, $2].concat($3))"
    js_react_createElement_DOM :: JSString -> JSAny -> JSAny -> IO Object
foreign import javascript unsafe "React.createElement.apply(null, [$1, $2].concat($3))"
-- foreign import javascript unsafe "function(x, y, z) { console.log(x, y, z, [x,y].concat(z)); return React.createElement.apply(null, [x, y].concat(z)); }($1, $2, $3)"
    js_react_createElement_Class :: JSAny -> Object -> JSAny -> IO JSAny
foreign import javascript unsafe "js_set_handler"
    js_set_handler :: Int -> JSString -> JSVal -> JSAny -> IO ()
foreign import javascript unsafe "$1.forceUpdate()"
    js_forceUpdate :: JSAny -> IO ()
foreign import javascript unsafe "React.createElement($1, $2, $3)"
    js_foreignParent :: ImportedClass props sig -> JSVal -> JSAny -> IO JSAny

#else

-- mock the foreign imports

js_render :: JSVal () -> Element -> IO ()
js_render = error "cannot evaluate js_render in ghc"

js_createClass :: JSAny -> JSAny
js_createClass = error "cannot evaluate js_createClass in ghc"

js_react_createElement_DOM :: JSString -> JSAny -> JSAny -> IO Object
js_react_createElement_DOM = error "cannot evaluate js_react_createElement_DOM in ghc"

js_react_createElement_Class :: JSAny -> JSAny -> JSAny -> IO JSAny
js_react_createElement_Class = error "cannot evaluate js_react_createElement_Class in ghc"

js_set_handler :: Int -> JSString -> JSVal (RawEvent -> IO ()) -> JSAny -> IO ()
js_set_handler = error "cannot evaluate js_set_handler in ghc"

js_forceUpdate :: JSAny -> IO ()
js_forceUpdate = error "cannot evaluate js_forceUpdate in ghc"

js_foreignParent :: ImportedClass props sig -> JSVal props -> JSAny -> IO JSAny
js_foreignParent = error "cannot evaluate js_foreignParent in ghc"

#endif
