.class public Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;
.super Ljava/lang/Object;
.source "PipDismissTargetHandler.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDismissAreaHeight:I

.field private final mEnableDismissDragToEdge:Z

.field private mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

.field private mMagneticTargetAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMagnetizedPip:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

.field private final mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

.field private final mTargetSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field private mTargetView:Lcom/android/wm/shell/common/DismissCircleView;

.field private mTargetViewContainer:Landroid/view/ViewGroup;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$4xJGjSPuBd825eJxUneYuQLK2io(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->lambda$new$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FMWF5IgLL4rcARLogCWgA298Trg(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->lambda$hideDismissTargetMaybe$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$gZKJBHXsQ1ud9hmW613YzKJzKWw(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->lambda$new$0(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 102
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 104
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 105
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const-string p2, "window"

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 109
    sget p3, Lcom/android/wm/shell/R$bool;->config_pipEnableDismissDragToEdge:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    .line 110
    sget p3, Lcom/android/wm/shell/R$dimen;->floating_dismiss_gradient_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mDismissAreaHeight:I

    .line 112
    new-instance p2, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler-$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;Landroid/content/Context;)V

    invoke-interface {p4, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;)Lcom/android/wm/shell/pip/phone/PipMotionHelper;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;)Lcom/android/wm/shell/pip/PipUiEventLogger;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    return-object p0
.end method

.method private getDismissTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 10

    .line 223
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 226
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mDismissAreaHeight:I

    iget p0, v0, Landroid/graphics/Point;->y:I

    sub-int v6, p0, v4

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/16 v7, 0x7e8

    const/16 v8, 0x118

    const/4 v9, -0x3

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const-string p0, "pip-dismiss-overlay"

    .line 236
    invoke-virtual {v1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    iget p0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p0, p0, 0x10

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 p0, 0x0

    .line 238
    invoke-virtual {v1, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v1
.end method

.method private synthetic lambda$hideDismissTargetMaybe$2()V
    .locals 1

    .line 277
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 7

    .line 126
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v2, p1

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->animateIntoDismissTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;FFZLkotlin/jvm/functions/Function0;)V

    .line 130
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;)V
    .locals 2

    .line 113
    new-instance v0, Lcom/android/wm/shell/common/DismissCircleView;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/DismissCircleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetView:Lcom/android/wm/shell/common/DismissCircleView;

    .line 114
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 115
    sget v1, Lcom/android/wm/shell/R$drawable;->floating_dismiss_gradient_transition:I

    .line 116
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 115
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 118
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetView:Lcom/android/wm/shell/common/DismissCircleView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getMagnetizedPip()Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMagnetizedPip:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 121
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetView:Lcom/android/wm/shell/common/DismissCircleView;

    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->addTarget(Landroid/view/View;I)Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 122
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->updateMagneticTargetSize()V

    .line 124
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMagnetizedPip:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->setAnimateStuckToTarget(Lkotlin/jvm/functions/Function5;)V

    .line 132
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMagnetizedPip:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler$1;-><init>(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->setMagnetListener(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;)V

    .line 166
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetView:Lcom/android/wm/shell/common/DismissCircleView;

    invoke-static {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMagneticTargetAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    return-void
.end method


# virtual methods
.method public cleanUpDismissTarget()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public createOrUpdateDismissTarget()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMagneticTargetAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 206
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->getDismissTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 214
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->getDismissTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 213
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->getDismissTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public hideDismissTargetMaybe()V
    .locals 4

    .line 269
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMagneticTargetAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 275
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 274
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler-$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;)V

    aput-object v3, v1, v2

    .line 277
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 280
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    return-void
.end method

.method public maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMagnetizedPip:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public showDismissTargetMaybe()V
    .locals 4

    .line 245
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->createOrUpdateDismissTarget()V

    .line 251
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetView:Lcom/android/wm/shell/common/DismissCircleView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 254
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMagneticTargetAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 258
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMagneticTargetAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 259
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 262
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_1
    return-void
.end method

.method public updateMagneticTargetSize()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetView:Lcom/android/wm/shell/common/DismissCircleView;

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 187
    sget v1, Lcom/android/wm/shell/R$dimen;->dismiss_circle_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 188
    sget v2, Lcom/android/wm/shell/R$dimen;->floating_dismiss_gradient_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mDismissAreaHeight:I

    .line 189
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x51

    .line 191
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 192
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/wm/shell/R$dimen;->floating_dismiss_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 194
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mTargetView:Lcom/android/wm/shell/common/DismissCircleView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    int-to-float v0, v1

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->setMagneticFieldRadiusPx(I)V

    return-void
.end method
