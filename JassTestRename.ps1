Configuration JassTestRename {

param(


    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [String] $ComputerRename_computerName
)
    # resource import test source control DSC no change
	Import-DscResource –ModuleName StateConfigCompositeResources

    Node local {
		ComputerRename ComputerRename {
	    computerName = $ComputerRename_computerName


        }

    }
}
