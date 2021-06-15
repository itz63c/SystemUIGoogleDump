.class public Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;
.super Landroid/window/DisplayAreaOrganizer;
.source "OneHandedBackgroundPanelOrganizer.java"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;


# instance fields
.field private mBackgroundSurface:Landroid/view/SurfaceControl;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mBkgBounds:Landroid/graphics/Rect;

.field private final mDefaultColor:[F

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

.field private final mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;


# direct methods
.method public static synthetic $r8$lambda$JXuZ1u0-PC_rs0SuqrrrViHDaRc(Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->lambda$onStopFinished$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 90
    invoke-direct {p0, p3}, Landroid/window/DisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;)V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 74
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mOneHandedAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

    .line 92
    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p2

    invoke-direct {v0, v2, v2, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBkgBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result p2

    invoke-direct {v0, v2, v2, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBkgBounds:Landroid/graphics/Rect;

    .line 97
    :goto_0
    sget p2, Lcom/android/wm/shell/R$color;->GM2_grey_800:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/4 p2, 0x3

    new-array p2, p2, [F

    .line 98
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    aput v0, p2, v2

    const/4 v0, 0x1

    .line 99
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    aput v2, p2, v0

    const/4 v0, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    aput p1, p2, v0

    iput-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mDefaultColor:[F

    .line 100
    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 101
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 48
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
.method dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "OneHandedBackgroundPanelOrganizer"

    .line 206
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mIsShowing="

    .line 207
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mIsShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mBkgBounds="

    .line 209
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBkgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mDefaultColor="

    .line 211
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mDefaultColor:[F

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method getBackgroundSurface()Landroid/view/SurfaceControl;
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 147
    monitor-exit v0

    return-object p0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_1

    .line 151
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    .line 152
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBkgBounds:Landroid/graphics/Rect;

    .line 153
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBkgBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, 0x3

    .line 155
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 156
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "one-handed-background-panel"

    .line 157
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "OneHandedBackgroundPanelOrganizer"

    .line 158
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    .line 161
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getOneHandedAnimationCallback()Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mOneHandedAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

    return-object p0
.end method

.method public onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 109
    iput-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    .line 114
    monitor-exit p1

    return-void

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "There should be only one DisplayArea for the one-handed mode background panel"

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 114
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStopFinished(Landroid/graphics/Rect;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;)V

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

    .line 123
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    invoke-super {p0, p1}, Landroid/window/DisplayAreaOrganizer;->registerOrganizer(I)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 126
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 127
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/DisplayAreaAppearedInfo;

    .line 128
    invoke-virtual {v2}, Landroid/window/DisplayAreaAppearedInfo;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v3

    invoke-virtual {v2}, Landroid/window/DisplayAreaAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method removeBackgroundPanelLayer()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    .line 192
    monitor-exit v0

    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 196
    invoke-interface {v1}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 198
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    const/4 v1, 0x0

    .line 199
    iput-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    .line 200
    iput-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mIsShowing:Z

    .line 201
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

    .line 167
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mIsShowing:Z

    if-eqz v1, :cond_0

    .line 169
    monitor-exit v0

    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->getBackgroundSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "OneHandedBackgroundPanelOrganizer"

    const-string v1, "mBackgroundSurface is null !"

    .line 173
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    monitor-exit v0

    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 178
    invoke-interface {v1}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mDefaultColor:[F

    .line 180
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    .line 181
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 183
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    const/4 v1, 0x1

    .line 184
    iput-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mIsShowing:Z

    .line 185
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

    .line 136
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-super {p0}, Landroid/window/DisplayAreaOrganizer;->unregisterOrganizer()V

    const/4 v1, 0x0

    .line 138
    iput-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    .line 139
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
