.class public Lcom/google/android/systemui/smartspace/PageIndicator;
.super Landroid/view/ViewGroup;
.source "PageIndicator.java"


# instance fields
.field private mAnimating:Z

.field private final mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private final mDotLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private final mPageDotWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I

.field private final mQueuedPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTint:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPosition:I

    .line 49
    new-instance v0, Lcom/google/android/systemui/smartspace/PageIndicator$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/PageIndicator$1;-><init>(Lcom/google/android/systemui/smartspace/PageIndicator;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010121

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 70
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 71
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mTint:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getTextColorPrimary(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mTint:Landroid/content/res/ColorStateList;

    .line 76
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 79
    sget p2, Lcom/android/systemui/bcsmartspace/R$dimen;->page_indicator_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPageIndicatorWidth:I

    .line 80
    sget v0, Lcom/android/systemui/bcsmartspace/R$dimen;->page_indicator_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPageIndicatorHeight:I

    .line 81
    sget v1, Lcom/android/systemui/bcsmartspace/R$dimen;->page_indicator_dot_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPageDotWidth:I

    .line 82
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, p2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mDotLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/smartspace/PageIndicator;)Landroid/graphics/drawable/Animatable2$AnimationCallback;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/android/systemui/smartspace/PageIndicator;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/systemui/smartspace/PageIndicator;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/smartspace/PageIndicator;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->setPosition(I)V

    return-void
.end method

.method private animate(II)V
    .locals 6

    shr-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x1

    .line 186
    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/PageIndicator;->setIndex(I)V

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    if-le p1, p2, :cond_2

    goto :goto_1

    :cond_1
    if-ge p1, p2, :cond_2

    :goto_1
    move p1, v4

    goto :goto_2

    :cond_2
    move p1, v3

    .line 190
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 191
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v0, p2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 195
    :cond_3
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 196
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    if-nez v0, :cond_4

    goto :goto_3

    .line 202
    :cond_4
    invoke-virtual {p2}, Landroid/widget/ImageView;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 204
    invoke-direct {p0, v2, p1, v3}, Lcom/google/android/systemui/smartspace/PageIndicator;->getTransition(ZZZ)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/systemui/smartspace/PageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 205
    invoke-direct {p0, v3}, Lcom/google/android/systemui/smartspace/PageIndicator;->getAlpha(Z)F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 207
    invoke-direct {p0, v2, p1, v4}, Lcom/google/android/systemui/smartspace/PageIndicator;->getTransition(ZZZ)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 208
    invoke-direct {p0, v4}, Lcom/google/android/systemui/smartspace/PageIndicator;->getAlpha(Z)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 210
    iput-boolean v4, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mAnimating:Z

    :cond_5
    :goto_3
    return-void
.end method

.method private getAlpha(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p0, 0x3ed70a3d    # 0.42f

    :goto_0
    return p0
.end method

.method private getTransition(ZZZ)I
    .locals 0

    if-eqz p3, :cond_3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 229
    sget p0, Lcom/android/systemui/bcsmartspace/R$drawable;->major_b_a_animation:I

    return p0

    .line 231
    :cond_0
    sget p0, Lcom/android/systemui/bcsmartspace/R$drawable;->major_b_c_animation:I

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 235
    sget p0, Lcom/android/systemui/bcsmartspace/R$drawable;->major_a_b_animation:I

    return p0

    .line 237
    :cond_2
    sget p0, Lcom/android/systemui/bcsmartspace/R$drawable;->major_c_b_animation:I

    return p0

    :cond_3
    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 243
    sget p0, Lcom/android/systemui/bcsmartspace/R$drawable;->minor_b_c_animation:I

    return p0

    .line 245
    :cond_4
    sget p0, Lcom/android/systemui/bcsmartspace/R$drawable;->minor_b_a_animation:I

    return p0

    :cond_5
    if-eqz p2, :cond_6

    .line 249
    sget p0, Lcom/android/systemui/bcsmartspace/R$drawable;->minor_c_b_animation:I

    return p0

    .line 251
    :cond_6
    sget p0, Lcom/android/systemui/bcsmartspace/R$drawable;->minor_a_b_animation:I

    return p0
.end method

.method private playAnimation(Landroid/widget/ImageView;I)V
    .locals 1

    .line 218
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 219
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 221
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 222
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method private setIndex(I)V
    .locals 5

    .line 168
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 170
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x0

    .line 172
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 173
    sget v4, Lcom/android/systemui/bcsmartspace/R$drawable;->major_a_b:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 174
    :goto_1
    invoke-direct {p0, v4}, Lcom/google/android/systemui/smartspace/PageIndicator;->getAlpha(Z)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setPosition(I)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 158
    iget v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->animate(II)V

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x1

    .line 162
    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/PageIndicator;->setIndex(I)V

    .line 164
    :goto_0
    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPosition:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 277
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 282
    iget p4, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPageIndicatorWidth:I

    iget p5, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPageDotWidth:I

    sub-int/2addr p4, p5

    mul-int/2addr p4, p3

    .line 283
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    iget v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPageIndicatorWidth:I

    add-int/2addr v0, p4

    iget v1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p5, p4, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 259
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 264
    :cond_0
    iget p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPageIndicatorWidth:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 266
    iget v1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPageIndicatorHeight:I

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 269
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_1
    iget p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPageIndicatorWidth:I

    iget p2, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPageDotWidth:I

    sub-int/2addr p1, p2

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    .line 272
    iget p2, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setLocation(F)V
    .locals 7

    float-to-int v0, p1

    .line 137
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/bcsmartspace/R$string;->accessibility_smartspace_page:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 137
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    shl-int/lit8 v1, v0, 0x1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    move v5, v6

    :cond_0
    or-int p1, v1, v5

    .line 142
    iget v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPosition:I

    .line 143
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    if-ne p1, v0, :cond_2

    return-void

    .line 147
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mAnimating:Z

    if-eqz v0, :cond_3

    .line 149
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 153
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->setPosition(I)V

    return-void
.end method

.method public setNumPages(I)V
    .locals 3

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 86
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 87
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne p1, v1, :cond_1

    return-void

    .line 90
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mAnimating:Z

    if-eqz v1, :cond_2

    const-string v1, "PageIndicator"

    const-string v2, "setNumPages during animation"

    .line 91
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 94
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_1

    .line 96
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le p1, v1, :cond_4

    .line 97
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 98
    sget v2, Lcom/android/systemui/bcsmartspace/R$drawable;->minor_a_b:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 100
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mDotLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 103
    :cond_4
    iget p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPosition:I

    shr-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->setIndex(I)V

    .line 104
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
