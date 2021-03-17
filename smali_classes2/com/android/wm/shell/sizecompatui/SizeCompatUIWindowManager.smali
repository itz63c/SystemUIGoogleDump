.class Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;
.super Landroid/view/WindowlessWindowManager;
.source "SizeCompatUIWindowManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLayout:Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

.field private mLeash:Landroid/view/SurfaceControl;

.field private mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p2, v0, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    .line 46
    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

    return-void
.end method


# virtual methods
.method protected attachToParentSurface(Landroid/view/IWindow;Landroid/view/SurfaceControl$Builder;)V
    .locals 1

    .line 59
    new-instance p1, Landroid/view/SurfaceControl$Builder;

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {p1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 60
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v0, "SizeCompatUILeash"

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v0, "SizeCompatUIWindowManager#attachToParentSurface"

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->attachToParentSurface(Landroid/view/SurfaceControl$Builder;)V

    .line 65
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 66
    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method createSizeCompatUI()Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/view/SurfaceControlViewHost;

    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)V

    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->size_compat_ui:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;

    .line 77
    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->inject(Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V

    .line 78
    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mLayout:Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method release()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 86
    iput-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 91
    iput-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mLeash:Landroid/view/SurfaceControl;

    :cond_1
    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 53
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIWindowManager;->mContext:Landroid/content/Context;

    return-void
.end method
