.class public Lcom/google/android/systemui/assist/OpaLayout;
.super Landroid/widget/FrameLayout;
.source "OpaLayout.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/buttons/ButtonInterface;
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# instance fields
.field private final HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private final mAnimatedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationState:I

.field private mBlue:Landroid/view/View;

.field private mBottom:Landroid/view/View;

.field private final mCurrentAnimators:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayTouchFeedback:Z

.field private final mDiamondAnimation:Ljava/lang/Runnable;

.field private mDiamondAnimationDelayed:Z

.field private final mDiamondInterpolator:Landroid/view/animation/Interpolator;

.field private mGestureAnimationSetDuration:J

.field private mGestureAnimatorSet:Landroid/animation/AnimatorSet;

.field private mGestureLineSet:Landroid/animation/AnimatorSet;

.field private mGestureState:I

.field private mGreen:Landroid/view/View;

.field private mHalo:Landroid/widget/ImageView;

.field private mHome:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

.field private mHomeDiameter:I

.field private mIsPressed:Z

.field private mIsVertical:Z

.field private mLeft:Landroid/view/View;

.field private mOpaEnabled:Z

.field private mOpaEnabledNeedsUpdate:Z

.field private final mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mRed:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRetract:Ljava/lang/Runnable;

.field private mRight:Landroid/view/View;

.field private mStartTime:J

.field private mTop:Landroid/view/View;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mWhite:Landroid/widget/ImageView;

.field private mWhiteCutout:Landroid/widget/ImageView;

.field private mWindowVisible:Z

