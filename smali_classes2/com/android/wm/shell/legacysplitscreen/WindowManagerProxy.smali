.class Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"


# static fields
.field private static final CONTROLLED_ACTIVITY_TYPES:[I

.field private static final CONTROLLED_WINDOWING_MODES:[I

.field private static final HOME_AND_RECENTS:[I


# instance fields
.field private final mDockedRect:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDockedRect"
        }
    .end annotation
.end field

.field private final mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTaskOrganizer:Landroid/window/TaskOrganizer;

.field private final mTmpRect1:Landroid/graphics/Rect;

.field private final mTouchableRegion:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDockedRect"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$47w38wy_iigsOkn3kFhRTExSL3k(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->lambda$buildDismissSplit$0(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 56
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->HOME_AND_RECENTS:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 57
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->CONTROLLED_ACTIVITY_TYPES:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 63
    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->CONTROLLED_WINDOWING_MODES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x4
        0x0
    .end array-data
.end method

.method constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/window/TaskOrganizer;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTmpRect1:Landroid/graphics/Rect;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    .line 81
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 82
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    return-void
.end method

.method static buildDismissSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Z)V
    .locals 9

    .line 269
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTaskOrganizer()Landroid/window/TaskOrganizer;

    move-result-object v0

    .line 270
    iget-object v1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v1

    .line 272
    iget-object v3, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 273
    invoke-virtual {v0, v3, v2}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v3

    .line 277
    sget-object v4, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->HOME_AND_RECENTS:[I

    const/4 v5, 0x0

    .line 278
    invoke-virtual {v0, v5, v4}, Landroid/window/TaskOrganizer;->getRootTasks(I[I)Ljava/util/List;

    move-result-object v0

    .line 280
    new-instance v4, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy-$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V

    invoke-interface {v0, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 283
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x1

    if-eqz p3, :cond_6

    .line 289
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v4

    :goto_0
    if-ltz p3, :cond_1

    .line 290
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v6, v2, v4}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 296
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v4

    move v1, v5

    :goto_1
    if-ltz p3, :cond_3

    .line 297
    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 298
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v7, v2, v4}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 299
    invoke-static {v6}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 300
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v7, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 301
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v6, v5}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    if-nez p3, :cond_2

    move v1, v4

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_b

    .line 307
    sget-boolean p3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez p3, :cond_b

    .line 314
    iget-object p3, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p3}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 315
    iget-object v1, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mHomeBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    goto :goto_2

    .line 316
    :cond_4
    iget-object v1, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    :goto_2
    if-eqz p3, :cond_5

    .line 317
    iget-object p3, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 318
    :cond_5
    iget-object p3, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object v3, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mHomeBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, v3

    .line 319
    :goto_3
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 320
    iget-object v6, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondarySurface:Landroid/view/SurfaceControl;

    int-to-float v7, v1

    int-to-float v8, p3

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 321
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v7}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v7

    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 322
    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p2

    invoke-direct {v6, v5, v5, v7, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    neg-int p2, v1

    neg-int p3, p3

    .line 323
    invoke-virtual {v6, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 324
    iget-object p2, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondarySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, p2, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 325
    iget-object p2, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p2, v3}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    goto :goto_8

    .line 329
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v4

    :goto_4
    if-ltz p2, :cond_8

    .line 330
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p3}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_5

    .line 333
    :cond_7
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p3, v2, v4}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :goto_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 338
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v4

    :goto_6
    if-ltz p2, :cond_a

    .line 339
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 340
    invoke-static {p3}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 341
    iget-object v6, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v6, v2, v4}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 343
    iget-object v6, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v6, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 344
    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p3, v5}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_9
    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    .line 347
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v4

    :goto_7
    if-ltz p2, :cond_b

    .line 348
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p3, v2, v4}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    .line 352
    :cond_b
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v4

    :goto_9
    if-ltz p2, :cond_c

    .line 353
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p3, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 354
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p3, v5}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    .line 357
    :cond_c
    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p1, v4}, Landroid/window/WindowContainerTransaction;->setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method static isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    .line 241
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$buildDismissSplit$0(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    .line 280
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 281
    invoke-virtual {p1, p0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method applyDismissSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Z)V
    .locals 3

    .line 250
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 253
    iget-object v1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/window/WindowContainerTransaction;->setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;

    .line 254
    invoke-static {v0, p1, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->buildDismissSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Z)V

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applySyncTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method applyEnterSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)Z
    .locals 4

    .line 187
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 188
    iget-object v1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    sget-object v2, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->CONTROLLED_WINDOWING_MODES:[I

    sget-object v3, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->CONTROLLED_ACTIVITY_TYPES:[I

    invoke-virtual {v0, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;

    .line 190
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->buildEnterSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)Z

    move-result p1

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applySyncTransaction(Landroid/window/WindowContainerTransaction;)V

    return p1
.end method

.method applyHomeTasksMinimized(Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)Z
    .locals 6

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-virtual {p0, v0, p2}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->getHomeAndRecentsTasks(Ljava/util/List;Landroid/window/WindowContainerToken;)Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->calcResizableMinimizedHomeStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_3

    .line 152
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, p2

    :goto_0
    if-ltz v3, :cond_6

    .line 154
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 155
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 156
    iget-object v4, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v4

    if-eq v3, v5, :cond_1

    if-nez v3, :cond_2

    if-eqz v4, :cond_2

    :cond_1
    move v2, p2

    :cond_2
    if-ne v2, v4, :cond_3

    .line 160
    iget-object v3, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v3

    goto :goto_1

    :cond_3
    iget-object v3, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v3

    :goto_1
    iput v3, v1, Landroid/graphics/Rect;->right:I

    if-ne v2, v4, :cond_4

    .line 162
    iget-object v2, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v2, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v2

    :goto_2
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 167
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, p2

    :goto_4
    if-ltz v2, :cond_9

    if-nez p0, :cond_8

    .line 171
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    goto :goto_5

    .line 174
    :cond_7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p3, v3, p2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 176
    :cond_8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p3, v3, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 178
    :cond_9
    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mHomeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return p0
.end method

.method applyResizeSplits(ILcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)V
    .locals 1

    .line 116
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 117
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applySyncTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method applySyncTransaction(Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method buildEnterSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)Z
    .locals 8

    .line 205
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/window/TaskOrganizer;->getRootTasks(I[I)Ljava/util/List;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 211
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    move-object v4, v2

    :goto_0
    if-ltz v1, :cond_4

    .line 212
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 215
    iget-boolean v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    if-nez v6, :cond_1

    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    goto :goto_2

    .line 219
    :cond_1
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v6

    if-eq v6, v3, :cond_2

    goto :goto_2

    .line 224
    :cond_2
    invoke-static {v5}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v5

    goto :goto_1

    :cond_3
    move-object v4, v2

    .line 225
    :goto_1
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v6, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v5, v6, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 228
    :cond_4
    iget-object v0, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 229
    invoke-virtual {p0, p3, v2, p1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyHomeTasksMinimized(Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)Z

    move-result p0

    if-eqz v4, :cond_5

    .line 231
    sget-boolean p3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez p3, :cond_5

    .line 235
    iget-object p3, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mHomeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3, p2}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_5
    return p0
.end method

.method dismissOrMaximizeDocked(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Z)V
    .locals 1

    .line 87
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object p0, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    const/4 p1, 0x1

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->startDismissSplit(ZZ)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyDismissSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Z)V

    :goto_0
    return-void
.end method

.method getHomeAndRecentsTasks(Ljava/util/List;Landroid/window/WindowContainerToken;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;",
            "Landroid/window/WindowContainerToken;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 125
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    sget-object p2, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->HOME_AND_RECENTS:[I

    invoke-virtual {p0, v0, p2}, Landroid/window/TaskOrganizer;->getRootTasks(I[I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    sget-object v1, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->HOME_AND_RECENTS:[I

    invoke-virtual {p0, p2, v1}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object p0

    .line 127
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    move v1, v0

    :goto_1
    if-ge v0, p2, :cond_2

    .line 128
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 129
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 131
    iget-boolean v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method queueSyncTransactionIfWaiting(Landroid/window/WindowContainerTransaction;)Z
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queueIfWaiting(Landroid/window/WindowContainerTransaction;)Z

    move-result p0

    return p0
.end method

.method runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public setResizing(Z)V
    .locals 1

    .line 96
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->setSplitScreenResizing(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error calling setDockedStackResizing: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManagerProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setTouchRegion(Landroid/graphics/Rect;)V
    .locals 2

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :try_start_1
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 107
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :try_start_2
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 107
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "WindowManagerProxy"

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set touchable region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
