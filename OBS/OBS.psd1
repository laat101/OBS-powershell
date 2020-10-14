<#	
	===========================================================================
	 Created on:   	14-10-2020 10:27
	 Created by:   	Manfred de Laat
	 Organization: 	
	 Filename:     	OBS.psd1
	 -------------------------------------------------------------------------
	 Module Manifest
	-------------------------------------------------------------------------
	 Module Name: OBS
	===========================================================================
#>


@{
	
	# Script module or binary module file associated with this manifest
	ModuleToProcess = 'OBS.psm1'
	
	# Version number of this module.
    ModuleVersion = '0.1'
	
	# ID used to uniquely identify this module
	GUID = 'a8701b0f-f1c9-41be-9e24-27eebefd0ed4'
	
	# Author of this module
	Author = 'Manfred de Laat'
	
	# Company or vendor of this module
	CompanyName = 'CloudAssist'
	
	# Copyright statement for this module
	Copyright = '(c) 2020 Manfred de Laat. All rights reserved.'
	
	# Description of the functionality provided by this module
    Description = 'Module to control OBS via powershell. This module uses OBS websocket (thanks to Stéphane Lepin Palakis)
    Make sure you install OBS-websocket plugin in OBS. Check this url: 
    https://obsproject.com/forum/resources/obs-websocket-remote-control-obs-studio-from-websockets.466/ '
	
	# Minimum version of the Windows PowerShell engine required by this module
	PowerShellVersion = '3.0'
	
	# Name of the Windows PowerShell host required by this module
	# PowerShellHostName = ''
	
	# Minimum version of the Windows PowerShell host required by this module
	# PowerShellHostVersion = ''
	
	# Minimum version of the .NET Framework required by this module
	# DotNetFrameworkVersion = ''
	
	# Minimum version of the common language runtime (CLR) required by this module
	# CLRVersion = ''
	
	# Processor architecture (None, X86, Amd64, IA64) required by this module
	# ProcessorArchitecture = 'None'
	
	# Modules that must be imported into the global environment prior to importing
	# this module
	# RequiredModules = @()
	
	# Assemblies that must be loaded prior to importing this module
	# RequiredAssemblies = @()
	
	# Script files (.ps1) that are run in the caller's environment prior to
	# importing this module
	# ScriptsToProcess = @()
	
	# Type files (.ps1xml) to be loaded when importing this module
	# TypesToProcess = @()
	
	# Format files (.ps1xml) to be loaded when importing this module
	# FormatsToProcess = @()
	
	# Modules to import as nested modules of the module specified in
	# ModuleToProcess
	# NestedModules = @()
	
	# Functions to export from this module
	FunctionsToExport = 'Connect-obs', 'Disconnect-obs', 'Start-obsScene', 'Show-obsSource'
	
	# Cmdlets to export from this module
	CmdletsToExport = '*' 
	
	# Variables to export from this module
	VariablesToExport = '*'
	
	# Aliases to export from this module
	AliasesToExport = @()
	
	# List of all modules packaged with this module
	# ModuleList = @()
	
	# List of all files packaged with this module
	# FileList = @()
	
	# Private data to pass to the module specified in ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
	PrivateData = @{
		
		#Support for PowerShellGet galleries.
		PSData = @{
			
			# Tags applied to this module. These help with module discovery in online galleries.
			Tags = 'OBS', 'Websocket'
			
			# A URL to the license for this module.
			# LicenseUri = ''
			
			# A URL to the main website for this project.
			ProjectUri = 'https://github.com/laat101/OBS-powershell'
			
			# A URL to an icon representing this module.
			IconUri = 'https://github.com/laat101/OBS-powershell/Icon.png?raw=true'
			
			# ReleaseNotes of this module
			# ReleaseNotes = ''
			
		} # End of PSData hashtable
		
	} # End of PrivateData hashtable
}