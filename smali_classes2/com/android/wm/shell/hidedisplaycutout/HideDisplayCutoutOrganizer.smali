.class Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;
.super Landroid/window/DisplayAreaOrganizer;
.source "HideDisplayCutoutOrganizer.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentCutoutInsets:Landroid/graphics/Insets;

.field final mCurrentDisplayBounds:Landroid/graphics/Rect;

.field private mDefaultCutoutInsets:Landroid/graphics/Insets;

.field private final mDefaultDisplayBounds:Landroid/graphics/Rect;

.field mDisplayAreaMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/window/WindowContainerToken;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private mIsDefaultPortrait:Z

.field mOffsetX:I

.field mOffsetY:I

.field mRotation:I

.field private final mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

.field private mStatusBarHeight:I


# direct methods
.method public static synthetic $r8$lambda$J9yHtsMq1q0Zg0kAiUy8IJBA3Ao(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->lambda$applyAllBoundsAndOffsets$1(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XJ9n-_XsGGfNjJHG24HRQtXHOY8(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;IIILandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->lambda$new$0(IIILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    .line 95
    invoke-direct {p0, p3}, Landroid/window/DisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;)V

    .line 60
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayAreaMap:Landroid/util/ArrayMap;

    .line 64
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDefaultDisplayBounds:Landroid/graphics/Rect;

    .line 65
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentDisplayBounds:Landroid/graphics/Rect;

    .line 82
    new-instance p3, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer-$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;)V

    iput-object p3, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    .line 96
    iput-object p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-void
.end method

.method private applyAllBoundsAndOffsets(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayAreaMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 273
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getStatusBarHeight()I
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mIsDefaultPortrait:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->isDisplaySizeFlipped()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->isDisplaySizeFlipped()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 293
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_2

    const v0, 0x1050271

    goto :goto_1

    :cond_2
    const v0, 0x1050272

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private initDefaultValuesIfNeeded()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDefaultDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDefaultDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->getDisplayBoundsOfNaturalOrientation()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->getDisplayCutoutInsetsOfNaturalOrientation()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDefaultCutoutInsets:Landroid/graphics/Insets;

    .line 264
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDefaultDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDefaultDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mIsDefaultPortrait:Z

    return-void
.end method

.method private isDisplaySizeFlipped()Z
    .locals 2

    .line 210
    iget p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mRotation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$applyAllBoundsAndOffsets$1(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 271
    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->applyBoundsAndOffsets(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$new$0(IIILandroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 84
    iput p3, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mRotation:I

    const/4 p1, 0x1

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->updateBoundsAndOffsets(Z)V

    .line 86
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 87
    invoke-direct {p0, p4, p1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->applyAllBoundsAndOffsets(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 90
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private resetBoundsAndOffsets()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 254
    iput v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mOffsetX:I

    .line 255
    iput v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mOffsetY:I

    return-void
.end method

.method private updateDisplayAreaMap(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/window/DisplayAreaAppearedInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 131
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/DisplayAreaAppearedInfo;

    invoke-virtual {v1}, Landroid/window/DisplayAreaAppearedInfo;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v1

    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/DisplayAreaAppearedInfo;

    invoke-virtual {v2}, Landroid/window/DisplayAreaAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 133
    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->addDisplayAreaInfoAndLeashToMap(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addDisplayAreaInfoAndLeashToMap(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)Z
    .locals 3

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget v0, p1, Landroid/window/DisplayAreaInfo;->displayId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    monitor-exit p0

    return v1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayAreaMap:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "HideDisplayCutoutOrganizer"

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already appeared token: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    monitor-exit p0

    return v1

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayAreaMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 149
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method applyBoundsAndOffsets(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p1, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 280
    iget p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mOffsetX:I

    int-to-float p1, p1

    iget p3, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mOffsetY:I

    int-to-float p3, p3

    invoke-virtual {p4, p2, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 281
    iget-object p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p4, p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method applyTransaction(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 287
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method disableHideDisplayCutout()V
    .locals 2

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->updateBoundsAndOffsets(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    .line 178
    invoke-virtual {p0}, Landroid/window/DisplayAreaOrganizer;->unregisterOrganizer()V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "HideDisplayCutoutOrganizer"

    .line 300
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " states: "

    .line 301
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    monitor-enter p0

    :try_start_0
    const-string v0, "  "

    .line 303
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDisplayAreaMap="

    .line 304
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayAreaMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 306
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "  "

    .line 307
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getDisplayBoundsOfNaturalOrientation()="

    .line 308
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->getDisplayBoundsOfNaturalOrientation()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  "

    .line 310
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultDisplayBounds="

    .line 311
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDefaultDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  "

    .line 313
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentDisplayBounds="

    .line 314
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  "

    .line 316
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultCutoutInsets="

    .line 317
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDefaultCutoutInsets:Landroid/graphics/Insets;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  "

    .line 319
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentCutoutInsets="

    .line 320
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentCutoutInsets:Landroid/graphics/Insets;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  "

    .line 322
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotation="

    .line 323
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    iget v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mRotation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  "

    .line 325
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarHeight="

    .line 326
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    iget v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mStatusBarHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  "

    .line 328
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOffsetX="

    .line 329
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mOffsetX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  "

    .line 331
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOffsetY="

    .line 332
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mOffsetY:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 306
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method enableHideDisplayCutout()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    .line 158
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mRotation:I

    :cond_0
    const/4 v0, 0x6

    .line 163
    invoke-virtual {p0, v0}, Landroid/window/DisplayAreaOrganizer;->registerOrganizer(I)Ljava/util/List;

    move-result-object v0

    .line 164
    invoke-direct {p0, v0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->updateDisplayAreaMap(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->updateBoundsAndOffsets(Z)V

    .line 166
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 167
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 168
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->applyAllBoundsAndOffsets(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 169
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method getDisplayBoundsOfNaturalOrientation()Landroid/graphics/Rect;
    .locals 4

    .line 196
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 197
    iget-object v2, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->isDisplaySizeFlipped()Z

    move-result p0

    .line 202
    new-instance v2, Landroid/graphics/Rect;

    if-eqz p0, :cond_1

    .line 205
    iget v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    iget v3, v0, Landroid/graphics/Point;->x:I

    :goto_0
    if-eqz p0, :cond_2

    .line 206
    iget p0, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_2
    iget p0, v0, Landroid/graphics/Point;->y:I

    :goto_1
    invoke-direct {v2, v1, v1, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method getDisplayCutoutInsetsOfNaturalOrientation()Landroid/graphics/Insets;
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object p0

    .line 187
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 189
    :goto_0
    iget p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mRotation:I

    if-eqz p0, :cond_2

    rsub-int/lit8 p0, p0, 0x4

    .line 190
    invoke-static {v0, p0}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .locals 2

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->addDisplayAreaInfoAndLeashToMap(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 107
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 108
    iget-object p1, p1, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->applyBoundsAndOffsets(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    .locals 4

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayAreaMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HideDisplayCutoutOrganizer"

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 121
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 122
    iget-object v2, p1, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayAreaMap:Landroid/util/ArrayMap;

    .line 123
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .line 122
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->applyBoundsAndOffsets(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 125
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDisplayAreaMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method updateBoundsAndOffsets(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->resetBoundsAndOffsets()V

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->initDefaultValuesIfNeeded()V

    .line 226
    iget-object p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentDisplayBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDefaultDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 227
    iput p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mOffsetX:I

    .line 228
    iput p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mOffsetY:I

    .line 231
    iget-object p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mDefaultCutoutInsets:Landroid/graphics/Insets;

    iget v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mRotation:I

    invoke-static {p1, v0}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentCutoutInsets:Landroid/graphics/Insets;

    .line 232
    invoke-direct {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->isDisplaySizeFlipped()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 233
    iget-object p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentDisplayBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentDisplayBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentCutoutInsets:Landroid/graphics/Insets;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 243
    invoke-direct {p0}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->getStatusBarHeight()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mStatusBarHeight:I

    .line 244
    iget-object v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentCutoutInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->top:I

    if-eqz v0, :cond_2

    .line 245
    iget-object v1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentDisplayBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 247
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mCurrentDisplayBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mOffsetX:I

    .line 248
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->mOffsetY:I

    :goto_0
    return-void
.end method
