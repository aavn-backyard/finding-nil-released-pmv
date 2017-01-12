# finding-nil-released-pmv

A small utility project to find all NULL released ProcessModelVersions in your Axon.ivy engine.

Once deployed into your Axon.ivy Engine, simply run the process `FindIt`, it will scan **all** your existing applications to find whether there is any `IProcessModel` containing `null` released `IProcessModelVersion`.

The motivation of this small project is because of the issue https://discourse.axonivy.io/t/can-not-expose-the-restful-web-service-in-ivy-engine-server-because-of-lookup-for-ivy-project-based-rest-resources-failed/257
