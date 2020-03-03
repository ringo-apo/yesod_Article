{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module Handler.ArticleList where

import Import
import Data.Text (Text)
import Prelude hiding (getLine, putStrLn)
import Data.Text

getArticleListR :: Handler Html
getArticleListR = do
    articles <- runDB $ selectList [] [Desc ArticlePublished]
    defaultLayout $(widgetFile "articleList")
