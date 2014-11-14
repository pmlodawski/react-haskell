{-# LANGUAGE CPP, ForeignFunctionInterface #-}
module React.Imports where

import React.Types
import React.Events

#ifdef __HASTE__
import Haste
import Haste.Foreign
import Haste.JSON
import Haste.Prim

foreign import ccall js_React_DOM_leaf :: JSString -> RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_parent :: JSString -> RawAttrs -> ReactArray -> IO ForeignNode

foreign import ccall js_empty_object :: IO RawAttrs
foreign import ccall "js_set_field" js_set_field_String :: RawAttrs -> JSString -> JSString -> IO ()
foreign import ccall "js_set_field" js_set_field_Double :: RawAttrs -> JSString -> Double -> IO ()
foreign import ccall "js_set_field" js_set_field_Int :: RawAttrs -> JSString -> Int -> IO ()
foreign import ccall "js_set_field" js_set_field_Obj :: RawAttrs -> JSString -> RawAttrs -> IO ()
foreign import ccall js_set_field_True :: RawAttrs -> JSString -> IO ()
foreign import ccall js_set_field_False :: RawAttrs -> JSString -> IO ()
foreign import ccall js_targetValue :: RawChangeEvent -> JSString

foreign import ccall js_set_onClick       :: Ptr (RawMouseEvent -> IO ()) -> RawAttrs -> IO ()
foreign import ccall js_set_onDoubleClick :: Ptr (RawMouseEvent -> IO ()) -> RawAttrs -> IO ()
foreign import ccall js_set_onChange      :: Ptr (RawChangeEvent -> IO ()) -> RawAttrs -> IO ()
foreign import ccall js_set_onKeyUp       :: Ptr (RawKeyboardEvent -> IO ()) -> RawAttrs -> IO ()
foreign import ccall js_set_onKeyPress    :: Ptr (RawKeyboardEvent -> IO ()) -> RawAttrs -> IO ()
foreign import ccall js_set_onKeyDown     :: Ptr (RawKeyboardEvent -> IO ()) -> RawAttrs -> IO ()
foreign import ccall js_set_onBlur        :: Ptr (RawFocusEvent -> IO ()) -> RawAttrs -> IO ()

foreign import ccall js_React_getDomNode :: ForeignNode -> IO (Ptr (Maybe Elem))

foreign import ccall "js_empty" js_ReactArray_empty :: IO ReactArray
foreign import ccall "js_push" js_ReactArray_push :: ReactArray -> ForeignNode -> IO ()

foreign import ccall js_React_DOM_a :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_abbr :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_address :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_article :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_aside :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_audio :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_b :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_bdi :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_bdo :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_big :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_blockquote :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_body :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_button :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_canvas :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_caption :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_cite :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_code :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_colgroup :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_data :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_datalist :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_dd :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_del :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_details :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_dfn :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_div :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_dl :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_dt :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_em :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_fieldset :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_figcaption :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_figure :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_footer :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_form :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_h1 :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_h2 :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_h3 :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_h4 :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_h5 :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_h6 :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_head :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_header :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_html :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_i :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_iframe :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_ins :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_kbd :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_label :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_legend :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_li :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_main :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_map :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_mark :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_menu :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_menuitem :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_meter :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_nav :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_noscript :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_object :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_ol :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_optgroup :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_option :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_output :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_p :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_pre :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_progress :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_q :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_rp :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_rt :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_ruby :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_s :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_samp :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_section :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_select :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_small :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_span :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_strong :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_sub :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_summary :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_sup :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_table :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_tbody :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_td :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_tfoot :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_th :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_thead :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_time :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_tr :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_u :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_ul :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_var :: RawAttrs -> ReactArray -> IO ForeignNode
foreign import ccall js_React_DOM_video :: RawAttrs -> ReactArray -> IO ForeignNode

foreign import ccall js_React_DOM_area :: RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_base :: RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_br :: RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_col :: RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_embed :: RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_hr :: RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_img :: RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_input :: RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_keygen :: RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_link :: RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_meta :: RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_param :: RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_source :: RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_track :: RawAttrs -> IO ForeignNode
foreign import ccall js_React_DOM_wbr :: RawAttrs -> IO ForeignNode

foreign import ccall js_React_DOM_script :: RawAttrs -> JSString -> IO ForeignNode
foreign import ccall js_React_DOM_style :: RawAttrs -> JSString -> IO ForeignNode
foreign import ccall js_React_DOM_textarea :: RawAttrs -> JSString -> IO ForeignNode
foreign import ccall js_React_DOM_title :: RawAttrs -> JSString -> IO ForeignNode

foreign import ccall "js_id" js_React_DOM_text :: JSString -> IO ForeignNode

foreign import ccall js_parseChangeEvent :: RawChangeEvent -> Ptr ChangeEvent
foreign import ccall js_parseKeyboardEvent :: RawKeyboardEvent -> Ptr KeyboardEvent
foreign import ccall js_parseMouseEvent :: RawMouseEvent -> Ptr MouseEvent
#else
js_empty_object :: IO RawAttrs
js_empty_object = undefined
js_set_field_String :: RawAttrs -> JSString -> JSString -> IO ()
js_set_field_String = undefined
js_set_field_Double :: RawAttrs -> JSString -> Double -> IO ()
js_set_field_Double = undefined
js_set_field_Int :: RawAttrs -> JSString -> Int -> IO ()
js_set_field_Int = undefined
js_set_field_Obj :: RawAttrs -> JSString -> RawAttrs -> IO ()
js_set_field_Obj = undefined
js_set_field_True :: RawAttrs -> JSString -> IO ()
js_set_field_True = undefined
js_set_field_False :: RawAttrs -> JSString -> IO ()
js_set_field_False = undefined
js_targetValue :: RawChangeEvent -> JSString
js_targetValue = undefined

js_set_onClick       :: Ptr (RawMouseEvent -> IO ()) -> RawAttrs -> IO ()
js_set_onClick = undefined
js_set_onDoubleClick :: Ptr (RawMouseEvent -> IO ()) -> RawAttrs -> IO ()
js_set_onDoubleClick = undefined
js_set_onChange      :: Ptr (RawChangeEvent -> IO ()) -> RawAttrs -> IO ()
js_set_onChange = undefined
js_set_onKeyUp       :: Ptr (RawKeyboardEvent -> IO ()) -> RawAttrs -> IO ()
js_set_onKeyUp = undefined
js_set_onKeyPress    :: Ptr (RawKeyboardEvent -> IO ()) -> RawAttrs -> IO ()
js_set_onKeyPress = undefined
js_set_onKeyDown     :: Ptr (RawKeyboardEvent -> IO ()) -> RawAttrs -> IO ()
js_set_onKeyDown = undefined
js_set_onBlur        :: Ptr (RawFocusEvent -> IO ()) -> RawAttrs -> IO ()
js_set_onBlur = undefined

js_React_getDomNode :: ForeignNode -> IO (Ptr (Maybe Elem))
js_React_getDomNode = undefined

js_ReactArray_empty :: IO ReactArray
js_ReactArray_empty = undefined
js_ReactArray_push :: ReactArray -> ForeignNode -> IO ()
js_ReactArray_push = undefined

-- js_React_DOM_a :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_abbr :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_address :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_article :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_aside :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_audio :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_b :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_bdi :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_bdo :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_big :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_blockquote :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_body :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_button :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_canvas :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_caption :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_cite :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_code :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_colgroup :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_data :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_datalist :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_dd :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_del :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_details :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_dfn :: RawAttrs -> ReactArray -> IO ForeignNode
js_React_DOM_div :: RawAttrs -> ReactArray -> IO ForeignNode
js_React_DOM_div = undefined
-- js_React_DOM_dl :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_dt :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_em :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_fieldset :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_figcaption :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_figure :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_footer :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_form :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_h1 :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_h2 :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_h3 :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_h4 :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_h5 :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_h6 :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_head :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_header :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_html :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_i :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_iframe :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_ins :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_kbd :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_label :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_legend :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_li :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_main :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_map :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_mark :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_menu :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_menuitem :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_meter :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_nav :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_noscript :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_object :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_ol :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_optgroup :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_option :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_output :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_p :: RawAttrs -> ReactArray -> IO ForeignNode
js_React_DOM_pre :: RawAttrs -> ReactArray -> IO ForeignNode
js_React_DOM_pre = undefined
-- js_React_DOM_progress :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_q :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_rp :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_rt :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_ruby :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_s :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_samp :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_section :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_select :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_small :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_span :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_strong :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_sub :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_summary :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_sup :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_table :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_tbody :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_td :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_tfoot :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_th :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_thead :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_time :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_tr :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_u :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_ul :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_var :: RawAttrs -> ReactArray -> IO ForeignNode
-- js_React_DOM_video :: RawAttrs -> ReactArray -> IO ForeignNode
--
-- js_React_DOM_area :: RawAttrs -> IO ForeignNode
-- js_React_DOM_base :: RawAttrs -> IO ForeignNode
-- js_React_DOM_br :: RawAttrs -> IO ForeignNode
-- js_React_DOM_col :: RawAttrs -> IO ForeignNode
-- js_React_DOM_embed :: RawAttrs -> IO ForeignNode
-- js_React_DOM_hr :: RawAttrs -> IO ForeignNode
-- js_React_DOM_img :: RawAttrs -> IO ForeignNode
js_React_DOM_input :: RawAttrs -> IO ForeignNode
js_React_DOM_input = undefined
-- js_React_DOM_keygen :: RawAttrs -> IO ForeignNode
-- js_React_DOM_link :: RawAttrs -> IO ForeignNode
-- js_React_DOM_meta :: RawAttrs -> IO ForeignNode
-- js_React_DOM_param :: RawAttrs -> IO ForeignNode
-- js_React_DOM_source :: RawAttrs -> IO ForeignNode
-- js_React_DOM_track :: RawAttrs -> IO ForeignNode
-- js_React_DOM_wbr :: RawAttrs -> IO ForeignNode
--
-- js_React_DOM_script :: RawAttrs -> JSString -> IO ForeignNode
-- js_React_DOM_style :: RawAttrs -> JSString -> IO ForeignNode
-- js_React_DOM_textarea :: RawAttrs -> JSString -> IO ForeignNode
-- js_React_DOM_title :: RawAttrs -> JSString -> IO ForeignNode

js_React_DOM_leaf :: JSString -> RawAttrs -> IO ForeignNode
js_React_DOM_leaf = undefined

js_React_DOM_parent :: JSString -> RawAttrs -> ReactArray -> IO ForeignNode
js_React_DOM_parent = undefined

js_React_DOM_text :: JSString -> IO ForeignNode
js_React_DOM_text = undefined

js_parseChangeEvent :: RawChangeEvent -> Ptr ChangeEvent
js_parseChangeEvent = undefined

js_parseKeyboardEvent :: RawKeyboardEvent -> Ptr KeyboardEvent
js_parseKeyboardEvent = undefined

js_parseMouseEvent :: RawMouseEvent -> Ptr MouseEvent
js_parseMouseEvent = undefined
#endif