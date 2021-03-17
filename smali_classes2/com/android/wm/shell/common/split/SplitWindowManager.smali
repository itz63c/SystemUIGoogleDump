.class public final Lcom/android/wm/shell/common/split/SplitWindowManager;
.super Landroid/view/WindowlessWindowManager;
.source "SplitWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLeash:Landroid/view/SurfaceControl;

.field private final mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

.field private mResizingSplits:Z

.field private mViewHost:Landroid/view/SurfaceControlViewHost;

.field private final mWindowName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/android/wm/shell/common/split/SplitWindowManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p3, v0, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    .line 70
    invoke-virtual {p2, p3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object p4, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    .line 72
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mWindowName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected attachToParentSurface(Landroid/view/IWindow;Landroid/view/SurfaceControl$Builder;)V
    .locals 1

    .line 94
    new-instance p1, Landroid/view/SurfaceControl$Builder;

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {p1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 95
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->TAG:Ljava/lang/String;

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v0, "SplitWindowManager#attachToParentSurface"

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;->attachToParentSurface(Landroid/view/SurfaceControl$Builder;)V

    .line 100
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 101
    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method init(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 9

    .line 106
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Landroid/view/SurfaceControlViewHost;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$layout;->split_divider:I

    const/4 v3, 0x0

    .line 112
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/split/DividerView;

    .line 114
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/16 v5, 0x7f2

    const v6, 0x20840028

    const/4 v7, -0x3

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 119
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 120
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mWindowName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x20000040

    or-int/2addr v0, v2

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0, v1, v8}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 123
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v1, p1, p0}, Lcom/android/wm/shell/common/split/DividerView;->setup(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControlViewHost;)V

    return-void
.end method

.method release()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 133
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 138
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    :cond_1
    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 88
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method setResizingSplits(Z)V
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mResizingSplits:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 145
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->setSplitScreenResizing(Z)V

    .line 146
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mResizingSplits:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 148
    sget-object p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->TAG:Ljava/lang/String;

    const-string v0, "Error calling setSplitScreenResizing"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    return-void
.end method
