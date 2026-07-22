class Main extends hxd.App {
	var event = new hxd.WaitEvent();

	static function main() {
		hxd.Res.initLocal();
		h3d.mat.MaterialSetup.current = new h3d.mat.PbrMaterialSetup();
		new Main();
	}

	override function init() {
		super.init();
		new h3d.scene.CameraController.OrbitCameraController(20.0, s3d);
		loadPrefab("Prefabs/Dungeon01.prefab");
		setLighting(hxd.Res.Prefabs.Lighting.Day);
	}

	override function update(dt:Float) {
		super.update(dt);
		event.update(dt);
	}

	function loadPrefab(?path: String) {
		var res = hxd.Res.load(path);
		var sceneData = res.toPrefab().load();
		var sceneRoot = new h3d.scene.Object(s3d);
		var shared = new hrt.prefab.ContextShared(path, null, sceneRoot);
		sceneData = sceneData.make(shared);
	}

	function setLighting(res : hxd.res.Prefab) {
		var prefab = res.load();
		var cloned = prefab.make(s3d);
		var render = cloned.getOpt(hrt.prefab.RenderProps, true);
		render.applyProps(s3d.renderer);
	}
}
