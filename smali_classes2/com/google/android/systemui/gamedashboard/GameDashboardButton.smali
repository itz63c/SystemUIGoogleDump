.class public Lcom/google/android/systemui/gamedashboard/GameDashboardButton;
.super Landroid/widget/ImageView;
.source "GameDashboardButton.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mBackgroundColorFilter:Landroid/graphics/BlendModeColorFilter;

.field private final mBackgroundColorFilterToggled:Landroid/graphics/BlendModeColorFilter;

.field private final mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final mDrawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mDrawableColorFilterToggled:Landroid/graphics/PorterDuffColorFilter;

.field private mToggled:Z


# direct methods
.method public static synthetic $r8$lambda$8ck3saAVDak31zKD6ttpqLzfR2c(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->lambda$refresh$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$adkb1ofPDCjilo_OXLt9Xm4VCCs(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->lambda$setOnClickListener$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x1010435

    .line 37
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    const v0, 0x112002c

    .line 39
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x1010036

    .line 41
    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x1010039

    .line 43
    invoke-static {p1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    .line 46
    sget v3, Lcom/android/systemui/R$drawable;->rounded_rectangle_8dp:I

    .line 47
    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 49
    new-instance v3, Landroid/graphics/BlendModeColorFilter;

    sget-object v4, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {v3, v0, v4}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    iput-object v3, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 50
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 51
    new-instance v0, Landroid/graphics/BlendModeColorFilter;

    sget-object v3, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {v0, p2, v3}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundColorFilterToggled:Landroid/graphics/BlendModeColorFilter;

    .line 52
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mDrawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 54
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mDrawableColorFilterToggled:Landroid/graphics/PorterDuffColorFilter;

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$refresh$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method

.method private synthetic lambda$setOnClickListener$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->toggle()V

    return-void
.end method

.method private refresh(Z)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 97
    iget-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundColorFilterToggled:Landroid/graphics/BlendModeColorFilter;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 96
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 99
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    const v0, 0x3eb851ec    # 0.36f

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    if-eqz p1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    .line 105
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mAnimator:Landroid/animation/ValueAnimator;

    .line 106
    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 111
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 112
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 114
    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 116
    :goto_2
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->refreshDrawable()V

    return-void
.end method

.method private refreshDrawable()V
    .locals 2

    .line 120
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mDrawableColorFilterToggled:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mDrawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method private toggle()V
    .locals 2

    .line 92
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setToggled(ZZ)V

    return-void
.end method


# virtual methods
.method public isToggled()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 61
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->refresh(Z)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->refreshDrawable()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 67
    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setToggled(ZZ)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    .line 84
    invoke-direct {p0, p2}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->refresh(Z)V

    return-void
.end method
