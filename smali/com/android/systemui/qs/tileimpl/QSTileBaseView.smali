.class public Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "QSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;
    }
.end annotation


# instance fields
.field private mAccessibilityClass:Ljava/lang/String;

.field protected final mBg:Landroid/widget/ImageView;

.field private mCircleColor:I

.field private mCollapsedView:Z

.field private final mColorActive:I

.field private final mColorDisabled:I

.field private final mColorInactive:I

.field protected final mHandler:Landroid/os/Handler;

.field protected mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private final mIconFrame:Landroid/widget/FrameLayout;

.field private mLastState:I

.field private mLastStateDescription:Ljava/lang/CharSequence;

.field private final mLocInScreen:[I

.field protected mRipple:Landroid/graphics/drawable/RippleDrawable;

.field protected mShowRippleEffect:Z

.field private mStateDescriptionDeltas:Ljava/lang/CharSequence;

.field private mStrokeWidthActive:F

.field private mStrokeWidthInactive:F

.field protected mTileBackground:Landroid/graphics/drawable/Drawable;

.field private mTileState:Z


# direct methods
.method public static synthetic $r8$lambda$Ka8xoX3CdfcHW_A1g6BZP75bwsE(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->lambda$handleStateChanged$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nK3lUMZn0_NJcMYBzFJI0m5QqHQ(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->lambda$init$2(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nemjgoJevMXSve7NdTo9KdEczpA(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->lambda$init$0(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o4pifwlF6cnQvSxstfiUXp8aT_o(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->lambda$init$1(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 8

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 60
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 82
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLastState:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_quick_tile_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 92
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500be

    .line 94
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthActive:F

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500bf

    .line 96
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthInactive:F

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 98
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 100
    new-instance v3, Landroid/graphics/Path;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040234

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-static {v4}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 103
    new-instance v4, Landroid/graphics/drawable/shapes/PathShape;

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-direct {v4, v3, v5, v5}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 104
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v4, 0x0

    .line 105
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/ShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->qs_tile_icon_background_stroke_width:I

    .line 107
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_0

    .line 109
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->qs_tile_background_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 113
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 114
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 115
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x11

    invoke-direct {v3, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 117
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 120
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p2, v2, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 123
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v1, v2, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 125
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 128
    instance-of v1, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 129
    check-cast p2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 131
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 132
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x1010435

    .line 134
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorActive:I

    const p2, 0x101042a

    .line 136
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    .line 135
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorDisabled:I

    const p2, 0x1010038

    .line 137
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorInactive:I

    .line 139
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 140
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 141
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 142
    iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCollapsedView:Z

    .line 143
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method

.method private synthetic lambda$handleStateChanged$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 248
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 247
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private static synthetic lambda$init$0(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 0

    .line 175
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->click()V

    return-void
.end method

.method private static synthetic lambda$init$1(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 0

    .line 175
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->secondaryClick()V

    return-void
.end method

.method private static synthetic lambda$init$2(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z
    .locals 0

    .line 176
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->longClick()V

    const/4 p0, 0x1

    return p0
.end method

.method private setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 160
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateRippleSize()V

    :cond_0
    return-void
.end method

.method private updateStrokeShapeWidth(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 3

    .line 217
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 222
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    iget p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthActive:F

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_3

    .line 232
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 233
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthActive:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 225
    :cond_2
    iget p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthInactive:F

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_3

    .line 226
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 227
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthInactive:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected animationsEnabled()Z
    .locals 3

    .line 304
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    return v1

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    neg-int p0, p0

    if-lt v0, p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public getBgCircle()Landroid/view/View;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected getCircleColor(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTileBaseView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 317
    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorActive:I

    return p0

    .line 320
    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorDisabled:I

    return p0
.end method

.method public getDetailY()I
    .locals 1

    .line 335
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object p0
.end method

.method public getIconWithBackground()Landroid/view/View;
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 8

    .line 240
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateStrokeShapeWidth(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 241
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getCircleColor(I)I

    move-result v0

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->animationsEnabled()Z

    move-result v1

    .line 243
    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCircleColor:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v2, :cond_1

    if-eqz v1, :cond_0

    new-array v6, v3, [I

    aput v2, v6, v4

    aput v0, v6, v5

    .line 245
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v6, 0x15e

    .line 246
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 247
    new-instance v6, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 253
    :goto_0
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCircleColor:I

    .line 256
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->showRippleEffect:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z

    .line 257
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v0, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V

    .line 258
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 260
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_1

    .line 272
    :cond_3
    instance-of v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v1, :cond_6

    .line 273
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->switch_bar_on:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 267
    :cond_4
    instance-of v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v1, :cond_6

    .line 268
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->switch_bar_off:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 264
    :cond_5
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->tile_unavailable:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_6
    :goto_1
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ", "

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 282
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLastState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    iget v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v2, v1, :cond_7

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLastStateDescription:Ljava/lang/CharSequence;

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 284
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    .line 287
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 288
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLastState:I

    .line 289
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLastStateDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_2

    .line 292
    :cond_8
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 293
    instance-of v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v0, :cond_9

    .line 294
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 295
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-eq v0, p1, :cond_9

    .line 296
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    :cond_9
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 183
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 3

    .line 175
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101045c

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 152
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 153
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 348
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 352
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 355
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 361
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 366
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 368
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/systemui/R$string;->switch_bar_on:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/systemui/R$string;->switch_bar_off:I

    .line 367
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const/4 v0, 0x1

    .line 374
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 375
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 379
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    .line 380
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->accessibility_long_click_tile:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 376
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 189
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 190
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateRippleSize()V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    .line 213
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 329
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    if-eqz p1, :cond_0

    .line 330
    iget-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locInScreen=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", iconView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", tileState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 393
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityTraversalAfter(I)V

    return-object p0
.end method

.method protected updateRippleSize()V
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 169
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 170
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v3, v4, v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    return-void
.end method
