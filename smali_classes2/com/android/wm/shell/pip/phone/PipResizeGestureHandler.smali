.class public Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;
.super Ljava/lang/Object;
.source "PipResizeGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;
    }
.end annotation


# instance fields
.field private mAllowGesture:Z

.field private mAngle:F

.field private final mContext:Landroid/content/Context;

.field private mCtrlType:I

.field private mDelta:I

.field private final mDisplayBounds:Landroid/graphics/Rect;

.field private final mDisplayId:I

.field private final mDownPoint:Landroid/graphics/PointF;

.field private final mDownSecondaryPoint:Landroid/graphics/PointF;

.field private final mDragCornerSize:Landroid/graphics/Rect;

.field private mEnablePinchResize:Z

.field mFirstIndex:I

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsAttached:Z

.field private mIsEnabled:Z

.field private mIsSysUiStateValid:Z

.field private final mLastDownBounds:Landroid/graphics/Rect;

.field private final mLastResizeBounds:Landroid/graphics/Rect;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMaxSize:Landroid/graphics/Point;

.field private final mMinSize:Landroid/graphics/Point;

.field private final mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

.field private final mMovementBoundsSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field private final mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

.field private final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field private final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field private final mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

.field mSecondIndex:I

.field private mThresholdCrossed:Z

.field private mThresholdCrossed0:Z

.field private mThresholdCrossed1:Z

.field private final mTmpBottomLeftCorner:Landroid/graphics/Rect;

.field private final mTmpBottomRightCorner:Landroid/graphics/Rect;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTmpTopLeftCorner:Landroid/graphics/Rect;

.field private final mTmpTopRightCorner:Landroid/graphics/Rect;

.field private mTouchSlop:F

.field private final mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

.field private final mUserResizeBounds:Landroid/graphics/Rect;

.field private mUsingPinchToZoom:Z


