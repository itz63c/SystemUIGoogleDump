.class public final synthetic Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/IWindowSession;

.field public final synthetic f$1:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

.field public final synthetic f$10:Landroid/view/SurfaceControl;

.field public final synthetic f$11:Landroid/view/InsetsState;

.field public final synthetic f$2:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/view/InsetsState;

.field public final synthetic f$5:Landroid/view/InputChannel;

.field public final synthetic f$6:[Landroid/view/InsetsSourceControl;

.field public final synthetic f$7:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

.field public final synthetic f$8:Landroid/window/ClientWindowFrames;

.field public final synthetic f$9:Landroid/util/MergedConfiguration;


# direct methods
.method public synthetic constructor <init>(Landroid/view/IWindowSession;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;Landroid/view/InputChannel;[Landroid/view/InsetsSourceControl;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$0:Landroid/view/IWindowSession;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$2:Landroid/view/WindowManager$LayoutParams;

    iput p4, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$4:Landroid/view/InsetsState;

    iput-object p6, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$5:Landroid/view/InputChannel;

    iput-object p7, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$6:[Landroid/view/InsetsSourceControl;

    iput-object p8, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$7:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    iput-object p9, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$8:Landroid/window/ClientWindowFrames;

    iput-object p10, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$9:Landroid/util/MergedConfiguration;

    iput-object p11, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$10:Landroid/view/SurfaceControl;

    iput-object p12, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$11:Landroid/view/InsetsState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$0:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$2:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$4:Landroid/view/InsetsState;

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$5:Landroid/view/InputChannel;

    iget-object v6, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$6:[Landroid/view/InsetsSourceControl;

    iget-object v7, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$7:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    iget-object v8, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$8:Landroid/window/ClientWindowFrames;

    iget-object v9, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$9:Landroid/util/MergedConfiguration;

    iget-object v10, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$10:Landroid/view/SurfaceControl;

    iget-object v11, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow-$$ExternalSyntheticLambda0;->f$11:Landroid/view/InsetsState;

    invoke-static/range {v0 .. v11}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->$r8$lambda$ONFP7npzsI3--oPkEPxQ4FCB57U(Landroid/view/IWindowSession;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;Landroid/view/InputChannel;[Landroid/view/InsetsSourceControl;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;)V

    return-void
.end method
