.class public Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;
.super Lcom/android/systemui/SystemUI;
.source "TvOngoingPrivacyChip.java"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private final mIconMarginStart:I

.field private final mIconSize:I

.field private mIconsContainer:Landroid/widget/LinearLayout;

.field private mIndicatorView:Landroid/view/View;

.field private mLocationIndicatorEnabled:Z

.field private mMicCameraIndicatorFlagEnabled:Z

.field private final mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field private mPrivacyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mViewAndWindowAdded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 2

    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    const-string v0, "TvOngoingPrivacyChip"

    const-string v1, "Privacy chip running without id"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 110
    sget v0, Lcom/android/systemui/R$dimen;->privacy_chip_icon_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconMarginStart:I

    .line 111
    sget v0, Lcom/android/systemui/R$dimen;->privacy_chip_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconSize:I

    .line 113
    invoke-virtual {p2}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mMicCameraIndicatorFlagEnabled:Z

    .line 114
    invoke-virtual {p2}, Lcom/android/systemui/privacy/PrivacyItemController;->getLocationAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mLocationIndicatorEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mViewAndWindowAdded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->animateAppearance()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->onAnimationFinished()V

    return-void
.end method

.method private animateAlphaTo(F)V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 259
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$2;-><init>(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 292
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 295
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 296
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 297
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animateAppearance()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 247
    invoke-direct {p0, v0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->animateAlphaTo(F)V

    return-void
.end method

.method private animateDisappearance()V
    .locals 1

    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, v0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->animateAlphaTo(F)V

    return-void
.end method

.method private hideIndicatorIfNeeded()V
    .locals 2

    .line 166
    iget v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mViewAndWindowAdded:Z

    if-eqz v0, :cond_1

    .line 169
    iput v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->animateDisappearance()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->removeIndicatorView()V

    :cond_2
    :goto_0
    return-void
.end method

.method private onAnimationFinished()V
    .locals 2

    .line 303
    iget v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 304
    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->removeIndicatorView()V

    const/4 v0, 0x0

    .line 307
    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    :cond_1
    :goto_0
    return-void
.end method

.method private removeIndicatorView()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/View;

    .line 320
    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mViewAndWindowAdded:Z

    return-void
.end method

.method private setIcons(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 229
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 p2, 0x0

    .line 230
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 231
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 233
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconSize:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    if-eqz p2, :cond_0

    .line 239
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 240
    iget v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconMarginStart:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 241
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showIndicator()V
    .locals 8

    const/4 v0, 0x1

    .line 181
    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    .line 184
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->tv_ongoing_privacy_chip:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/View;

    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/View;

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;-><init>(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->icons_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconsContainer:Landroid/widget/LinearLayout;

    .line 211
    new-instance v0, Lcom/android/systemui/privacy/PrivacyChipBuilder;

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/privacy/PrivacyChipBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 212
    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyChipBuilder;->generateIcons()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconsContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->setIcons(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 214
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7d6

    const/16 v6, 0x8

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v1, 0x800035

    .line 220
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "MicrophoneCaptureIndicator"

    .line 221
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 224
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateUI()V
    .locals 3

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mMicCameraIndicatorFlagEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mLocationIndicatorEnabled:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    .line 150
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    iget v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Lcom/android/systemui/privacy/PrivacyChipBuilder;

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/privacy/PrivacyChipBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 156
    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyChipBuilder;->generateIcons()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconsContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->setIcons(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 157
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIconsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_1

    .line 152
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->showIndicator()V

    goto :goto_1

    .line 160
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->hideIndicatorIfNeeded()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onFlagLocationChanged(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mLocationIndicatorEnabled:Z

    return-void
.end method

.method public onFlagMicCameraChanged(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mMicCameraIndicatorFlagEnabled:Z

    return-void
.end method

.method public onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItems:Ljava/util/List;

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->updateUI()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    return-void
.end method