.field private mYellow:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$DEu070lpdkATNDJTv0D3bf-IGzA(Lcom/google/android/systemui/assist/OpaLayout;Landroid/view/View$OnLongClickListener;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/assist/OpaLayout;->lambda$setOnLongClickListener$0(Landroid/view/View$OnLongClickListener;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Q8QBVI4FXMHQDrYPEPDOfgbzoP8(Lcom/google/android/systemui/assist/OpaLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/OpaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/assist/OpaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/assist/OpaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 202
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 121
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3f266666    # 0.65f

    const/4 p3, 0x0

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p4, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 125
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, p2, p3, p2, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 126
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 154
    iput p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    .line 155
    iput p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureState:I

    .line 165
    new-instance p1, Lcom/google/android/systemui/assist/OpaLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/assist/OpaLayout$1;-><init>(Lcom/google/android/systemui/assist/OpaLayout;)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRetract:Ljava/lang/Runnable;

    .line 180
    new-instance p1, Lcom/google/android/systemui/assist/OpaLayout$2;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/assist/OpaLayout$2;-><init>(Lcom/google/android/systemui/assist/OpaLayout;)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 277
    new-instance p1, Lcom/google/android/systemui/assist/OpaLayout-$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/assist/OpaLayout-$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/assist/OpaLayout;)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/assist/OpaLayout;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/OpaLayout;->cancelCurrentAnimation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/assist/OpaLayout;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->startRetractAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/systemui/assist/OpaLayout;)Landroid/util/ArraySet;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/assist/OpaLayout;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->startLineAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/systemui/assist/OpaLayout;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->skipToStartingValue()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/systemui/assist/OpaLayout;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->startCollapseAnimation()V

    return-void
.end method

.method private allowAnimations()Z
    .locals 1

    .line 469
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWindowVisible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private cancelCurrentAnimation(Ljava/lang/String;)V
    .locals 2

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpaLayout.cancelCurrentAnimation: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 879
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 880
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 885
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 886
    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 887
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 888
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 890
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 891
    iput v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    .line 894
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    .line 895
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 896
    iput v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureState:I

    :cond_2
    return-void
.end method

.method private endCurrentAnimation(Ljava/lang/String;)V
    .locals 2

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpaLayout.endCurrentAnimation: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 905
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 906
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 907
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 908
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 909
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 911
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    :cond_1
    const/4 p1, 0x0

    .line 913
    iput p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    return-void
.end method

.method private getCollapseAnimatorSet()Landroid/util/ArraySet;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 643
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 646
    iget-boolean v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsVertical:Z

    if-eqz v1, :cond_0

    .line 647
    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v4, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x0

    const/16 v6, 0x85

    sget-object v7, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_0

    .line 649
    :cond_0
    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v4, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x0

    const/16 v6, 0x85

    sget-object v7, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    .line 646
    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v4, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0xc8

    sget-object v1, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    move-object v2, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 653
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v9, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v11, 0xc8

    move-object v7, p0

    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 657
    iget-boolean v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsVertical:Z

    if-eqz v2, :cond_1

    .line 658
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v9, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x0

    const/16 v11, 0x96

    move-object v7, p0

    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_1

    .line 660
    :cond_1
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v9, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x0

    const/16 v11, 0x96

    move-object v7, p0

    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    .line 657
    :goto_1
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v9, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v11, 0xc8

    move-object v7, p0

    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v9, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 668
    iget-boolean v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsVertical:Z

    if-eqz v2, :cond_2

    .line 669
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v9, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x0

    const/16 v11, 0x85

    move-object v7, p0

    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_2

    .line 671
    :cond_2
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v9, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x0

    const/16 v11, 0x85

    move-object v7, p0

    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    .line 668
    :goto_2
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v9, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v11, 0xc8

    move-object v7, p0

    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v9, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 679
    iget-boolean v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsVertical:Z

    if-eqz v2, :cond_3

    .line 680
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v9, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x0

    const/16 v11, 0x96

    move-object v7, p0

    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_3

    .line 682
    :cond_3
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v9, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x0

    const/16 v11, 0x96

    move-object v7, p0

    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    .line 679
    :goto_3
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 684
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v9, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v11, 0xc8

    move-object v7, p0

    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v9, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x96

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v2, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    .line 692
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    const/16 v11, 0x96

    move-object v7, p0

    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v3

    .line 694
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v4

    .line 696
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v5

    .line 698
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v6

    .line 700
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v13

    .line 702
    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    invoke-direct/range {v7 .. v12}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v7, 0x21

    .line 704
    invoke-virtual {v2, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 705
    invoke-virtual {v3, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 706
    invoke-virtual {v4, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 707
    invoke-virtual {v5, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 708
    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 709
    invoke-virtual {v13, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 710
    invoke-virtual {v1, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 711
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 713
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 717
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 719
    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/assist/OpaLayout$5;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/assist/OpaLayout$5;-><init>(Lcom/google/android/systemui/assist/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getDiamondAnimatorSet()Landroid/util/ArraySet;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 473
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 476
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mTop:Landroid/view/View;

    sget-object v3, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$dimen;->opa_diamond_translation:I

    .line 477
    invoke-static {v4, v7}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v4

    neg-float v4, v4

    add-float/2addr v4, v1

    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    const/16 v5, 0xc8

    move-object v1, p0

    .line 476
    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v9, p0, Lcom/google/android/systemui/assist/OpaLayout;->mTop:Landroid/view/View;

    sget-object v10, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const v11, 0x3f4ccccd    # 0.8f

    const/16 v12, 0xc8

    move-object v8, p0

    move-object v13, v14

    invoke-direct/range {v8 .. v13}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mTop:Landroid/view/View;

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    const v4, 0x3f4ccccd    # 0.8f

    move-object v1, p0

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v9, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBottom:Landroid/view/View;

    sget-object v10, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 486
    invoke-static {v2, v7}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v2

    add-float v11, v1, v2

    iget-object v13, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 485
    invoke-direct/range {v8 .. v13}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBottom:Landroid/view/View;

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBottom:Landroid/view/View;

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v9, p0, Lcom/google/android/systemui/assist/OpaLayout;->mLeft:Landroid/view/View;

    sget-object v10, Landroid/view/View;->X:Landroid/util/Property;

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 495
    invoke-static {v2, v7}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v2

    neg-float v2, v2

    add-float v11, v1, v2

    iget-object v13, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 494
    invoke-direct/range {v8 .. v13}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mLeft:Landroid/view/View;

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mLeft:Landroid/view/View;

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v9, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRight:Landroid/view/View;

    sget-object v10, Landroid/view/View;->X:Landroid/util/Property;

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 504
    invoke-static {v2, v7}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v2

    add-float v11, v1, v2

    iget-object v13, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    .line 503
    invoke-direct/range {v8 .. v13}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRight:Landroid/view/View;

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRight:Landroid/view/View;

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/high16 v4, 0x3f200000    # 0.625f

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const v4, 0x3ef3cf3d

    const/16 v5, 0x64

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/assist/OpaLayout$3;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/assist/OpaLayout$3;-><init>(Lcom/google/android/systemui/assist/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getGestureAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 11

    .line 1087
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureLineSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1089
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureLineSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1090
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureLineSet:Landroid/animation/AnimatorSet;

    return-object p0

    .line 1092
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureLineSet:Landroid/animation/AnimatorSet;

    .line 1094
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    sget-object v1, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/systemui/assist/OpaUtils;->getScaleObjectAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1096
    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-static {v4, v2, v3, v1}, Lcom/google/android/systemui/assist/OpaUtils;->getScaleObjectAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1098
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-static {v5, v2, v3, v1}, Lcom/google/android/systemui/assist/OpaUtils;->getScaleObjectAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x32

    .line 1101
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1102
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1103
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureLineSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1105
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mTop:Landroid/view/View;

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const v4, 0x3f4ccccd    # 0.8f

    const/16 v5, 0xc8

    invoke-static {v2, v4, v5, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getScaleObjectAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1109
    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureLineSet:Landroid/animation/AnimatorSet;

    .line 1111
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1112
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v7, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0x32

    const/16 v10, 0x82

    .line 1113
    invoke-static {v6, v8, v9, v10, v7}, Lcom/google/android/systemui/assist/OpaUtils;->getAlphaObjectAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    .line 1116
    invoke-static {v6, v8, v9, v10, v7}, Lcom/google/android/systemui/assist/OpaUtils;->getAlphaObjectAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    const/16 v10, 0x71

    .line 1119
    invoke-static {v6, v8, v9, v10, v7}, Lcom/google/android/systemui/assist/OpaUtils;->getAlphaObjectAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    .line 1122
    invoke-static {v6, v8, v9, v10, v7}, Lcom/google/android/systemui/assist/OpaUtils;->getAlphaObjectAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBottom:Landroid/view/View;

    .line 1125
    invoke-static {v6, v4, v5, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getScaleObjectAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mLeft:Landroid/view/View;

    .line 1127
    invoke-static {v6, v4, v5, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getScaleObjectAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRight:Landroid/view/View;

    .line 1129
    invoke-static {v6, v4, v5, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getScaleObjectAnimator(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1132
    iget-boolean v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsVertical:Z

    const/16 v3, 0x15e

    if-eqz v2, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_40:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_ry:I

    .line 1135
    invoke-static {v4, v5}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v4

    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    .line 1136
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    .line 1137
    invoke-static {}, Lcom/google/android/systemui/assist/OpaUtils;->getDeltaDiamondPositionLeftY()F

    move-result v7

    add-float/2addr v6, v7

    .line 1134
    invoke-static {v0, v2, v4, v6, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1139
    new-instance v4, Lcom/google/android/systemui/assist/OpaLayout$7;

    invoke-direct {v4, p0}, Lcom/google/android/systemui/assist/OpaLayout$7;-><init>(Lcom/google/android/systemui/assist/OpaLayout;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1147
    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureLineSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/android/systemui/R$dimen;->opa_line_x_trans_bg:I

    .line 1151
    invoke-static {v4, v6}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v4

    iget-object v7, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    .line 1152
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 1153
    invoke-static {v8}, Lcom/google/android/systemui/assist/OpaUtils;->getDeltaDiamondPositionBottomY(Landroid/content/res/Resources;)F

    move-result v8

    add-float/2addr v7, v8

    .line 1150
    invoke-static {v1, v2, v4, v7, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 1158
    invoke-static {v4, v5}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v4

    neg-float v4, v4

    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    .line 1159
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    .line 1160
    invoke-static {}, Lcom/google/android/systemui/assist/OpaUtils;->getDeltaDiamondPositionRightY()F

    move-result v7

    add-float/2addr v5, v7

    .line 1157
    invoke-static {v1, v2, v4, v5, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 1165
    invoke-static {v4, v6}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v4

    neg-float v4, v4

    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    .line 1166
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 1167
    invoke-static {v6}, Lcom/google/android/systemui/assist/OpaUtils;->getDeltaDiamondPositionTopY(Landroid/content/res/Resources;)F

    move-result v6

    add-float/2addr v5, v6

    .line 1164
    invoke-static {v1, v2, v4, v5, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 1171
    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_40:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_ry:I

    .line 1172
    invoke-static {v4, v5}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v4

    neg-float v4, v4

    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    .line 1173
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    .line 1174
    invoke-static {}, Lcom/google/android/systemui/assist/OpaUtils;->getDeltaDiamondPositionTopX()F

    move-result v7

    add-float/2addr v6, v7

    .line 1171
    invoke-static {v1, v2, v4, v6, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1176
    new-instance v4, Lcom/google/android/systemui/assist/OpaLayout$8;

    invoke-direct {v4, p0}, Lcom/google/android/systemui/assist/OpaLayout$8;-><init>(Lcom/google/android/systemui/assist/OpaLayout;)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1184
    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureLineSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 1186
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/android/systemui/R$dimen;->opa_line_x_trans_bg:I

    .line 1190
    invoke-static {v4, v6}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v4

    neg-float v4, v4

    iget-object v7, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    .line 1191
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 1192
    invoke-static {v8}, Lcom/google/android/systemui/assist/OpaUtils;->getDeltaDiamondPositionLeftX(Landroid/content/res/Resources;)F

    move-result v8

    add-float/2addr v7, v8

    .line 1189
    invoke-static {v1, v2, v4, v7, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 1197
    invoke-static {v4, v5}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v4

    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    .line 1198
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    .line 1199
    invoke-static {}, Lcom/google/android/systemui/assist/OpaUtils;->getDeltaDiamondPositionBottomX()F

    move-result v7

    add-float/2addr v5, v7

    .line 1196
    invoke-static {v1, v2, v4, v5, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 1204
    invoke-static {v4, v6}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v4

    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    .line 1205
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 1206
    invoke-static {v6}, Lcom/google/android/systemui/assist/OpaUtils;->getDeltaDiamondPositionRightX(Landroid/content/res/Resources;)F

    move-result v6

    add-float/2addr v5, v6

    .line 1203
    invoke-static {v1, v2, v4, v5, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1209
    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureLineSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private getLineAnimatorSet()Landroid/util/ArraySet;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 744
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 745
    iget-boolean v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsVertical:Z

    if-eqz v1, :cond_0

    .line 747
    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v4, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/systemui/R$dimen;->opa_line_x_trans_ry:I

    .line 748
    invoke-static {v2, v8}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v2

    add-float v5, v1, v2

    const/16 v6, 0xe1

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v2, p0

    move-object v7, v1

    .line 747
    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v11, Landroid/view/View;->X:Landroid/util/Property;

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->opa_line_y_translation:I

    .line 751
    invoke-static {v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    add-float v12, v2, v3

    const/16 v13, 0x85

    move-object v9, p0

    move-object v14, v1

    .line 750
    invoke-direct/range {v9 .. v14}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v11, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_bg:I

    .line 756
    invoke-static {v3, v5}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    add-float v12, v2, v3

    const/16 v13, 0xe1

    .line 755
    invoke-direct/range {v9 .. v14}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v11, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 761
    invoke-static {v3, v8}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    neg-float v3, v3

    add-float v12, v2, v3

    .line 760
    invoke-direct/range {v9 .. v14}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v11, Landroid/view/View;->X:Landroid/util/Property;

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 764
    invoke-static {v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    neg-float v3, v3

    add-float v12, v2, v3

    const/16 v13, 0x85

    .line 763
    invoke-direct/range {v9 .. v14}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v11, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 769
    invoke-static {v3, v5}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    neg-float v3, v3

    add-float v12, v2, v3

    const/16 v13, 0xe1

    .line 768
    invoke-direct/range {v9 .. v14}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 773
    :cond_0
    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v4, Landroid/view/View;->X:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/systemui/R$dimen;->opa_line_x_trans_ry:I

    .line 774
    invoke-static {v2, v8}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v2

    neg-float v2, v2

    add-float v5, v1, v2

    const/16 v6, 0xe1

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v2, p0

    move-object v7, v1

    .line 773
    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 776
    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v11, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->opa_line_y_translation:I

    .line 777
    invoke-static {v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    add-float v12, v2, v3

    const/16 v13, 0x85

    move-object v9, p0

    move-object v14, v1

    .line 776
    invoke-direct/range {v9 .. v14}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 781
    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v11, Landroid/view/View;->X:Landroid/util/Property;

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/systemui/R$dimen;->opa_line_x_trans_bg:I

    .line 782
    invoke-static {v3, v5}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    neg-float v3, v3

    add-float v12, v2, v3

    const/16 v13, 0xe1

    .line 781
    invoke-direct/range {v9 .. v14}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v11, Landroid/view/View;->X:Landroid/util/Property;

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 787
    invoke-static {v3, v8}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    add-float v12, v2, v3

    .line 786
    invoke-direct/range {v9 .. v14}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 789
    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v11, Landroid/view/View;->Y:Landroid/util/Property;

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 790
    invoke-static {v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    neg-float v3, v3

    add-float v12, v2, v3

    const/16 v13, 0x85

    .line 789
    invoke-direct/range {v9 .. v14}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 794
    iget-object v10, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v11, Landroid/view/View;->X:Landroid/util/Property;

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 795
    invoke-static {v3, v5}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    add-float v12, v2, v3

    const/16 v13, 0xe1

    .line 794
    invoke-direct/range {v9 .. v14}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 800
    :goto_0
    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x0

    const/16 v6, 0x53

    iget-object v7, p0, Lcom/google/android/systemui/assist/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 802
    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    iget-object v7, p0, Lcom/google/android/systemui/assist/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    iget-object v7, p0, Lcom/google/android/systemui/assist/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    iget-object v7, p0, Lcom/google/android/systemui/assist/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    iget-object v7, p0, Lcom/google/android/systemui/assist/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    iget-object v7, p0, Lcom/google/android/systemui/assist/OpaLayout;->HOME_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 813
    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/assist/OpaLayout$6;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/assist/OpaLayout$6;-><init>(Lcom/google/android/systemui/assist/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 923
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    :goto_0
    if-ltz p0, :cond_1

    .line 924
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 925
    invoke-virtual {v3}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    .line 927
    invoke-virtual {v3}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v0

    move-object v2, v3

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;FI",
            "Landroid/view/animation/Interpolator;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const/4 p0, 0x1

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p3, p0, v0

    .line 1214
    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p4

    .line 1215
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1216
    invoke-virtual {p0, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private getRetractAnimatorSet()Landroid/util/ArraySet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 554
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 561
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v3, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    sget-object v10, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/16 v5, 0xbe

    move-object v1, p0

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x0

    const/16 v8, 0xbe

    move-object v4, p0

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    sget-object v6, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v5, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0xbe

    move-object v2, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0xbe

    move-object v5, p0

    move-object v10, v1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/systemui/assist/OpaLayout;->getPropertyAnimator(Landroid/view/View;Landroid/util/Property;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/assist/OpaLayout$4;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/assist/OpaLayout$4;-><init>(Lcom/google/android/systemui/assist/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->startDiamondAnimation()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setOnLongClickListener$0(Landroid/view/View$OnLongClickListener;Landroid/view/View;)Z
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHome:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-interface {p1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private setDotsVisible()V
    .locals 4

    .line 934
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 937
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 938
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private skipToStartingValue()V
    .locals 5

    .line 946
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v2, v0, :cond_0

    .line 949
    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 950
    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleY(F)V

    .line 951
    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    const/4 v3, 0x0

    .line 952
    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 953
    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 954
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 958
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 959
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 961
    iput v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    .line 962
    iput v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureState:I

    return-void
.end method

.method private startAll(Landroid/util/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 459
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 460
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 463
    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_1

    .line 464
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private startCollapseAnimation()V
    .locals 2

    .line 448
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->allowAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 450
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->getCollapseAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x3

    .line 451
    iput v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    .line 452
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    goto :goto_0

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method

.method private startDiamondAnimation()V
    .locals 2

    .line 414
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->allowAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 416
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->setDotsVisible()V

    .line 417
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->getDiamondAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x1

    .line 418
    iput v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    .line 419
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    goto :goto_0

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method

.method private startLineAnimation()V
    .locals 2

    .line 437
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->allowAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 439
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->getLineAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x3

    .line 440
    iput v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    .line 441
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method

.method private startRetractAnimation()V
    .locals 2

    .line 426
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->allowAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 428
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->getRetractAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x2

    .line 429
    iput v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    .line 430
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    goto :goto_0

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpaLayout.abortCurrentGesture: animState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 379
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHome:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->abortCurrentGesture()V

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsPressed:Z

    .line 381
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDiamondAnimationDelayed:Z

    .line 382
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 383
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 384
    iget v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 386
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public getOpaEnabled()Z
    .locals 2

    .line 838
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mOpaEnabledNeedsUpdate:Z

    if-eqz v0, :cond_0

    .line 840
    const-class v0, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->dispatchOpaEnabledState()V

    .line 841
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mOpaEnabledNeedsUpdate:Z

    if-eqz v0, :cond_0

    const-string v0, "OpaLayout"

    const-string v1, "mOpaEnabledNeedsUpdate not cleared by AssistManagerGoogle!"

    .line 842
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_0
    iget-boolean p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mOpaEnabled:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 398
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 399
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    const/4 v0, 0x1

    .line 403
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mOpaEnabledNeedsUpdate:Z

    .line 404
    new-instance v0, Lcom/google/android/systemui/assist/OpaLayout-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/OpaLayout-$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/OpaLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 392
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 393
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaLayout;->updateOpaLayout()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 409
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 410
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 212
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    .line 216
    sget v0, Lcom/android/systemui/R$id;->blue:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    .line 217
    sget v0, Lcom/android/systemui/R$id;->red:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    .line 218
    sget v0, Lcom/android/systemui/R$id;->yellow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    .line 219
    sget v0, Lcom/android/systemui/R$id;->green:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    .line 220
    sget v0, Lcom/android/systemui/R$id;->white:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    .line 221
    sget v0, Lcom/android/systemui/R$id;->white_cutout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    .line 222
    sget v0, Lcom/android/systemui/R$id;->halo:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    .line 223
    sget v0, Lcom/android/systemui/R$id;->home_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHome:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    .line 225
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$style;->DualToneLightTheme:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 226
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$style;->DualToneDarkTheme:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 227
    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/R$drawable;->halo:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->opa_disabled_home_diameter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHomeDiameter:I

    .line 236
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 237
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 238
    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 287
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaLayout;->getOpaEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureState:I

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 291
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto/16 :goto_3

    .line 328
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->getQuickStepTouchSlopPx(Landroid/content/Context;)F

    move-result v0

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mTouchDownX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mTouchDownY:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    .line 331
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaLayout;->abortCurrentGesture()V

    goto/16 :goto_3

    .line 338
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDiamondAnimationDelayed:Z

    if-eqz p1, :cond_4

    .line 339
    iget-boolean p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsPressed:Z

    if-eqz p1, :cond_6

    .line 340
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRetract:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 343
    :cond_4
    iget p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    if-ne p1, v3, :cond_5

    const-wide/16 v2, 0x64

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/systemui/assist/OpaLayout;->mStartTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 347
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 348
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 350
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    return v1

    .line 353
    :cond_5
    iget-boolean p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsPressed:Z

    if-eqz p1, :cond_6

    .line 354
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 357
    :cond_6
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsPressed:Z

    goto :goto_3

    .line 295
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mTouchDownX:I

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mTouchDownY:I

    .line 303
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 304
    iget p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    if-ne p1, v2, :cond_8

    const-string p1, "touchDown"

    .line 305
    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/OpaLayout;->endCurrentAnimation(Ljava/lang/String;)V

    move p1, v3

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    move p1, v1

    .line 311
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mStartTime:J

    .line 312
    iput-boolean v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsPressed:Z

    .line 314
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 315
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 319
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDelayTouchFeedback:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_a

    goto :goto_2

    .line 323
    :cond_a
    iput-boolean v3, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDiamondAnimationDelayed:Z

    .line 324
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDiamondAnimation:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p0, p1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 320
    :cond_b
    :goto_2
    iput-boolean v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDiamondAnimationDelayed:Z

    .line 321
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->startDiamondAnimation()V

    :cond_c
    :goto_3
    return v1
.end method

.method public onProgress(FI)V
    .locals 4

    .line 1033
    iget p2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureState:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->allowAnimations()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1036
    :cond_0
    iget p2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    if-ne p2, v0, :cond_1

    .line 1038
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "progress="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/systemui/assist/OpaLayout;->endCurrentAnimation(Ljava/lang/String;)V

    .line 1040
    :cond_1
    iget p2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    if-eqz p2, :cond_2

    return-void

    .line 1044
    :cond_2
    iget-object p2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez p2, :cond_3

    .line 1045
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->getGestureAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1046
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureAnimationSetDuration:J

    .line 1052
    :cond_3
    iget-wide v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureAnimationSetDuration:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-float p2, v0

    mul-float/2addr p2, p1

    float-to-long v0, p2

    .line 1053
    iget-object p2, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 1056
    iput p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureState:I

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 1058
    iput p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureState:I

    :cond_5
    :goto_0
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 1016
    iget v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    if-eqz v0, :cond_0

    return-void

    .line 1021
    :cond_0
    iget v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1022
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 1023
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 1025
    iput v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureState:I

    .line 1026
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->startRetractAnimation()V

    :cond_2
    return-void
.end method

.method public onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    .line 1065
    iget p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mAnimationState:I

    if-eqz p1, :cond_0

    return-void

    .line 1069
    :cond_0
    iget p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    .line 1071
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1072
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    const/4 p1, 0x2

    .line 1073
    iput p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureState:I

    goto :goto_0

    .line 1075
    :cond_1
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .line 253
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 254
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWindowVisible:Z

    if-nez p1, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaLayout;->updateOpaLayout()V

    goto :goto_1

    .line 259
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "winVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/OpaLayout;->cancelCurrentAnimation(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->skipToStartingValue()V

    :goto_1
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    .line 365
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 366
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHome:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 999
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1000
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1002
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHome:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setDarkIntensity(F)V

    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHome:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setDelayTouchFeedback(Z)V

    .line 1008
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mDelayTouchFeedback:Z

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHome:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    new-instance v1, Lcom/google/android/systemui/assist/OpaLayout-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/assist/OpaLayout-$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/OpaLayout;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHome:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setOpaEnabled(Z)V
    .locals 2

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting opa enabled to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpaLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mOpaEnabled:Z

    const/4 p1, 0x0

    .line 851
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mOpaEnabledNeedsUpdate:Z

    .line 852
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaLayout;->updateOpaLayout()V

    return-void
.end method

.method public setVertical(Z)V
    .locals 1

    .line 967
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsVertical:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 970
    iput-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    .line 971
    invoke-direct {p0}, Lcom/google/android/systemui/assist/OpaLayout;->skipToStartingValue()V

    .line 974
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsVertical:Z

    .line 975
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHome:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setVertical(Z)V

    .line 977
    iget-boolean p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mIsVertical:Z

    if-eqz p1, :cond_1

    .line 978
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mTop:Landroid/view/View;

    .line 979
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBottom:Landroid/view/View;

    .line 980
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRight:Landroid/view/View;

    .line 981
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mLeft:Landroid/view/View;

    goto :goto_0

    .line 983
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRed:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mTop:Landroid/view/View;

    .line 984
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mYellow:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBottom:Landroid/view/View;

    .line 985
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mBlue:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mLeft:Landroid/view/View;

    .line 986
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mGreen:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mRight:Landroid/view/View;

    :goto_0
    return-void
.end method

.method public updateOpaLayout()V
    .locals 6

    .line 857
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 858
    iget-boolean v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mOpaEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 859
    :goto_0
    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    iget-object v4, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHalo:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    .line 863
    iget v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mHomeDiameter:I

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    .line 864
    :goto_3
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 865
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 866
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_4

    .line 869
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_4

    :cond_4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 870
    :goto_4
    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 871
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout;->mWhiteCutout:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