# direct methods
.method public static synthetic $r8$lambda$WtDbF9Y9YztVsta_tic2Eewwo9Y(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->lambda$finishResize$1(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y3nbkw5BASZg3VO5nA6uBp5FOBQ(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->lambda$updateIsEnabled$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipTaskOrganizer;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            "Ljava/util/function/Function<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/android/wm/shell/pip/PipUiEventLogger;",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    .line 80
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 81
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondaryPoint:Landroid/graphics/PointF;

    .line 82
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    .line 83
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    .line 84
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 85
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 86
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    .line 89
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    .line 90
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 91
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 92
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    .line 109
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUsingPinchToZoom:Z

    const/4 v2, 0x0

    .line 110
    iput v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    const/4 v2, -0x1

    .line 111
    iput v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 112
    iput v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 124
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayId:I

    .line 126
    iput-object p10, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 127
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 128
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 129
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 130
    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 131
    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMovementBoundsSupplier:Ljava/util/function/Function;

    .line 132
    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

    .line 133
    iput-object p9, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 134
    iput-object p8, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 137
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->reloadResources()V

    const-string p1, "systemui"

    const-string p2, "pip_pinch_resize"

    .line 139
    invoke-static {p1, p2, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    .line 143
    new-instance p2, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$1;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$1;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;)V

    invoke-static {p1, p10, p2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;Landroid/view/InputEvent;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private calculateRotationAngle(IIFFFFZ)F
    .locals 4

    .line 461
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p1

    .line 462
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    .line 461
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 464
    iget-boolean v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed0:Z

    if-eqz v2, :cond_0

    int-to-float v2, p2

    sub-float/2addr v2, p4

    float-to-double v2, v2

    int-to-float p4, p1

    sub-float/2addr p3, p4

    float-to-double p3, p3

    .line 465
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p3

    goto :goto_0

    :cond_0
    move-wide p3, v0

    .line 466
    :goto_0
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed0:Z

    if-eqz p0, :cond_1

    int-to-float p0, p2

    sub-float/2addr p0, p6

    float-to-double v2, p0

    int-to-float p0, p1

    sub-float/2addr p5, p0

    float-to-double p0, p5

    .line 467
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    goto :goto_1

    :cond_1
    move-wide p0, v0

    :goto_1
    const-wide p5, 0x4066800000000000L    # 180.0

    const-wide/16 v2, 0x0

    if-eqz p7, :cond_3

    cmpg-double p2, p0, v2

    if-gez p2, :cond_2

    add-double/2addr p0, p5

    goto :goto_3

    :cond_2
    sub-double/2addr p0, p5

    goto :goto_3

    :cond_3
    cmpg-double p2, p3, v2

    if-gez p2, :cond_4

    neg-double p2, p3

    sub-double/2addr p2, p5

    move-wide p3, p2

    goto :goto_2

    :cond_4
    sub-double/2addr p5, p3

    move-wide p3, p5

    :goto_2
    neg-double p0, p0

    :goto_3
    const-wide p5, 0x4056800000000000L    # 90.0

    .line 478
    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    sub-double/2addr p2, v0

    div-double/2addr p2, p5

    .line 479
    invoke-static {p0, p1, p5, p6}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    sub-double/2addr p0, v0

    div-double/2addr p0, p5

    add-double/2addr p2, p0

    double-to-float p0, p2

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    const/high16 p1, 0x42340000    # 45.0f

    mul-float/2addr p0, p1

    if-eqz p7, :cond_5

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, -0x1

    :goto_4
    int-to-float p1, p1

    mul-float/2addr p0, p1

    return p0
.end method

.method private disposeInputChannel()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 186
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 190
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private finishResize()V
    .locals 7

    .line 544
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 545
    new-instance v6, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler-$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;)V

    .line 554
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUsingPinchToZoom:Z

    if-eqz v0, :cond_2

    .line 555
    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 557
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 558
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSnapFraction(Landroid/graphics/Rect;)F

    move-result v0

    .line 562
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->applySnapFraction(Landroid/graphics/Rect;F)V

    .line 563
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    const/16 v4, 0xfa

    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    neg-float v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;IFLjava/util/function/Consumer;)V

    goto :goto_0

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    .line 569
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    sget-object v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_RESIZE:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    goto :goto_1

    .line 572
    :cond_3
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->resetState()V

    :goto_1
    return-void
.end method

.method private isInValidSysUiState()Z
    .locals 0

    .line 351
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsSysUiStateValid:Z

    return p0
.end method

.method private synthetic lambda$finishResize$1(Landroid/graphics/Rect;)V
    .locals 1

    .line 546
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 547
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 548
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 549
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->resetState()V

    return-void
.end method

.method private synthetic lambda$updateIsEnabled$0()V
    .locals 3

    .line 219
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 220
    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    return-void
.end method

.method private onDragCornerResize(Landroid/view/MotionEvent;)V
    .locals 14

    .line 485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 490
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 491
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isInValidSysUiState()Z

    move-result v3

    if-eqz v3, :cond_0

    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isWithinDragResizeRegion(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v12, v13

    :cond_0
    iput-boolean v12, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    if-eqz v12, :cond_1

    float-to-int v3, v1

    float-to-int v4, v2

    .line 493
    invoke-direct {p0, v3, v4}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->setCtrlType(II)V

    .line 494
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 495
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 497
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 498
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 499
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    goto/16 :goto_1

    .line 502
    :cond_2
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    if-eqz p1, :cond_9

    if-eq v0, v13, :cond_8

    const/4 p1, 0x2

    if-eq v0, p1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_8

    const/4 p1, 0x5

    if-eq v0, p1, :cond_3

    goto/16 :goto_1

    .line 506
    :cond_3
    iput-boolean v12, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    goto/16 :goto_1

    .line 510
    :cond_4
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    sub-float v0, v1, v0

    float-to-double v3, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float p1, v2, p1

    float-to-double v5, p1

    .line 511
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    iget p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    float-to-double v5, p1

    cmpl-double p1, v3, v5

    if-lez p1, :cond_5

    .line 512
    iput-boolean v13, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 514
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 515
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {p1}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 517
    :cond_5
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-eqz p1, :cond_9

    .line 518
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 519
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p1, v12, v12}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(ZZ)V

    .line 522
    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 523
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    .line 526
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v11, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v0, v11, :cond_7

    move v11, v13

    goto :goto_0

    :cond_7
    move v11, v12

    .line 523
    :goto_0
    invoke-static/range {v1 .. v11}, Lcom/android/internal/policy/TaskResizingAlgorithm;->resizeDrag(FFFFLandroid/graphics/Rect;IIILandroid/graphics/Point;ZZ)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 527
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 528
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v1

    .line 527
    invoke-virtual {p1, v0, v1, v12, v13}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    .line 530
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 532
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0, v13}, Lcom/android/wm/shell/pip/PipBoundsState;->setHasUserResizedPip(Z)V

    goto :goto_1

    .line 537
    :cond_8
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->finishResize()V

    :cond_9
    :goto_1
    return-void
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 234
    :cond_0
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 235
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUsingPinchToZoom:Z

    if-eqz v0, :cond_1

    .line 236
    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->onPinchResize(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 238
    :cond_1
    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->onDragCornerResize(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onPinchResize(Landroid/view/MotionEvent;)V
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v9, 0x1

    const/4 v2, -0x1

    if-eq v1, v9, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 358
    :cond_0
    iput v2, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 359
    iput v2, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->finishResize()V

    .line 363
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    .line 368
    iget v3, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    if-ne v3, v2, :cond_3

    iget v3, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    if-ne v3, v2, :cond_3

    const/4 v3, 0x0

    .line 369
    iput v3, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 370
    iput v9, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 371
    iget-object v5, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v3

    iget v6, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 372
    iget-object v3, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondaryPoint:Landroid/graphics/PointF;

    iget v5, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v5

    iget v6, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 375
    iget-object v3, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    iget-object v5, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v5}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 376
    iget-object v3, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v5, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    if-ne v1, v4, :cond_11

    .line 381
    iget v1, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    if-eq v1, v2, :cond_11

    iget v3, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    if-ne v3, v2, :cond_4

    goto/16 :goto_5

    .line 385
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    .line 386
    iget v2, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v2

    .line 387
    iget v3, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v3

    .line 388
    iget v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v0

    .line 390
    iget-object v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float v5, v1, v5

    float-to-double v5, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, v2, v4

    float-to-double v10, v4

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    .line 391
    iget-object v6, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondaryPoint:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    sub-float v7, v3, v7

    float-to-double v10, v7

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v6, v0, v6

    float-to-double v6, v6

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 393
    iget v10, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    float-to-double v10, v10

    cmpl-double v4, v4, v10

    if-lez v4, :cond_5

    iget-boolean v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed0:Z

    if-nez v4, :cond_5

    .line 394
    iget-object v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v4}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 395
    iput-boolean v9, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed0:Z

    .line 397
    iget-object v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 399
    :cond_5
    iget v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    float-to-double v4, v4

    cmpl-double v4, v6, v4

    if-lez v4, :cond_6

    iget-boolean v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed1:Z

    if-nez v4, :cond_6

    .line 400
    iget-object v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v4}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 401
    iput-boolean v9, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed1:Z

    .line 403
    iget-object v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondaryPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 405
    :cond_6
    iget-boolean v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed0:Z

    if-nez v4, :cond_7

    iget-boolean v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed1:Z

    if-eqz v4, :cond_11

    .line 406
    :cond_7
    iget-object v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 407
    iget-object v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    .line 410
    :cond_8
    iget-boolean v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed0:Z

    if-eqz v4, :cond_9

    goto :goto_0

    :cond_9
    iget-object v1, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    :goto_0
    move v10, v1

    if-eqz v4, :cond_a

    goto :goto_1

    .line 411
    :cond_a
    iget-object v1, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    :goto_1
    move v11, v2

    .line 412
    iget-boolean v1, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed1:Z

    if-eqz v1, :cond_b

    goto :goto_2

    :cond_b
    iget-object v2, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondaryPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    :goto_2
    move v12, v3

    if-eqz v1, :cond_c

    goto :goto_3

    .line 413
    :cond_c
    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondaryPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    :goto_3
    move v13, v0

    .line 415
    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v18

    .line 416
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 417
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 419
    iget-object v2, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 420
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 421
    iget-object v4, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondaryPoint:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 422
    iget v4, v4, Landroid/graphics/PointF;->y:F

    int-to-float v0, v0

    cmpl-float v6, v3, v0

    if-lez v6, :cond_d

    int-to-float v7, v1

    cmpg-float v14, v2, v7

    if-gez v14, :cond_d

    cmpg-float v14, v5, v0

    if-gez v14, :cond_d

    cmpl-float v7, v4, v7

    if-lez v7, :cond_d

    .line 426
    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 427
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    .line 426
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->calculateRotationAngle(IIFFFFZ)F

    move-result v0

    iput v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    goto/16 :goto_4

    :cond_d
    cmpl-float v7, v5, v0

    if-lez v7, :cond_e

    int-to-float v14, v1

    cmpg-float v15, v4, v14

    if-gez v15, :cond_e

    cmpg-float v15, v3, v0

    if-gez v15, :cond_e

    cmpl-float v14, v2, v14

    if-lez v14, :cond_e

    .line 431
    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 432
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v3, v12

    move v4, v13

    move v5, v10

    move v6, v11

    .line 431
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->calculateRotationAngle(IIFFFFZ)F

    move-result v0

    iput v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    goto :goto_4

    :cond_e
    cmpg-float v3, v3, v0

    if-gez v3, :cond_f

    int-to-float v3, v1

    cmpg-float v14, v2, v3

    if-gez v14, :cond_f

    if-lez v7, :cond_f

    cmpl-float v3, v4, v3

    if-lez v3, :cond_f

    .line 436
    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 437
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    .line 436
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->calculateRotationAngle(IIFFFFZ)F

    move-result v0

    iput v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    goto :goto_4

    :cond_f
    cmpg-float v0, v5, v0

    if-gez v0, :cond_10

    int-to-float v0, v1

    cmpg-float v1, v4, v0

    if-gez v1, :cond_10

    if-lez v6, :cond_10

    cmpl-float v0, v2, v0

    if-lez v0, :cond_10

    .line 441
    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 442
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v12

    move v4, v13

    move v5, v10

    move v6, v11

    .line 441
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->calculateRotationAngle(IIFFFFZ)F

    move-result v0

    iput v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    .line 445
    :cond_10
    :goto_4
    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v1, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v14, v1, Landroid/graphics/PointF;->x:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondaryPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v5, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    move/from16 v16, v2

    move/from16 v17, v1

    move/from16 v19, v4

    move/from16 v20, v3

    move-object/from16 v21, v5

    invoke-static/range {v10 .. v21}, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->pinchResize(FFFFFFFFLandroid/graphics/Rect;IILandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 449
    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastDownBounds:Landroid/graphics/Rect;

    iget-object v2, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v3, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLjava/util/function/Consumer;)V

    .line 451
    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0, v9}, Lcom/android/wm/shell/pip/PipBoundsState;->setHasUserResizedPip(Z)V

    nop

    :cond_11
    :goto_5
    return-void
