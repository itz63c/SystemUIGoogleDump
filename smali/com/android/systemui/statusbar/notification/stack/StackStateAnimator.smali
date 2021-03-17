.class public Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"


# static fields
.field public static final ANIMATION_DURATION_HEADS_UP_APPEAR_CLOSED:I


# instance fields
.field private mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field private mAnimationListenerPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private mAnimatorSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentAdditionalDelay:J

.field private mCurrentLength:J

.field private final mGoToFullShadeAppearingTranslation:I

.field private mHeadsUpAppearChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpAppearHeightBottom:I

.field private mHeadsUpDisappearChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mNewAddChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPulsingAppearingTranslation:I

.field private mShadeExpanded:Z

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private mTmpLocation:[I

.field private final mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

.field private mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

.field private mTransientViewsToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7KglFEZum__Mzl-bzw_kCiIWeF0(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->lambda$processAnimationEvents$1(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LYQlcHxC7zGJPqjqyA153AejeYY(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->lambda$processAnimationEvents$0(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 55
    invoke-static {}, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->getFractionUntilOvershoot()F

    move-result v0

    const v1, 0x44098000    # 550.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->ANIMATION_DURATION_HEADS_UP_APPEAR_CLOSED:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    .line 80
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTransientViewsToRemove:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 92
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpLocation:[I

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->go_to_full_shade_appearing_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    .line 100
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->pulsing_notification_appear_translation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mPulsingAppearingTranslation:I

    .line 102
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Ljava/util/HashSet;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Ljava/util/HashSet;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)Ljava/util/Stack;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private adaptDurationWhenGoingToFullShade(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;ZI)V
    .locals 2

    if-eqz p3, :cond_0

    .line 188
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz p2, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p2

    iget p3, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    int-to-double p1, p4

    const-wide p3, 0x3fe6666660000000L    # 0.699999988079071

    .line 190
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    const-wide/16 p2, 0x202

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float/2addr p1, p4

    float-to-long v0, p1

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    :cond_0
    return-void
.end method

.method private applyWithoutAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)Z
    .locals 2

    .line 202
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mShadeExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 205
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 213
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    .line 217
    :cond_3
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method private calculateChildAnimationDelay(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)J
    .locals 10

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v1, :cond_0

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)J

    move-result-wide p0

    return-wide p0

    .line 226
    :cond_0
    iget-wide v0, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->customDelay:J

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    .line 230
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v3, 0x50

    .line 232
    iget v5, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_8

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x20

    .line 247
    :cond_3
    iget v5, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 248
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    if-nez v2, :cond_4

    move v9, v8

    goto :goto_1

    :cond_4
    move v9, v6

    :goto_1
    if-eqz v9, :cond_5

    .line 250
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v2

    goto :goto_2

    .line 251
    :cond_5
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :goto_2
    if-nez v2, :cond_6

    goto :goto_0

    .line 259
    :cond_6
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    if-lt v5, v2, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    sub-int/2addr v5, v2

    .line 264
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v2, v8

    .line 265
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v5, v2

    mul-long/2addr v5, v3

    .line 268
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 234
    :cond_8
    iget v5, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 235
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 236
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    sub-int/2addr v5, v2

    .line 237
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v2, v8

    .line 238
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v7, v2

    int-to-long v5, v7

    mul-long/2addr v5, v3

    .line 241
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_9
    return-wide v0
.end method

.method private calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)J
    .locals 8

    .line 280
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotGoneIndex()I

    move-result p0

    .line 281
    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    int-to-float p1, p1

    int-to-float p0, p0

    cmpl-float v0, p1, p0

    const/high16 v1, 0x42400000    # 48.0f

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    const-wide/16 v4, 0x0

    if-lez v0, :cond_0

    int-to-double p1, p2

    .line 284
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-double p1, p1

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    mul-double/2addr p1, v6

    double-to-long p1, p1

    add-long/2addr v4, p1

    move p1, p0

    :cond_0
    float-to-double p0, p1

    .line 288
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-long p0, p0

    add-long/2addr v4, p0

    return-wide v4
.end method

.method private getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/AnimatorListenerAdapter;

    return-object p0

    .line 303
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;)V

    return-object v0
.end method

.method private initAnimationProperties(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mCurrentLength:J

    iput-wide v2, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 173
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->adaptDurationWhenGoingToFullShade(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;ZI)V

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 176
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 177
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 178
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 179
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 180
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result p1

    if-eq v0, p1, :cond_1

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    .line 182
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->calculateChildAnimationDelay(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)J

    move-result-wide p2

    add-long/2addr v0, p2

    iput-wide v0, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    :cond_1
    return-void
.end method

.method private static synthetic lambda$processAnimationEvents$0(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 399
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->removeTransientView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method private static synthetic lambda$processAnimationEvents$1(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 448
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->removeTransientView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method private onAnimationFinished()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onChildAnimationFinished()V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTransientViewsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 332
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v2

    .line 333
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTransientViewsToRemove:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private processAnimationEvents(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)V"
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 346
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 347
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-nez v1, :cond_2

    .line 351
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 352
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 357
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 361
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 362
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->removeTransientView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    goto :goto_0

    .line 370
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_5

    .line 371
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    .line 372
    instance-of v3, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_4

    .line 374
    move-object v4, v7

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 376
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 378
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 379
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->wasChildInGroupWhenRemoved()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 380
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v3

    if-nez v3, :cond_4

    .line 383
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslationWhenRemoved()F

    move-result v1

    .line 386
    :cond_4
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v3

    .line 389
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 390
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v4

    .line 391
    iget v4, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v3, v5

    add-float/2addr v1, v6

    sub-float/2addr v4, v1

    mul-float/2addr v4, v5

    div-float/2addr v4, v3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 394
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_5
    move v6, v2

    :goto_1
    const-wide/16 v2, 0x1d0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 397
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator-$$ExternalSyntheticLambda1;

    invoke-direct {v10, v7}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    const/4 v11, 0x0

    move-object v1, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J

    goto/16 :goto_5

    :cond_6
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 402
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_11

    .line 403
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 404
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_7
    const/16 v3, 0xa

    if-ne v1, v3, :cond_8

    .line 408
    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 409
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->prepareExpansionChanged()V

    goto/16 :goto_5

    :cond_8
    const/16 v3, 0xb

    const/4 v4, 0x0

    if-ne v1, v3, :cond_a

    .line 413
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    .line 414
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    .line 415
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    if-eqz v1, :cond_9

    .line 416
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    int-to-float v2, v2

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    goto :goto_2

    .line 418
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput v4, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    const-wide/16 v2, 0x0

    .line 419
    sget v1, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->ANIMATION_DURATION_HEADS_UP_APPEAR_CLOSED:I

    int-to-long v4, v1

    const/4 v6, 0x1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performAddAnimation(JJZ)V

    .line 422
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_a
    const/16 v3, 0xc

    const/16 v5, 0xd

    if-eq v1, v3, :cond_b

    if-ne v1, v5, :cond_11

    .line 428
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 432
    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v6, 0x0

    if-ne v3, v5, :cond_c

    const/16 v3, 0x78

    goto :goto_3

    :cond_c
    move v3, v6

    .line 436
    :goto_3
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_d

    .line 438
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v7, v6}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    .line 439
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    .line 440
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 441
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput v4, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 444
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    iput-boolean v2, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 445
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    add-int/lit8 v8, v3, 0x78

    int-to-long v8, v8

    iput-wide v8, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v8, 0x12c

    .line 446
    iput-wide v8, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 447
    invoke-virtual {v1, v7, v5}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 448
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator-$$ExternalSyntheticLambda0;

    invoke-direct {v1, v7}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    :cond_d
    move-object v9, v1

    .line 452
    instance-of v1, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_f

    .line 453
    move-object v1, v7

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 454
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDismissed()Z

    move-result v5

    xor-int/2addr v2, v5

    .line 457
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    .line 458
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v5

    .line 459
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getCenteredIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 460
    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_e

    move-object v5, v1

    .line 463
    :cond_e
    invoke-virtual {v5}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpLocation:[I

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 465
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpLocation:[I

    aget v1, v1, v6

    int-to-float v1, v1

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v4

    sub-float/2addr v1, v4

    .line 466
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationX(Landroid/view/View;)F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 467
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpLocation:[I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 468
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTmpLocation:[I

    aget v4, v4, v6

    int-to-float v4, v4

    sub-float/2addr v1, v4

    move v8, v1

    goto :goto_4

    :cond_f
    move v8, v4

    :goto_4
    if-eqz v2, :cond_10

    const-wide/16 v4, 0x1a4

    int-to-long v10, v3

    const/4 v6, 0x0

    const/4 v12, 0x1

    .line 479
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v13

    move-object v1, v7

    move-wide v2, v4

    move-wide v4, v10

    move v7, v12

    move-object v10, v13

    .line 476
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J

    move-result-wide v1

    .line 480
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-wide v4, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    add-long/2addr v4, v1

    iput-wide v4, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    goto :goto_5

    :cond_10
    if-eqz v9, :cond_11

    .line 482
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 485
    :cond_11
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public static removeTransientView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 1

    .line 490
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateOverScrollToAmount(FZZ)V
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    .line 501
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    .line 502
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x168

    .line 504
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 505
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$3;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;ZZ)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 514
    sget-object p3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 515
    new-instance p3, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$4;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$4;-><init>(Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;Z)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 525
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p2, :cond_1

    .line 527
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 529
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    return-void
.end method

.method public cancelOverScrollAnimators(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 534
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    if-eqz p0, :cond_1

    .line 536
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setHeadsUpAppearHeightBottom(I)V
    .locals 0

    .line 541
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    return-void
.end method

.method public setShadeExpanded(Z)V
    .locals 0

    .line 545
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mShadeExpanded:Z

    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-void
.end method

.method public startAnimationForEvents(Ljava/util/ArrayList;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;J)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->processAnimationEvents(Ljava/util/ArrayList;)V

    .line 138
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->applyCombination(Ljava/util/ArrayList;)V

    .line 140
    iput-wide p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    .line 141
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->combineLength(Ljava/util/ArrayList;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mCurrentLength:J

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p2, p1, :cond_3

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 147
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 149
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->applyWithoutAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    if-ge p3, v2, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 156
    :cond_1
    invoke-direct {p0, v0, v1, p3}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->initAnimationProperties(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;I)V

    .line 157
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->onAnimationFinished()V

    .line 163
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 164
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 165
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 166
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
