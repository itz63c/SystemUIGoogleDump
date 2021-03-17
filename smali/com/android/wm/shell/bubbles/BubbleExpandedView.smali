.class public Lcom/android/wm/shell/bubbles/BubbleExpandedView;
.super Landroid/widget/LinearLayout;
.source "BubbleExpandedView.java"


# instance fields
.field private mBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field private mController:Lcom/android/wm/shell/bubbles/BubbleController;

.field private mCornerRadius:F

.field private mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

.field private final mExpandedViewContainer:Landroid/widget/FrameLayout;

.field private mExpandedViewContainerLocation:[I

.field private mExpandedViewPadding:I

.field private mImeVisible:Z

.field private mIsAlphaAnimating:Z

.field private mIsContentVisible:Z

.field private mIsOverflow:Z

.field private mLeftPointer:Landroid/graphics/drawable/ShapeDrawable;

.field private mMinHeight:I

.field private mNeedsNewHeight:Z

.field private mOverflowHeight:I

.field private mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPointerHeight:I

.field private mPointerMargin:I

.field private mPointerView:Landroid/view/View;

.field private mPointerWidth:I

.field private mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field private mRightPointer:Landroid/graphics/drawable/ShapeDrawable;

.field private mSettingsIcon:Lcom/android/wm/shell/common/AlphaOptimizedButton;

.field private mSettingsIconHeight:I

.field private mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

.field private mTaskId:I

.field private mTaskView:Lcom/android/wm/shell/TaskView;

.field private final mTaskViewListener:Lcom/android/wm/shell/TaskView$Listener;

.field private mTopPointer:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method public static synthetic $r8$lambda$GjKB-2dKltj7uNehXCF7aHMMRPg(Lcom/android/wm/shell/bubbles/BubbleExpandedView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->lambda$onFinishInflate$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 234
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 243
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 83
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskId:I

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsContentVisible:Z

    .line 99
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsAlphaAnimating:Z

    const/4 p1, 0x0

    .line 111
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCornerRadius:F

    .line 126
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 128
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskViewListener:Lcom/android/wm/shell/TaskView$Listener;

    .line 244
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateDimensions()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskId:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/wm/shell/bubbles/BubbleExpandedView;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/BubbleStackView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/bubbles/BubbleController;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Lcom/android/wm/shell/TaskView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Landroid/app/PendingIntent;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getBubbleKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)F
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCornerRadius:F

    return p0
.end method

.method private didBackingContentChange(Lcom/android/wm/shell/bubbles/Bubble;)Z
    .locals 3

    .line 593
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    .line 594
    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getBubbleIntent()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eq p0, p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private getBubbleKey()Ljava/lang/String;
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    return-object p0
.end method

.method private getMaxExpandedHeight()I
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainerLocation:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 636
    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 638
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, v0

    .line 640
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr v1, v0

    .line 641
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mSettingsIconHeight:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    sub-int/2addr v1, v0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerMargin:I

    sub-int/2addr v1, p0

    return v1
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 298
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 302
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 303
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 309
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_2

    .line 310
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_2

    .line 311
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float p0, p0, v1

    if-ltz p0, :cond_1

    .line 312
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private updatePointerView()V
    .locals 3

    .line 373
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$color;->bubbles_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$color;->bubbles_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 383
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mLeftPointer:Landroid/graphics/drawable/ShapeDrawable;

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mRightPointer:Landroid/graphics/drawable/ShapeDrawable;

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 387
    :cond_2
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 388
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2

    .line 384
    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 385
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 390
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method applyThemeAttrs()V
    .locals 4

    .line 357
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 360
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCornerRadius:F

    .line 361
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 362
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 364
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 365
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 364
    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCornerRadius:F

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updatePointerView()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1010571
        0x10104e2
    .end array-data
.end method

.method public cleanUpExpandedState()V
    .locals 2

    .line 711
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 713
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 715
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bubbles"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    if-eqz v0, :cond_1

    .line 719
    invoke-virtual {v0}, Lcom/android/wm/shell/TaskView;->release()V

    .line 720
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 721
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "BubbleExpandedView"

    .line 730
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  taskId:               "

    .line 731
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskId:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  stackView:            "

    .line 732
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getManageButtonBoundsOnScreen(Landroid/graphics/Rect;)V
    .locals 0

    .line 699
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method getTaskId()I
    .locals 0

    .line 534
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskId:I

    return p0
.end method

.method getTaskView()Lcom/android/wm/shell/TaskView;
    .locals 0

    .line 530
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    return-object p0
.end method

.method getTaskViewLocationOnScreen()[I
    .locals 1

    .line 442
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz v0, :cond_0

    .line 445
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLocationOnScreen()[I

    move-result-object p0

    return-object p0

    .line 447
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    if-eqz p0, :cond_1

    .line 448
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getLocationOnScreen()[I

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 450
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method initialize(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Z)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 330
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 331
    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    .line 332
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->getPositioner()Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 334
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$layout;->bubble_overflow_container:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    .line 337
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->setBubbleController(Lcom/android/wm/shell/bubbles/BubbleController;)V

    .line 338
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 339
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    .line 340
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 342
    :cond_0
    new-instance p1, Lcom/android/wm/shell/TaskView;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p3}, Lcom/android/wm/shell/bubbles/BubbleController;->getTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/android/wm/shell/TaskView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    .line 343
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskViewListener:Lcom/android/wm/shell/TaskView$Listener;

    invoke-virtual {p1, p2, p3}, Lcom/android/wm/shell/TaskView;->setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/TaskView$Listener;)V

    .line 344
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 345
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 473
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 474
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mImeVisible:Z

    .line 475
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 250
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 252
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 253
    sget v1, Lcom/android/wm/shell/R$id;->pointer_view:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    .line 254
    sget v1, Lcom/android/wm/shell/R$dimen;->bubble_pointer_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    .line 255
    sget v1, Lcom/android/wm/shell/R$dimen;->bubble_pointer_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    .line 257
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/wm/shell/common/TriangleShape;->create(FFZ)Lcom/android/wm/shell/common/TriangleShape;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTopPointer:Landroid/graphics/drawable/ShapeDrawable;

    .line 259
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    int-to-float v3, v3

    invoke-static {v2, v3, v4}, Lcom/android/wm/shell/common/TriangleShape;->createHorizontal(FFZ)Lcom/android/wm/shell/common/TriangleShape;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mLeftPointer:Landroid/graphics/drawable/ShapeDrawable;

    .line 261
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/wm/shell/common/TriangleShape;->createHorizontal(FFZ)Lcom/android/wm/shell/common/TriangleShape;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mRightPointer:Landroid/graphics/drawable/ShapeDrawable;

    .line 264
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTopPointer:Landroid/graphics/drawable/ShapeDrawable;

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

    .line 265
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$dimen;->bubble_manage_button_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mSettingsIconHeight:I

    .line 269
    sget v1, Lcom/android/wm/shell/R$id;->settings_button:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/AlphaOptimizedButton;

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    .line 272
    invoke-virtual {p0, v5}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    .line 274
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleExpandedView$2;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$2;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 280
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 281
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 291
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    .line 295
    sget v1, Lcom/android/wm/shell/R$dimen;->bubble_expanded_view_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewPadding:I

    .line 296
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 297
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x3

    .line 321
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    return-void
.end method

.method setAlphaAnimating(Z)V
    .locals 0

    .line 486
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsAlphaAnimating:Z

    if-nez p1, :cond_0

    .line 490
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsContentVisible:Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    :cond_0
    return-void
.end method

.method setContentVisibility(Z)V
    .locals 1

    .line 517
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsContentVisible:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 521
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 522
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsAlphaAnimating:Z

    if-nez p0, :cond_1

    .line 523
    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method setImeVisible(Z)V
    .locals 0

    .line 412
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mImeVisible:Z

    if-nez p1, :cond_0

    .line 413
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateHeight()V

    :cond_0
    return-void
.end method

.method setManageClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPointerPosition(FFZZ)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 676
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 677
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz p3, :cond_2

    move v3, v0

    goto :goto_2

    .line 678
    :cond_2
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewPadding:I

    .line 679
    :goto_2
    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p3, :cond_4

    .line 683
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr p2, v3

    invoke-virtual {v2, p2}, Landroid/view/View;->setY(F)V

    .line 684
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    if-eqz p4, :cond_3

    iget p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerHeight:I

    neg-int p1, p1

    int-to-float p1, p1

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewPadding:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    :goto_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    .line 686
    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 687
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewPadding:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr p1, v2

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    :goto_4
    if-eqz p3, :cond_6

    if-eqz p4, :cond_5

    .line 689
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mLeftPointer:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mRightPointer:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTopPointer:Landroid/graphics/drawable/ShapeDrawable;

    :goto_5
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mCurrentPointer:Landroid/graphics/drawable/ShapeDrawable;

    .line 690
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updatePointerView()V

    .line 691
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method setSurfaceZOrderedOnTop(Z)V
    .locals 1

    .line 405
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 408
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    return-void
.end method

.method setTaskViewAlpha(F)V
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    if-eqz p0, :cond_0

    .line 500
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method snapshotActivitySurface()Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .locals 4

    .line 421
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 424
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 425
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    .line 426
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    invoke-virtual {v0, v3, p0}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p0

    .line 425
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 427
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 428
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 429
    new-instance v0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    .line 430
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-direct {v0, v2, p0, v1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;Z)V

    return-object v0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    .line 436
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    .line 437
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result p0

    invoke-direct {v2, v1, v1, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 435
    invoke-static {v0, v2, p0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method update(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 6

    .line 544
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    const-string v1, "Bubbles"

    if-nez v0, :cond_0

    .line 545
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stack is null for bubble: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->didBackingContentChange(Lcom/android/wm/shell/bubbles/Bubble;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    .line 549
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 576
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to update entry with different key, new bubble: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " old bubble: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 576
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 550
    :cond_4
    :goto_2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 551
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/wm/shell/R$string;->bubbles_settings_button_description:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 552
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getAppName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 551
    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 553
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleExpandedView$3;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$3;-><init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    if-eqz v0, :cond_6

    .line 567
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getBubbleIntent()Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez p1, :cond_5

    .line 568
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    if-eqz p1, :cond_6

    .line 570
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    .line 571
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    invoke-virtual {p1, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 574
    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    :goto_3
    return-void
.end method

.method updateDimensions()V
    .locals 2

    .line 350
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 351
    sget v1, Lcom/android/wm/shell/R$dimen;->bubble_expanded_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mMinHeight:I

    .line 352
    sget v1, Lcom/android/wm/shell/R$dimen;->bubble_overflow_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowHeight:I

    .line 353
    sget v1, Lcom/android/wm/shell/R$dimen;->bubble_pointer_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mPointerMargin:I

    return-void
.end method

.method updateHeight()V
    .locals 4

    .line 599
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainerLocation:[I

    if-nez v0, :cond_0

    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz v1, :cond_6

    .line 604
    :cond_1
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz v1, :cond_2

    .line 605
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowHeight:I

    int-to-float v0, v0

    goto :goto_0

    .line 606
    :cond_2
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/Bubble;->getDesiredHeight(Landroid/content/Context;)F

    move-result v0

    .line 607
    :goto_0
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mMinHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 608
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getMaxExpandedHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 609
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mMinHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 610
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz v1, :cond_3

    .line 611
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_1

    .line 612
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 613
    :goto_1
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v2, v2

    cmpl-float v2, v2, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    .line 614
    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mImeVisible:Z

    if-nez v2, :cond_6

    float-to-int v0, v0

    .line 617
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 618
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz v0, :cond_5

    .line 619
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 621
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    :goto_3
    iput-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    :cond_6
    return-void
.end method

.method updateObscuredTouchableRegion()V
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    if-eqz p0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/android/wm/shell/TaskView;->onLocationChanged()V

    :cond_0
    return-void
.end method

.method public updateView([I)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mExpandedViewContainerLocation:[I

    .line 660
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    if-eqz p1, :cond_0

    .line 661
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    .line 662
    invoke-virtual {p1}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateHeight()V

    .line 664
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/TaskView;

    invoke-virtual {p1}, Lcom/android/wm/shell/TaskView;->onLocationChanged()V

    .line 666
    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-eqz p1, :cond_1

    .line 667
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->show()V

    :cond_1
    return-void
.end method
