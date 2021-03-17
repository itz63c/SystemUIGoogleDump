.class Lcom/android/systemui/accessibility/WindowMagnificationController;
.super Ljava/lang/Object;
.source "WindowMagnificationController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;
    }
.end annotation


# static fields
.field private static final A11Y_ACTION_SCALE_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBorderDragSize:I

.field private mBottomDrag:Landroid/view/View;

.field private mBounceEffectAnimationScale:F

.field private final mBounceEffectDuration:I

.field private final mContext:Landroid/content/Context;

.field private final mDisplayId:I

.field private final mDisplaySize:Landroid/graphics/Point;

.field private mDragView:Landroid/view/View;

.field private mDragViewSize:I

.field private final mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mLeftDrag:Landroid/view/View;

.field private mLocale:Ljava/util/Locale;

.field private final mMagnificationFrame:Landroid/graphics/Rect;

.field private final mMagnificationFrameBoundary:Landroid/graphics/Rect;

.field private mMirrorSurface:Landroid/view/SurfaceControl;

.field private mMirrorSurfaceMargin:I

.field private mMirrorSurfaceView:Landroid/view/SurfaceView;

.field private final mMirrorSurfaceViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mMirrorView:Landroid/view/View;

.field private final mMirrorViewBounds:Landroid/graphics/Rect;

.field private mMirrorViewGeometryVsyncCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mMirrorViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mMirrorViewRunnable:Ljava/lang/Runnable;

.field private mNavBarMode:I

.field private mNavGestureHeight:I

.field private mOuterBorderSize:I

.field private mPercentFormat:Ljava/text/NumberFormat;

.field private final mResources:Landroid/content/res/Resources;

.field private mRightDrag:Landroid/view/View;

.field mRotation:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mScale:F

.field private final mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

.field private final mSourceBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTopDrag:Landroid/view/View;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mUpdateStateDescriptionRunnable:Ljava/lang/Runnable;

