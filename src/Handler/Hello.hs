module Handler.Hello where

import Import

getHelloR :: Handler Html
--getHelloR = defaultLayout $(widgetFile "hello")
getHelloR = do
    let
        message = "ハンドラーで定義したメッセージです。" :: Text
        list = [1..10] :: [Int]
        x = Nothing :: Maybe Bool
    defaultLayout $(widgetFile "hello")