module Control.LolLog where

import System.Directory
import System.FilePath.Posix

log :: String -> String -> String -> IO ()
log program path s = do
  home <- getHomeDirectory
  let logPath = home </> ("." ++ program) </> path
  createDirectoryIfMissing True logPath
  appendFile logPath s
