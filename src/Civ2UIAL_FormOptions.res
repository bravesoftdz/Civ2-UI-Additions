        ��  ��                  �  4   ��
 F O R M O P T I O N S       0           <?xml version="1.0"?>
<options>
	<section name="UI Additions" description="Section of User Interface Additions.
These patches do not change any original game rules or limitations.">
		<boolean key="UIAEnable" name="UIA features" description="Enable features from User Interface Additions
- Mouse wheel and middle button support
- Ability to choose any unit in stack beyond limit of 9
- Work counter for Settlers/Engineers is displayed
- Click-bounds of specialists sprites corrected in city screen
- Number of the game turn is displayed
- Current research numbers are displayed in Science Advisor
- CD Music: correct CD-tracks looping and play progress display
- Game icon fix (visible in Alt+Tab popup)
- Resetting city name prompts, when restarting a new game without closing program"/>
	</section>
	<section name="Common" description="Section of common patches.
These patches do not change any original game rules or limitations.">
		<boolean key="Patch64BitOn" name="64-bit patch" description="This eliminates game crashes on 64-bit systems when the game tries to display edit controls (input fields) for entering text (like city name, emperor name, world sizes etc.)."/>
		<boolean key="DisableCDCheckOn" name="Disable CD Check" description="When enabled, allow the application to run without the game CD."/>
		<boolean key="CpuUsageOn" name="Fix Cpu Usage" description="When enabled, reduce CPU usage when the application is idle.
This patch is adapted from civ2patch project."/>
		<boolean key="SocketBufferOn" name="Fix Multiplayer" description="Fix for multiplayer game by limiting socket buffer length to old default 0x2000 bytes. This is relevant for Windows 10, in which the default length is now 0x10000 which doesn't fit into 2 bytes used by the game to handle this value."/>
	</section>
	<section name="civ2patch" description="Section of some fixes and enhancements from civ2patch project by vinceho
https://github.com/vinceho/civ2patch
These patches change some game rules or limitations.">
		<boolean key="civ2patchEnable" name="Enable" description="Enable patches from civ2patch">
			<boolean key="HostileAiOn" name="Hostile AI" description="When enabled, AI will not be unreasonably hostile to the player."/>
			<boolean key="RetirementYearOn" name="Retirement year" description="When enabled, allow the retirement year to be modified.">
				<integer key="RetirementWarningYear" name="Warning year"/>
				<integer key="RetirementYear" name="Retirement year"/>
			</boolean>
			<boolean key="PopulationLimitOn" name="Population limit" description="When enabled, allow the population limit to be modified.">
				<integer key="PopulationLimit" name="Population limit"/>
			</boolean>
			<boolean key="GoldLimitOn" name="Gold limit" description="When enabled, allow the gold limit to be modified.">
				<integer key="GoldLimit" name="Gold limit"/>
			</boolean>
			<boolean key="MapSizeLimitOn" name="Map size limit" description="When enabled, allow the number of map tiles limit to be modified.">
				<integer key="MapXLimit" name="Map X limit"/>
				<integer key="MapYLimit" name="Map Y limit"/>
				<integer key="MapSizeLimit" name="Map size limit"/>
			</boolean>
		</boolean>
	</section>
</options> 