$pkg_name="moonsweeper-py"
$pkg_origin="jmassardo"
$pkg_version="0.1.0"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("Apache-2.0")
$pkg_shasum="a69b82468f329f1251e190e2ac76c0e0631e13661ab7ff5bd29b0e781e46549d"
$pkg_deps=@('jmassardo/python')
$pkg_build_deps=@('core/git')
$pkg_description="Moonsweeper — A minesweeper clone, on a moon with aliens, in PyQt."
$pkg_upstream_url="https://github.com/mfitzp/15-minute-apps/tree/master/minesweeper"

function Invoke-Unpack{
    write-output "Attempting to clone repo"
    cd $HAB_CACHE_SRC_PATH
    git clone https://github.com/mfitzp/15-minute-apps.git
}

function Invoke-Install{
    Copy-Item -Path "$HAB_CACHE_SRC_PATH\15-minute-apps\minesweeper" -Destination "$pkg_prefix" -recurse
}