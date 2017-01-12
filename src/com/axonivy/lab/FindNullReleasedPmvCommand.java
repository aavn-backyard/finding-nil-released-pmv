package com.axonivy.lab;

import java.util.Collection;
import java.util.Objects;
import java.util.function.Supplier;
import java.util.stream.Collectors;

import ch.ivyteam.di.restricted.DiCore;
import ch.ivyteam.di.restricted.DiInjector;
import ch.ivyteam.ivy.application.IApplication;
import ch.ivyteam.ivy.application.IApplicationConfigurationManager;
import ch.ivyteam.ivy.environment.Ivy;

public class FindNullReleasedPmvCommand implements Supplier<String> {

	@Override
	public String get() {
		DiInjector injector = DiCore.getGlobalInjector();
		Collection<IApplication> allApplications = injector.getInstance(IApplicationConfigurationManager.class).getApplications();
		
		String result = allApplications.stream()
					.flatMap(a -> a.getProcessModels().stream())
					.filter(pm -> Objects.isNull(pm.getReleasedProcessModelVersion()))
					.map(pm -> String.format(
							"ProcessModel [%s] has NULL RELEASED PMV at directory [%s]", pm.getName(), pm.getFileDirectory()))
					.collect(Collectors.joining("\n"));
		
		Ivy.log().error(result = "Finding NULL ProcessModel result: \n" + (result.isEmpty() ? "(none)" : result));
		
		return result;
	}

}
