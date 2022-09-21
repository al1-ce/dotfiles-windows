using Godot;
using System;

namespace PrototypeTools {
    [Tool]
    public partial class PrototypeCube : Node3D { 
        [Export]
        private Material PrototypeMaterial {
            set { prototypeMaterial = value; UpdateMaterial(); }
            get { return prototypeMaterial; }
        }

        private Material prototypeMaterial = ResourceLoader.Load<ShaderMaterial>("res://addons/prototype_tools/prototype_material_shader.tres");
        private static PackedScene scene = ResourceLoader.Load<PackedScene>("res://addons/prototype_tools/PrototypeCube.tscn");
        private bool isInit = false;

        public override void _Ready() {
            this.AddChild(scene.Instantiate());
            isInit = true;
        }

        private void UpdateMaterial() {
            if (!isInit) return;
            this.GetNode<MeshInstance3D>("PrototypeCube/Cube").SetSurfaceOverrideMaterial(0, prototypeMaterial);
        }
    }
}