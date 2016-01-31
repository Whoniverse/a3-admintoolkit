/**
 * AdminToolkit - Client config
 */
class CfgPatches
{
	class admintoolkit
	{
		requiredVersion=0.1;
		requiredAddons[]={};
		units[]={};
		weapons[]={};
		magazines[]={};
		ammo[]={};
	};
};

#include <\admintoolkit\defines.hpp>
#include <\admintoolkit\AdminToolkitMenu.hpp>

class CfgFunctions
{
	class AdminToolkit
	{
		class Bootstrap
		{
			file="admintoolkit\bootstrap";
			class preInit
			{
				preInit=1;
			};
			class postInit
			{
				postInit=1;
			};
		};
	};
};

class CfgRemoteExec
{
	class Functions
	{
		mode=1;
		jip=0;
		class AdminToolkit_network_receiveRequest { allowedTargets=2; };
		class AdminToolkit_network_receiveResponse { allowedTargets=1; };
	};
	class Commands
	{
		mode=0;
		jip=0;
	};
};
