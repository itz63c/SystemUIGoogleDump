.class public Lcom/google/android/systemui/gamedashboard/ShortcutBarView;
.super Landroid/widget/FrameLayout;
.source "ShortcutBarView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/gamedashboard/ShortcutBarView$SingleTapConfirm;,
        Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ButtonOnTouchListener;
    }
.end annotation


# instance fields
.field private mBar:Landroid/view/View;

.field private mCurrentReveal:Landroid/widget/ImageView;

.field private mFpsView:Landroid/widget/TextView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsAttached:Z

.field private mIsDocking:Z

.field private mIsFpsVisible:Z

.field private mIsRecordVisible:Z

.field private mIsScreenshotVisible:Z

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mRecordButton:Landroid/widget/ImageView;

.field private final mRevealButtonSize:F

.field private mRevealContainer:Landroid/view/View;

.field private mRevealLeft:Landroid/widget/ImageView;

.field private mRevealRight:Landroid/widget/ImageView;

.field private mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

.field private mScreenshotButton:Landroid/widget/ImageView;

.field private mSnapBackAnimatorSet:Landroid/animation/AnimatorSet;

.field private mStableInsets:Landroid/graphics/Insets;

.field private final mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mSystemGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInts:[I

.field private final mTouchDown:Landroid/graphics/PointF;

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mViewPositionOnTouchDown:Landroid/graphics/PointF;


# direct methods
.method public static synthetic $r8$lambda$G7Ylz1md8Naz0vpstr5Uibqd_Y8(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$j0ijFyYiP1AeFkRRcD7j7HqGQck(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->updateSystemGestureExcludeRects()V

    return-void
.end method

.method public static synthetic $r8$lambda$rO5_J8GIgIdsS1GQerp7Vp4na7g(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->lambda$init$3(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rcQ7yWlc-7phgCtn0XVjSbD_kXc(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vhLt2XijpZu7JLMTbeBgVWV6G-4(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->lambda$init$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xehN8g-2xZfK6O8MIpgeUnEzKOM(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->lambda$init$2(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 83
    iput p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOrientation:I

    .line 88
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTouchDown:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 90
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTempInts:[I

    .line 92
    new-instance p1, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 94
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mSystemGestureExclusionRects:Ljava/util/List;

    .line 97
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsDocking:Z

    .line 107
    new-instance p1, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 131
    new-instance p1, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 133
    new-instance p1, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 176
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->game_dashboard_shortcut_bar_reveal_button_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonSize:F

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/widget/ImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenshotButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/widget/ImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/widget/TextView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mFpsView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsDocking:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsDocking:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsScreenshotVisible:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsRecordVisible:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsFpsVisible:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mSnapBackAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/widget/ImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mCurrentReveal:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/GestureDetector;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/widget/ImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealRight:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F
    .locals 0

    .line 63
    iget p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonSize:F

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->snapBarBackIfNecessary()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/ScreenRecordController;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setCurrentReveal(Z)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/gamedashboard/ShortcutBarView;
    .locals 2

    .line 166
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->game_dashboard_shortcut_bar:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->init(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Lcom/android/internal/logging/UiEventLogger;)V

    return-object p0
.end method

.method private dock(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonSize:F

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonSize:F

    neg-float v0, v0

    .line 433
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    sget-object v2, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 434
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 435
    new-instance v2, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;ZF)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 460
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private handleScreenRecord()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->getController()Lcom/android/systemui/screenrecord/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenrecord/RecordingController;->addCallback(Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 351
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->handleClick()V

    return-void
.end method

.method private init(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 198
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$SingleTapConfirm;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$SingleTapConfirm;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 199
    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    .line 200
    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 202
    new-instance p3, Lcom/android/internal/util/ScreenshotHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    .line 203
    iget-object p4, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenshotButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ButtonOnTouchListener;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p3, p2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ButtonOnTouchListener;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Landroid/widget/ImageView;

    new-instance p3, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ButtonOnTouchListener;

    new-instance p4, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    invoke-direct {p3, p0, p4}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ButtonOnTouchListener;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 224
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    const/4 p2, 0x1

    .line 226
    invoke-direct {p0, p2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setCurrentReveal(Z)V

    .line 227
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 239
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$init$2(Landroid/net/Uri;)V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$init$3(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;Landroid/view/View;)V
    .locals 8

    .line 205
    iget-object p3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object p3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    invoke-interface {p3, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 207
    new-instance v7, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZILandroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$init$4(Landroid/view/View;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->handleScreenRecord()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 109
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTouchDown:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 116
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTouchDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v1

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 118
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mStableInsets:Landroid/graphics/Insets;

    iget p1, p1, Landroid/graphics/Insets;->left:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 119
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->dock(Z)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mStableInsets:Landroid/graphics/Insets;

    iget p1, p1, Landroid/graphics/Insets;->right:I

    if-nez p1, :cond_4

    .line 121
    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->dock(Z)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->snapBarBackIfNecessary()V

    goto :goto_0

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 112
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p2

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/PointF;->set(FF)V

    :cond_4
    :goto_0
    return v0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->unDock(Z)V

    return-void
.end method

.method private setCurrentReveal(Z)V
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealLeft:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealRight:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 495
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealLeft:Landroid/widget/ImageView;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealRight:Landroid/widget/ImageView;

    :goto_1
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mCurrentReveal:Landroid/widget/ImageView;

    return-void
.end method

.method private snapBarBack(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 415
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mStableInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mStableInsets:Landroid/graphics/Insets;

    iget p1, p1, Landroid/graphics/Insets;->left:I

    :goto_0
    int-to-float p1, p1

    .line 416
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 417
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mStableInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    int-to-float v3, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    int-to-float v0, v2

    goto :goto_1

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mStableInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 420
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mStableInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 422
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    sget-object v2, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 423
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    sget-object v2, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v3, [F

    aput v0, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 424
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mSnapBackAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v5

    aput-object v0, v2, v3

    .line 425
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 426
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mSnapBackAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 427
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mSnapBackAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 428
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mSnapBackAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private snapBarBackIfNecessary()V
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mCurrentReveal:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 409
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 410
    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->snapBarBack(Z)V

    return-void
.end method

.method private unDock(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 464
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonSize:F

    mul-float/2addr v1, v0

    sub-float/2addr p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 465
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    sget-object v1, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 466
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 467
    new-instance v1, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 489
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateSystemGestureExcludeRects()V
    .locals 6

    .line 258
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mSystemGestureExclusionRects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 259
    iget-boolean v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsAttached:Z

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTempInts:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 261
    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTempInts:[I

    aget v3, v2, v1

    const/4 v4, 0x1

    aget v5, v2, v4

    aget v1, v2, v1

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTempInts:[I

    aget v2, v2, v4

    iget-object v4, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    .line 262
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 261
    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 263
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mSystemGestureExclusionRects:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 266
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isFpsVisible()Z
    .locals 0

    .line 393
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsFpsVisible:Z

    return p0
.end method

.method public isRecordVisible()Z
    .locals 0

    .line 379
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsRecordVisible:Z

    return p0
.end method

.method public isScreenshotVisible()Z
    .locals 0

    .line 365
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsScreenshotVisible:Z

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 244
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mStableInsets:Landroid/graphics/Insets;

    .line 246
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 280
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsAttached:Z

    .line 282
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTempInts:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x3

    .line 273
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 274
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTempInts:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTempInts:[I

    aget v1, v1, v3

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v1, p0

    .line 274
    invoke-virtual {p1, v2, v4, v0, v1}, Landroid/graphics/Region;->set(IIII)Z

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 251
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 253
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOrientation:I

    :cond_0
    return-void
.end method

.method public onCountdown(J)V
    .locals 2

    const-wide/16 v0, 0x1f4

    add-long/2addr p1, v0

    const/16 v0, 0x3e8

    .line 294
    invoke-static {p1, p2, v0}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide p1

    long-to-int p1, p1

    .line 295
    sget p2, Lcom/android/systemui/R$drawable;->ic_screen_record:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_screen_record_3:I

    goto :goto_0

    .line 301
    :cond_1
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_screen_record_2:I

    goto :goto_0

    .line 298
    :cond_2
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_screen_record_1:I

    .line 307
    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Landroid/widget/ImageView;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onCountdownEnd()V
    .locals 5

    .line 312
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->ic_screen_record:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 313
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->screenrecord_status_color:I

    .line 314
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 315
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v3, 0x1010039

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x2

    aput v1, v3, v2

    .line 317
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 319
    new-instance v3, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;

    invoke-direct {v3, p0, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0x7d0

    .line 332
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 333
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 334
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v2, -0x1

    .line 335
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 336
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 287
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsAttached:Z

    .line 289
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 182
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 184
    sget v0, Lcom/android/systemui/R$id;->bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    .line 185
    sget v1, Lcom/android/systemui/R$id;->reveal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealContainer:Landroid/view/View;

    .line 186
    sget v1, Lcom/android/systemui/R$id;->reveal_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealLeft:Landroid/widget/ImageView;

    .line 187
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealContainer:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->reveal_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealRight:Landroid/widget/ImageView;

    .line 188
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealLeft:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mCurrentReveal:Landroid/widget/ImageView;

    .line 189
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->screenshot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenshotButton:Landroid/widget/ImageView;

    .line 190
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->record:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Landroid/widget/ImageView;

    .line 191
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->fps:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mFpsView:Landroid/widget/TextView;

    return-void
.end method

.method public onRecordingEnd()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->getController()Lcom/android/systemui/screenrecord/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenrecord/RecordingController;->removeCallback(Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;)V

    .line 343
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Landroid/widget/ImageView;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->ic_screen_record:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFps(F)V
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mFpsView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFpsVisibility(Z)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p1, :cond_0

    .line 384
    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_FPS:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    goto :goto_0

    .line 385
    :cond_0
    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_FPS:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 383
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 386
    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsFpsVisible:Z

    .line 387
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mCurrentReveal:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 388
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mFpsView:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsFpsVisible:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setRecordVisibility(Z)V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p1, :cond_0

    .line 370
    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    goto :goto_0

    .line 371
    :cond_0
    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 369
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 372
    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsRecordVisible:Z

    .line 373
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mCurrentReveal:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 374
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsRecordVisible:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setScreenshotVisibility(Z)V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p1, :cond_0

    .line 356
    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    goto :goto_0

    .line 357
    :cond_0
    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardEvent;

    .line 355
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 358
    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsScreenshotVisible:Z

    .line 359
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mCurrentReveal:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 360
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenshotButton:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsScreenshotVisible:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public shouldBeVisible()Z
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsScreenshotVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsRecordVisible:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsFpsVisible:Z

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
