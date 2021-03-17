.class public final Lcom/android/systemui/qs/tileimpl/QSTileViewHorizontal;
.super Lcom/android/systemui/qs/tileimpl/QSTileView;
.source "QSTileViewHorizontal.kt"


# instance fields
.field private divider:Landroid/view/View;

.field private paintDrawable:Landroid/graphics/drawable/PaintDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mDualTargetAllowed:Z

    .line 45
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColorLabelActive:Landroid/content/res/ColorStateList;

    const/4 p1, 0x3

    .line 47
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mMaxLabelLines:I

    return-void
.end method


# virtual methods
.method protected createLabel()V
    .locals 3

    .line 51
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->createLabel()V

    .line 52
    sget v0, Lcom/android/systemui/R$id;->label_group:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x800003

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 57
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_side_label_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const v0, 0x800013

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-void
.end method

.method protected handleExpand(Z)V
    .locals 0

    return-void
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewHorizontal;->paintDrawable:Landroid/graphics/drawable/PaintDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getCircleColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/PaintDrawable;->setTint(I)V

    .line 94
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 95
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewHorizontal;->divider:Landroid/view/View;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    return-void
.end method

.method protected newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 67
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewHorizontal;->paintDrawable:Landroid/graphics/drawable/PaintDrawable;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    const/high16 v2, 0x42480000    # 50.0f

    .line 70
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 71
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewHorizontal;->paintDrawable:Landroid/graphics/drawable/PaintDrawable;

    .line 73
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewHorizontal;->paintDrawable:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;)I

    return-object v0

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewHorizontal;->paintDrawable:Landroid/graphics/drawable/PaintDrawable;

    return-object p0
.end method

.method public setClickable(Z)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_1

    .line 84
    iget-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z

    if-eqz p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    :goto_0
    return-void
.end method

.method protected updateRippleSize()V
    .locals 0

    return-void
.end method
