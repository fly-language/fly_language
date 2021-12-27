package org.xtext.ide

import com.google.inject.Guice
import org.eclipse.xtext.util.Modules2
import org.xtext.FLYRuntimeModule
import org.xtext.FLYStandaloneSetup

/**
 * Initialization support for running Xtext languages as language servers.
 */
class FLYIdeSetup extends FLYStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new FLYRuntimeModule, new FLYIdeModule))
	}
	
}
