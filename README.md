# QtProjectTDDCoverage

This is a "starter kit" to develop a Qt project backed up by tests.
It is configured to support **C++14**.
Also if installed, it support **ccache** and **lcov** (coverage tool).

After cloning the project you will have just to: 
    
    0. Probably you want to change the name of the project and a couple of things on the .pro file 
        (like TARGET and the name of .pro file itself )
    1. Open the project with QtCreator
    2. Go to the Projects settings
    3. Configure the shadow build as <path_to_the_project>/stage/debug 
        (ex. /home/andy/workspace/QtProjectTDDCoverage/stage/debug )
    4. Clone the Debug build configuration
    5. Click on Details of the qmake step and add CONFIG+=test as argument
    6. If you want see coverage statistics you can install **lcov** 
        On linux : use your distribution's package manager 
        On Mac : use Homebrew
        
    For linux users (and maybe Mac):
    7. Run ./coverage on the root directory of the project.
        The script will create an index.html which you can open with preferred browser
    
    For windows I don't know if lcov exists.
    
    If you are using **ccache** you don't need to do anything because the .pro file will
    take care of it. ( For Windows as well ;) )
    **NOTE** : for Mac user apparently ccache has many problems. So it will not work..