.field private final mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$8n6hr7Mj0HBKGp97lVRqU6I-5Pw(Lcom/android/systemui/accessibility/WindowMagnificationController;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/accessibility/WindowMagnificationController;->lambda$new$2(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$VCu8Sa12Uofu4c0FLpRPyQMIdB4(Lcom/android/systemui/accessibility/WindowMagnificationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$a5PMyX9zgVKe4eoClviczbD2c8U(Lcom/android/systemui/accessibility/WindowMagnificationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$fIQCWtLiAbi9Vlvwxj3FaHZTPlI(Lcom/android/systemui/accessibility/WindowMagnificationController;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->lambda$new$3(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$t_-5BOzoqh-sLnUhI6ySMDvxV_U(Lcom/android/systemui/accessibility/WindowMagnificationController;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/accessibility/WindowMagnificationController;->lambda$new$1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Landroid/util/Range;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->A11Y_ACTION_SCALE_RANGE:Landroid/util/Range;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Lcom/android/systemui/accessibility/MirrorWindowControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/accessibility/WindowMagnifierCallback;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4}, Landroid/graphics/Point;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplaySize:Landroid/graphics/Point;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameBoundary:Landroid/graphics/Rect;

    .line 141
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mHandler:Landroid/os/Handler;

    .line 143
    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    .line 144
    iput-object p6, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p3

    .line 146
    invoke-virtual {p3, p4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p4

    iput p4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    .line 148
    invoke-virtual {p3}, Landroid/view/Display;->getRotation()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mRotation:I

    const-string/jumbo p3, "window"

    .line 150
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWm:Landroid/view/WindowManager;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    .line 153
    sget p4, Lcom/android/systemui/R$integer;->magnification_default_scale:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    const/high16 p4, 0x10e0000

    .line 154
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBounceEffectDuration:I

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateDimensions()V

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setInitialStartBounds()V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->computeBounceAnimationScale()V

    .line 164
    iput-object p5, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 165
    new-instance p3, Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    invoke-direct {p3, p1, p2, p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    .line 169
    new-instance p1, Lcom/android/systemui/accessibility/WindowMagnificationController-$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationController-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewRunnable:Ljava/lang/Runnable;

    .line 176
    new-instance p1, Lcom/android/systemui/accessibility/WindowMagnificationController-$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 179
    new-instance p1, Lcom/android/systemui/accessibility/WindowMagnificationController-$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 183
    new-instance p1, Lcom/android/systemui/accessibility/WindowMagnificationController-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewGeometryVsyncCallback:Landroid/view/Choreographer$FrameCallback;

    .line 196
    new-instance p1, Lcom/android/systemui/accessibility/WindowMagnificationController-$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mUpdateStateDescriptionRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/accessibility/WindowMagnificationController;F)Ljava/lang/CharSequence;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->formatStateDescription(F)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/accessibility/WindowMagnificationController;)F
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/accessibility/WindowMagnificationController;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    return p0
.end method

.method static synthetic access$500()Landroid/util/Range;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->A11Y_ACTION_SCALE_RANGE:Landroid/util/Range;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/accessibility/WindowMagnificationController;)Lcom/android/systemui/accessibility/WindowMagnifierCallback;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/accessibility/WindowMagnificationController;)Landroid/graphics/Rect;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method private addDragTouchListeners()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->drag_handle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/view/View;

    .line 435
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->left_handle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mLeftDrag:Landroid/view/View;

    .line 436
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->top_handle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopDrag:Landroid/view/View;

    .line 437
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->right_handle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mRightDrag:Landroid/view/View;

    .line 438
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->bottom_handle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomDrag:Landroid/view/View;

    .line 440
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mLeftDrag:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopDrag:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mRightDrag:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomDrag:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private animateBounceEffect()V
    .locals 10

    .line 715
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x3

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    iget v8, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBounceEffectAnimationScale:F

    const/4 v9, 0x1

    aput v8, v5, v9

    aput v7, v5, v1

    .line 716
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v7, v4, v6

    iget v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBounceEffectAnimationScale:F

    aput v5, v4, v9

    aput v7, v4, v1

    .line 717
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v2, v9

    .line 715
    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 718
    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBounceEffectDuration:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 719
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private applyTapExcludeRegion()V
    .locals 2

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->calculateTapExclude()Landroid/graphics/Region;

    move-result-object v0

    .line 380
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object p0

    .line 382
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    .line 383
    invoke-interface {v1, p0, v0}, Landroid/view/IWindowSession;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private calculateSourceBounds(Landroid/graphics/Rect;F)V
    .locals 5

    .line 513
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 514
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 515
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    div-float/2addr v3, p2

    float-to-int v3, v3

    sub-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 516
    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    .line 517
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    div-float/2addr v4, p2

    float-to-int p2, v4

    sub-int/2addr v1, p2

    add-int/2addr v0, v1

    .line 518
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    .line 519
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v0, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private calculateTapExclude()Landroid/graphics/Region;
    .locals 5

    .line 389
    new-instance v0, Landroid/graphics/Region;

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBorderDragSize:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    .line 390
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBorderDragSize:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    .line 391
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBorderDragSize:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    .line 392
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragViewSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBorderDragSize:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    .line 393
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragViewSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBorderDragSize:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    .line 394
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 395
    sget-object p0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-object v0
.end method

.method private computeBounceAnimationScale()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 217
    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mOuterBorderSize:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v0, v1

    div-float/2addr v0, v1

    const v1, 0x3f866666    # 1.05f

    .line 219
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBounceEffectAnimationScale:F

    return-void
.end method

.method private createMirror()V
    .locals 3

    .line 423
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->mirrorDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    .line 424
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceView:Landroid/view/SurfaceView;

    .line 428
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 430
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->modifyWindowMagnification(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private createMirrorWindow()V
    .locals 8

    .line 339
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 340
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 342
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7f7

    const/16 v6, 0x28

    const/4 v7, -0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    .line 348
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 349
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 350
    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, 0x1

    .line 351
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 352
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->magnification_window_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->getAccessibilityWindowTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 355
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$layout;->window_magnifier_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    .line 356
    sget v3, Lcom/android/systemui/R$id;->surface_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceView:Landroid/view/SurfaceView;

    .line 359
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 361
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    const/16 v3, 0x1706

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 367
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 368
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/accessibility/WindowMagnificationController$MirrorWindowA11yDelegate;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationController;Lcom/android/systemui/accessibility/WindowMagnificationController$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 370
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWm:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 373
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 374
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->addDragTouchListeners()V

    return-void
.end method

.method private formatStateDescription(F)Ljava/lang/CharSequence;
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 685
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mLocale:Ljava/util/Locale;

    .line 687
    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mPercentFormat:Ljava/text/NumberFormat;

    .line 689
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mPercentFormat:Ljava/text/NumberFormat;

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAccessibilityWindowTitle()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    const v0, 0x1040113

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDegreeFromRotation(II)I
    .locals 0

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x4

    .line 332
    rem-int/lit8 p2, p2, 0x4

    mul-int/lit8 p2, p2, 0x5a

    return p2
.end method

.method private isWindowVisible()Z
    .locals 0

    .line 673
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/accessibility/WindowMagnifierCallback;->onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->applyTapExcludeRegion()V

    return-void
.end method

.method private synthetic lambda$new$3(J)V
    .locals 3

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isWindowVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->calculateSourceBounds(Landroid/graphics/Rect;F)V

    .line 189
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x0

    .line 189
    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 191
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setGeometry(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 193
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    iget p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSourceBounds:Landroid/graphics/Rect;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/accessibility/WindowMagnifierCallback;->onSourceBoundsChanged(ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 2

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isWindowVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    invoke-direct {p0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->formatStateDescription(F)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private modifyWindowMagnification(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 451
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewGeometryVsyncCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 452
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateMirrorViewLayout()V

    return-void
.end method

.method private onRotate()V
    .locals 6

    .line 295
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 296
    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mRotation:I

    .line 297
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setMagnificationFrameBoundary()V

    .line 299
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mRotation:I

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateNavigationBarDimensions()V

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isWindowVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mRotation:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->getDegreeFromRotation(II)I

    move-result v0

    .line 308
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v0

    .line 309
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    const/16 v2, 0x5a

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    const/16 v2, 0x10e

    if-ne v0, v2, :cond_2

    .line 313
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    .line 320
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 321
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v5, v3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v4

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 322
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 323
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 324
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->moveWindowMagnifier(FF)V

    return-void

    .line 315
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid rotation change. "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowMagnificationController"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setInitialStartBounds()V
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 413
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    .line 414
    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v3

    .line 415
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    add-int v3, v2, v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setMagnificationFrameBoundary()V
    .locals 6

    .line 526
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 528
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v0

    .line 530
    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v4, v1

    div-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    .line 536
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameBoundary:Landroid/graphics/Rect;

    neg-int v3, v0

    neg-int v4, v1

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplaySize:Landroid/graphics/Point;

    iget v5, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    add-int/2addr p0, v1

    invoke-virtual {v2, v3, v4, v5, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private showControls()V
    .locals 0

    return-void
.end method

.method private supportsSwipeUpGesture()Z
    .locals 2

    .line 677
    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mNavBarMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private updateAccessibilityWindowTitleIfNeeded()V
    .locals 2

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isWindowVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 282
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->getAccessibilityWindowTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 283
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWm:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateDimensions()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->magnification_mirror_surface_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    .line 206
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->magnification_border_drag_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBorderDragSize:I

    .line 208
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->magnification_drag_view_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragViewSize:I

    .line 210
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->magnification_outer_border_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mOuterBorderSize:I

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateNavigationBarDimensions()V

    return-void
.end method

.method private updateMagnificationFramePosition(II)Z
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 546
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 548
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameBoundary:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ge p2, v1, :cond_0

    .line 549
    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 550
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p2, v0, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_1

    .line 551
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p2, p1

    .line 552
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 555
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrameBoundary:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ge p2, v1, :cond_2

    .line 556
    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    .line 557
    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, p2, :cond_3

    .line 558
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p2, p1

    .line 559
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 562
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 563
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private updateMirrorViewLayout()V
    .locals 6

    .line 461
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isWindowVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 465
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mNavGestureHeight:I

    sub-int/2addr v1, v2

    .line 466
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    .line 467
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 468
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceMargin:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 469
    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 472
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->supportsSwipeUpGesture()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 473
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 480
    :cond_1
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v4, 0x0

    if-gez v3, :cond_2

    .line 481
    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mOuterBorderSize:I

    neg-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_2
    if-le v3, v0, :cond_3

    sub-int/2addr v3, v0

    .line 483
    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mOuterBorderSize:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v4

    .line 487
    :goto_1
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez v3, :cond_4

    .line 488
    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mOuterBorderSize:I

    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_2
    int-to-float v4, v1

    goto :goto_3

    :cond_4
    if-le v3, v1, :cond_5

    sub-int/2addr v3, v1

    .line 490
    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mOuterBorderSize:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 494
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 496
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWm:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-interface {v0, p0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNavigationBarDimensions()V
    .locals 2

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->supportsSwipeUpGesture()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mNavGestureHeight:I

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    const v1, 0x10501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mResources:Landroid/content/res/Resources;

    const v1, 0x10501bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mNavGestureHeight:I

    return-void
.end method


# virtual methods
.method deleteWindowMagnification()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 240
    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurface:Landroid/view/SurfaceControl;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 244
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 251
    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method enableWindowMagnification(FFF)V
    .locals 2

    .line 597
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    goto :goto_0

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    sub-float/2addr p2, v0

    .line 599
    :goto_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    sub-float v1, p3, v0

    .line 601
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_2

    iget p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    :cond_2
    iput p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    .line 603
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setMagnificationFrameBoundary()V

    float-to-int p1, p2

    float-to-int p2, v1

    .line 604
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateMagnificationFramePosition(II)Z

    .line 605
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isWindowVisible()Z

    move-result p1

    if-nez p1, :cond_3

    .line 606
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->createMirrorWindow()V

    .line 607
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->showControls()V

    goto :goto_2

    .line 609
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->modifyWindowMagnification(Landroid/view/SurfaceControl$Transaction;)V

    :goto_2
    return-void
.end method

.method getCenterX()F
    .locals 1

    .line 659
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isWindowVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    :goto_0
    return p0
.end method

.method getCenterY()F
    .locals 1

    .line 668
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isWindowVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    :goto_0
    return p0
.end method

.method getScale()F
    .locals 1

    .line 650
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isWindowVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    goto :goto_0

    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    :goto_0
    return p0
.end method

.method public move(II)V
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    .line 584
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->moveWindowMagnifier(FF)V

    return-void
.end method

.method moveWindowMagnifier(FF)V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    float-to-int p1, p1

    float-to-int p2, p2

    .line 639
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateMagnificationFramePosition(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 640
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->modifyWindowMagnification(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    return-void
.end method

.method onConfigurationChanged(I)V
    .locals 1

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateDimensions()V

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->computeBounceAnimationScale()V

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isWindowVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->deleteWindowMagnification()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 270
    invoke-virtual {p0, p1, p1, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->enableWindowMagnification(FFF)V

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->onRotate()V

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateAccessibilityWindowTitleIfNeeded()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDrag(FF)Z
    .locals 0

    .line 700
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->moveWindowMagnifier(FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public onFinish(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 288
    iput p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mNavBarMode:I

    .line 289
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateNavigationBarDimensions()V

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateMirrorViewLayout()V

    return-void
.end method

.method public onSingleTap()Z
    .locals 0

    .line 694
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->animateBounceEffect()V

    const/4 p0, 0x1

    return p0
.end method

.method public onStart(FF)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDragView:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mLeftDrag:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mTopDrag:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mRightDrag:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mBottomDrag:Landroid/view/View;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 503
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    invoke-virtual {p0, p2}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method setScale(F)V
    .locals 2

    .line 619
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isWindowVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 622
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->enableWindowMagnification(FFF)V

    .line 623
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mUpdateStateDescriptionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 624
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mUpdateStateDescriptionRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 571
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->createMirror()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
