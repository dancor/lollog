module Control.LolLog where

import System.Directory
import System.FilePath.Posix

log :: String -> String -> String -> IO ()
log program file s = do
  home <- getHomeDirectory
  let logPath = home </> ("." ++ program)
  createDirectoryIfMissing True logPath
  appendFile (logPath </> file) $ s ++ "\n"
