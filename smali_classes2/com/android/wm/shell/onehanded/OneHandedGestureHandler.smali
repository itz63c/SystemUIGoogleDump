.class public Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;
.super Ljava/lang/Object;
.source "OneHandedGestureHandler.java"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;,
        Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$EventReceiver;
    }
.end annotation


# instance fields
.field private mAllowGesture:Z

.field private final mDownPos:Landroid/graphics/PointF;

.field private final mDragDistThreshold:F

.field mGestureEventCallback:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;

.field private mGestureRegion:Landroid/graphics/Rect;

.field mInputEventReceiver:Landroid/view/InputEventReceiver;

.field mInputMonitor:Landroid/view/InputMonitor;

.field private mIsEnabled:Z

.field private mIsStopGesture:Z

.field private mIsThreeButtonModeEnabled:Z

.field private final mLastPos:Landroid/graphics/PointF;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mNavGestureHeight:I

.field private mPassedSlop:Z

.field private mRotation:I

.field private final mSquaredSlop:F

.field private final mStartDragPos:Landroid/graphics/PointF;


# direct methods
.method public static synthetic $r8$lambda$jGDgSKUBdL6cugyireMz5_qkVS8(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->lambda$updateIsEnabled$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Landroid/view/ViewConfiguration;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mDownPos:Landroid/graphics/PointF;

    .line 58
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mLastPos:Landroid/graphics/PointF;

    .line 59
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mStartDragPos:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mRotation:I

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mGestureRegion:Landroid/graphics/Rect;

    .line 92
    iput-object p4, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/android/wm/shell/R$dimen;->gestures_onehanded_drag_threshold:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mDragDistThreshold:F

    .line 96
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p1

    .line 97
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mSquaredSlop:F

    .line 98
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 99
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;Landroid/view/InputEvent;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private clearState()V
    .locals 1

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mPassedSlop:Z

    .line 187
    iput-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mIsStopGesture:Z

    return-void
.end method

.method private disposeInputChannel()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 193
    iput-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 198
    iput-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private getNavBarSize(Lcom/android/wm/shell/common/DisplayLayout;)I
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->isGestureAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->navBarFrameHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGestureAvailable()Z
    .locals 1

    .line 260
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mRotation:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

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

.method private isValidExitAngle(FF)Z
    .locals 2

    float-to-double v0, p2

    float-to-double p0, p1

    .line 269
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x41f00000    # 30.0f

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    const/high16 p1, 0x43160000    # 150.0f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidStartAngle(FF)Z
    .locals 2

    float-to-double v0, p2

    float-to-double p0, p1

    .line 264
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, -0x3cea0000    # -150.0f

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    const/high16 p1, -0x3e100000    # -30.0f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWithinTouchRegion(FF)Z
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mGestureRegion:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateIsEnabled$0()V
    .locals 3

    .line 218
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$EventReceiver;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 219
    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$EventReceiver;-><init>(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    return-void
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 228
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 229
    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->isWithinTouchRegion(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->isGestureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mAllowGesture:Z

    if-eqz v1, :cond_9

    .line 141
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 142
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_2

    .line 144
    :cond_1
    iget-boolean v2, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mAllowGesture:Z

    if-eqz v2, :cond_9

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_2

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->clearState()V

    goto/16 :goto_2

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 148
    iget-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mPassedSlop:Z

    if-nez p1, :cond_5

    .line 149
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->squaredHypot(FF)F

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mSquaredSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    .line 151
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mStartDragPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 152
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->isValidStartAngle(FF)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    .line 154
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->isValidExitAngle(FF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 156
    :cond_4
    iput-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mPassedSlop:Z

    .line 157
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    goto :goto_2

    .line 161
    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v0, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p1, v2

    .line 163
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mDragDistThreshold:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    .line 164
    iput-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mIsStopGesture:Z

    goto :goto_2

    .line 169
    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mPassedSlop:Z

    if-eqz p1, :cond_7

    .line 170
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mGestureEventCallback:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;

    invoke-interface {p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;->onStart()V

    goto :goto_1

    .line 171
    :cond_7
    iget-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mIsStopGesture:Z

    if-eqz p1, :cond_8

    .line 172
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mGestureEventCallback:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;

    invoke-interface {p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;->onStop()V

    .line 174
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->clearState()V

    :cond_9
    :goto_2
    return-void
.end method

.method private squaredHypot(FF)F
    .locals 0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private updateIsEnabled()V
    .locals 3

    .line 211
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->disposeInputChannel()V

    .line 213
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mIsThreeButtonModeEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->isGestureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "onehanded-gesture-offset"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 222
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to create input event receiver"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "OneHandedGestureHandler"

    .line 279
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mAllowGesture="

    .line 280
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mAllowGesture:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mIsEnabled="

    .line 282
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mGestureRegion="

    .line 284
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mGestureRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mNavGestureHeight="

    .line 286
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mNavGestureHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mIsThreeButtonModeEnabled="

    .line 288
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mIsThreeButtonModeEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mRotation="

    .line 290
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mRotation:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 5

    .line 130
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->getNavBarSize(Lcom/android/wm/shell/common/DisplayLayout;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mNavGestureHeight:I

    .line 131
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mGestureRegion:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mNavGestureHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v2

    .line 132
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v3

    const/4 v4, 0x0

    .line 131
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 133
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mRotation:I

    return-void
.end method

.method public onGestureEnabled(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mIsEnabled:Z

    .line 110
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onRotateDisplay(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 4

    .line 239
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mRotation:I

    .line 240
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->getNavBarSize(Lcom/android/wm/shell/common/DisplayLayout;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mNavGestureHeight:I

    .line 241
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mGestureRegion:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mNavGestureHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v2

    .line 242
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p1

    const/4 v3, 0x0

    .line 241
    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 243
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method onThreeButtonModeEnabled(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mIsThreeButtonModeEnabled:Z

    .line 115
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public setGestureEventListener(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedGestureHandler;->mGestureEventCallback:Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;

    return-void
.end method