.end method

.method private reloadResources()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    sget v1, Lcom/android/wm/shell/R$dimen;->pip_resize_edge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 172
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    return-void
.end method

.method private resetDragCorners()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 177
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 178
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 179
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 180
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private resetState()V
    .locals 2

    const/4 v0, 0x0

    .line 577
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    const/4 v1, 0x0

    .line 578
    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    .line 579
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUsingPinchToZoom:Z

    .line 580
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 581
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    return-void
.end method

.method private setCtrlType(II)V
    .locals 7

    .line 317
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMovementBoundsSupplier:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 321
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 323
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 324
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v1, v6

    .line 321
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 326
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eq v1, v2, :cond_0

    .line 328
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x4

    .line 329
    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_1

    .line 333
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x4

    .line 334
    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_2

    .line 339
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 v1, v1, 0x8

    .line 340
    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v1, :cond_3

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    if-eq p1, p2, :cond_3

    .line 345
    iget p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/lit8 p1, p1, 0x8

    .line 346
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    :cond_3
    return-void
.end method

.method private updateIsEnabled()V
    .locals 3

    .line 206
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    .line 207
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 210
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    .line 211
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->disposeInputChannel()V

    .line 213
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_1

    .line 215
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayId:I

    const-string v2, "pip-resize"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 223
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to create input event receiver"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipResizeGestureHandler"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAllowGesture="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsAttached="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mEnablePinchResize="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mThresholdCrossed="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getUserResizeBounds()Landroid/graphics/Rect;
    .locals 0

    .line 593
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public hasOngoingGesture()Z
    .locals 1

    .line 247
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUsingPinchToZoom:Z

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

.method invalidateUserResizeBounds()V
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public isUsingPinchToZoom()Z
    .locals 0

    .line 289
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    return p0
.end method

.method public isWithinDragResizeRegion(II)Z
    .locals 5

    .line 265
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->resetDragCorners()V

    .line 270
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 272
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 274
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 276
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 279
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 280
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 281
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 282
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 283
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 285
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method onActivityPinned()V
    .locals 1

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    .line 196
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method onActivityUnpinned()V
    .locals 1

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    .line 201
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 202
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->reloadResources()V

    return-void
.end method

.method public onSystemUiStateChanged(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsSysUiStateValid:Z

    return-void
.end method

.method setUserResizeBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateMaxSize(II)V
    .locals 0

    .line 597
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public updateMinSize(II)V
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public willStartResizeGesture(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 293
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isInValidSysUiState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 303
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->onPinchResize(Landroid/view/MotionEvent;)V

    .line 304
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUsingPinchToZoom:Z

    return v1

    .line 296
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isWithinDragResizeRegion(II)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
