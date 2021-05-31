
class Main extends hxd.App {

	var event = new hxd.WaitEvent();

	override function init() {
		super.init();

		new h3d.scene.CameraController(20.0, s3d);

		loadScene("scene.l3d");
	}

	override function update(dt:Float) {
		super.update(dt);
		event.update(dt);
	}

	function loadScene(?path: String) {
		var res = hxd.Res.load(path);
		var sceneData = res.toPrefab().load();
		var sceneRoot = new h3d.scene.Object(s3d);
		var ctx = new hrt.prefab.Context();
		ctx.shared = new hrt.prefab.ContextShared();
		ctx.shared.root3d = sceneRoot;
		ctx.shared.currentPath = path;
		ctx.init();
		ctx = sceneData.make(ctx);
	}

	static function main() {
		hxd.Res.initLocal();
		new Main();
	}
}