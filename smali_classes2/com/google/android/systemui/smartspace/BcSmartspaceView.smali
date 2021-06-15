.class public Lcom/google/android/systemui/smartspace/BcSmartspaceView;
.super Landroid/widget/FrameLayout;
.source "BcSmartspaceView.java"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/smartspace/BcSmartspaceView$CardViewHolder;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Lcom/google/android/systemui/smartspace/BcSmartspaceView$CardViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateSmartspaceUpdate:Z

.field private mAnimationContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mCurrentTextColor:I

.field private mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field private mDisplayedCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

.field private mDndDescription:Ljava/lang/String;

.field private mDndImage:Landroid/graphics/drawable/Drawable;

.field private mDozeAmount:F

.field private mDozeColor:I

.field private mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mNextAlarmDescription:Ljava/lang/String;

.field private mNextAlarmImage:Landroid/graphics/drawable/Drawable;

.field private final mOnPageChangeListener:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

.field private mPrimaryTextColor:I

.field private mRunningAnimation:Landroid/animation/Animator;

.field private final mSmartspaceCards:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            "Lcom/google/android/systemui/smartspace/BcSmartspaceCard;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmartspaceTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetLastLoggedEvent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public static synthetic $r8$lambda$1-ZrkMYvGNqnRB0rPgtj7h3bMnk(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->lambda$onSmartspaceTargetsUpdated$0(Landroid/os/Parcelable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EZ3eN6eTBl1xk9TEp2KsbczXwPY(Lcom/google/android/systemui/smartspace/BcSmartspaceView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->lambda$onSmartspaceTargetsUpdated$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$woasi1QXxeti5RzWJkD1jWOrg84(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/app/smartspace/SmartspaceTarget;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->lambda$onSmartspaceTargetsUpdated$2(Landroid/app/smartspace/SmartspaceTarget;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceTargets:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceCards:Ljava/util/HashMap;

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mTargetLastLoggedEvent:Ljava/util/HashMap;

    const/4 p1, -0x1

    .line 67
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDozeColor:I

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAnimateSmartspaceUpdate:Z

    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1010036

    invoke-static {p1, p2}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPrimaryTextColor:I

    .line 76
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCurrentTextColor:I

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDozeAmount:F

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDndDescription:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDndImage:Landroid/graphics/drawable/Drawable;

    .line 82
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mNextAlarmDescription:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mNextAlarmImage:Landroid/graphics/drawable/Drawable;

    .line 85
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 87
    new-instance p1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 178
    new-instance p1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mOnPageChangeListener:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->createBaseCard(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->makeSecondaryCard(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/HashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceCards:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Lcom/google/android/systemui/smartspace/PageIndicator;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDisplayedCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDisplayedCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/HashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mTargetLastLoggedEvent:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAnimationContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mRunningAnimation:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAnimateSmartspaceUpdate:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceTargets:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)F
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDozeAmount:F

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCurrentTextColor:I

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDndImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDndDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mNextAlarmImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mNextAlarmDescription:Ljava/lang/String;

    return-object p0
.end method

.method private animateSmartspaceUpdate(Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)V
    .locals 9

    if-eqz p1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mRunningAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/bcsmartspace/R$dimen;->enhanced_smartspace_dismiss_margin:I

    .line 383
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 385
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 389
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    sub-float/2addr v7, v1

    const/4 v8, 0x1

    aput v7, v4, v8

    .line 385
    invoke-static {p1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    .line 394
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    aput v7, v3, v5

    aput v6, v3, v8

    .line 391
    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 399
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 401
    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 427
    iput-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mRunningAnimation:Landroid/animation/Animator;

    .line 428
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createBaseCard(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 457
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card:I

    invoke-static {p0, p1, v0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_date:I

    .line 443
    invoke-static {p0, p1, v0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    :goto_0
    return-object p0
.end method

.method private createDateSmartspaceTarget()Landroid/app/smartspace/SmartspaceTarget;
    .locals 3

    .line 432
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    .line 435
    new-instance v1, Landroid/app/smartspace/SmartspaceTarget$Builder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    .line 436
    invoke-virtual {v1, p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setFeatureType(I)Landroid/app/smartspace/SmartspaceTarget$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->build()Landroid/app/smartspace/SmartspaceTarget;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onSmartspaceTargetsUpdated$0(Landroid/os/Parcelable;)V
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceTargets:Ljava/util/List;

    check-cast p1, Landroid/app/smartspace/SmartspaceTarget;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onSmartspaceTargetsUpdated$1(II)V
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceTarget;

    .line 345
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mTargetLastLoggedEvent:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    sget-object v1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_RECEIVED:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    .line 349
    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->getId()I

    move-result v2

    .line 350
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mTargetLastLoggedEvent:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    invoke-direct {v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;-><init>()V

    .line 353
    invoke-static {v0}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Landroid/app/smartspace/SmartspaceTarget;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setInstanceId(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object v2

    .line 355
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v0

    .line 354
    invoke-static {v0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingCardType(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setLoggingCardType(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object v0

    .line 358
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDozeAmount:F

    .line 357
    invoke-static {v2, p0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    move-result p0

    .line 356
    invoke-virtual {v0, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setDisplaySurface(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p0

    .line 359
    invoke-virtual {p0, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setRank(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p0

    .line 360
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setCardinality(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p0

    .line 361
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->build()Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;

    move-result-object p0

    .line 362
    invoke-static {v1, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceLogger;->log(Lcom/google/android/systemui/smartspace/EventEnum;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSmartspaceTargetsUpdated$2(Landroid/app/smartspace/SmartspaceTarget;)Z
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private makeSecondaryCard(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;
    .locals 1

    .line 512
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    return-object p0
.end method

.method private refreshAll()V
    .locals 2

    const/4 v0, 0x0

    .line 506
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 302
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 303
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mOnPageChangeListener:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 305
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/smartspace/PageIndicator;->setNumPages(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 293
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 295
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->smartspace_card_pager:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 296
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->smartspace_page_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/PageIndicator;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    .line 297
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->animation_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAnimationContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 518
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 520
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 525
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onSmartspaceTargetsUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDisplayedCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceCards:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 327
    :goto_0
    iput-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDisplayedCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    .line 328
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 329
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceCards:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 330
    new-instance v2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V

    invoke-interface {p1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 331
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 332
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceTargets:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->createDateSmartspaceTarget()Landroid/app/smartspace/SmartspaceTarget;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    if-eqz p1, :cond_3

    .line 335
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/systemui/smartspace/PageIndicator;->setNumPages(I)V

    .line 337
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAnimateSmartspaceUpdate:Z

    if-eqz p1, :cond_4

    .line 338
    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->animateSmartspaceUpdate(Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)V

    .line 340
    :cond_4
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 341
    invoke-static {v1, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)V

    .line 342
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 366
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mTargetLastLoggedEvent:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 367
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    .line 280
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 282
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz p0, :cond_1

    .line 283
    new-instance v0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    .line 286
    :goto_0
    invoke-direct {v0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    .line 287
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object p1

    .line 283
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :cond_1
    return-void
.end method

.method public registerDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz v0, :cond_1

    .line 314
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    .line 316
    :cond_1
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 317
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    return-void
.end method

.method public setDnd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDndImage:Landroid/graphics/drawable/Drawable;

    .line 494
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDndDescription:Ljava/lang/String;

    .line 495
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->refreshAll()V

    return-void
.end method

.method public setDozeAmount(F)V
    .locals 2

    .line 474
    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPrimaryTextColor:I

    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDozeColor:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCurrentTextColor:I

    .line 475
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDozeAmount:F

    .line 476
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 478
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->refreshAll()V

    return-void
.end method

.method public setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    .line 488
    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V

    return-void
.end method

.method public setIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;)V
    .locals 0

    .line 483
    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;)V

    return-void
.end method

.method public setNextAlarm(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mNextAlarmImage:Landroid/graphics/drawable/Drawable;

    .line 501
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mNextAlarmDescription:Ljava/lang/String;

    .line 502
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->refreshAll()V

    return-void
.end method

.method public setPrimaryTextColor(I)V
    .locals 0

    .line 466
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPrimaryTextColor:I

    .line 467
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->refreshAll()V

    return-void
.end method
