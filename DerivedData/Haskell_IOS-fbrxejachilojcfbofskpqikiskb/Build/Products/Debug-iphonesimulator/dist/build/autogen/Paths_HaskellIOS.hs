module Paths_HaskellIOS (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,1], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/Users/ecarrion/.cabal/bin"
libdir     = "/Users/ecarrion/.cabal/lib/HaskellIOS-0.1/ghc-6.10.4-iphone-simulator"
datadir    = "/Users/ecarrion/.cabal/share/HaskellIOS-0.1"
libexecdir = "/Users/ecarrion/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "HaskellIOS_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "HaskellIOS_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "HaskellIOS_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "HaskellIOS_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
