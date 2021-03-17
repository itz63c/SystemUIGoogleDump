.class public Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;
.super Landroid/window/DisplayAreaOrganizer;
.source "OneHandedBackgroundPanelOrganizer.java"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;


# instance fields
.field private final mAlpha:F

.field private mBackgroundSurface:Landroid/view/SurfaceControl;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mColor:[F

.field private final mDisplaySize:Landroid/graphics/Point;

.field mIsShowing:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mOneHandedAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

.field private mParentLeash:Landroid/view/SurfaceControl;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mRect:Landroid/graphics/Rect;

.field private final mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;


# direct methods
.method public static synthetic $r8$lambda$JXuZ1u0-PC_rs0SuqrrrViHDaRc(Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->lambda$onStopFinished$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Ljava/util/concurrent/Executor;)V
    .locals 4

    .line 90
    invoke-direct {p0, p3}, Landroid/window/DisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;)V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 60
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mDisplaySize:Landroid/graphics/Point;

    .line 74
    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;)V

    iput-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mOneHandedAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 93
    sget p2, Lcom/android/wm/shell/R$dimen;->config_one_handed_background_rgb:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    const/4 v2, 0x3

    new-array v2, v2, [F

    aput p2, v2, v1

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 v3, 0x2

    aput p2, v2, v3

    .line 94
    iput-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mColor:[F

    .line 95
    sget p2, Lcom/android/wm/shell/R$dimen;->config_one_handed_background_alpha:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mAlpha:F

    .line 96
    new-instance p1, Landroid/graphics/Rect;

    iget p2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mRect:Landroid/graphics/Rect;

    .line 97
    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 98
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator-$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private synthetic lambda$onStopFinished$0()V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->removeBackgroundPanelLayer()V

    return-void
.end method


# virtual methods
.method getBackgroundSurface()Landroid/view/SurfaceControl;
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 144
    monitor-exit v0

    return-object p0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_1

    .line 148
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    .line 149
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 151
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 152
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "one-handed-background-panel"

    .line 153
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "OneHandedBackgroundPanelOrganizer"

    .line 154
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    .line 157
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getOneHandedAnimationCallback()Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mOneHandedAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

    return-object p0
.end method

.method public onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 106
    iput-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    .line 111
    monitor-exit p1

    return-void

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "There should be only one DisplayArea for the one-handed mode background panel"

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 111
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStopFinished(Landroid/graphics/Rect;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerOrganizer(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/window/DisplayAreaAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    invoke-super {p0, p1}, Landroid/window/DisplayAreaOrganizer;->registerOrganizer(I)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 123
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 124
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/DisplayAreaAppearedInfo;

    .line 125
    invoke-virtual {v2}, Landroid/window/DisplayAreaAppearedInfo;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v3

    invoke-virtual {v2}, Landroid/window/DisplayAreaAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method removeBackgroundPanelLayer()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    .line 189
    monitor-exit v0

    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 193
    invoke-interface {v1}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 195
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 196
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    const/4 v1, 0x0

    .line 197
    iput-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    .line 198
    iput-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mIsShowing:Z

    .line 199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method showBackgroundPanelLayer()V
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mIsShowing:Z

    if-eqz v1, :cond_0

    .line 165
    monitor-exit v0

    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->getBackgroundSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "OneHandedBackgroundPanelOrganizer"

    const-string v1, "mBackgroundSurface is null !"

    .line 169
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    monitor-exit v0

    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 174
    invoke-interface {v1}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mColor:[F

    .line 176
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mAlpha:F

    .line 177
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    .line 178
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 180
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    const/4 v1, 0x1

    .line 181
    iput-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mIsShowing:Z

    .line 182
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterOrganizer()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    invoke-super {p0}, Landroid/window/DisplayAreaOrganizer;->unregisterOrganizer()V

    const/4 v1, 0x0

    .line 135
    iput-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    .line 136
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
