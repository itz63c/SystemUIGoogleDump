.class public Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "QSTileViewImpl.kt"

# interfaces
.implements Lcom/android/systemui/qs/tileimpl/HeightOverrideable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$Companion;


# instance fields
.field private final _icon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private accessibilityClass:Ljava/lang/String;

.field private chevronView:Landroid/widget/ImageView;

.field private final collapsed:Z

.field private final colorActive:I

.field private colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final colorInactive:I

.field private final colorLabelActive:I

.field private final colorLabelInactive:I

.field private final colorLabelUnavailable:I

.field private final colorUnavailable:I

.field private customDrawableView:Landroid/widget/ImageView;

.field private heightOverride:I

.field private label:Landroid/widget/TextView;

.field private labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

.field private lastState:I

.field private lastStateDescription:Ljava/lang/CharSequence;

.field private final locInScreen:[I

.field private paintColor:I

.field private ripple:Landroid/graphics/drawable/RippleDrawable;

.field protected secondaryLabel:Landroid/widget/TextView;

.field private showRippleEffect:Z

.field protected sideView:Landroid/view/ViewGroup;

.field private final singleAnimator:Landroid/animation/ValueAnimator;

.field private stateDescriptionDeltas:Ljava/lang/CharSequence;

.field private tileState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->Companion:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_icon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 55
    iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->collapsed:Z

    const/4 p3, -0x1

    .line 66
    iput p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->heightOverride:I

    const v0, 0x1120023

    .line 68
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorActive:I

    .line 70
    sget v0, Lcom/android/systemui/R$attr;->offStateColor:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorInactive:I

    const v0, 0x1010031

    .line 72
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorUnavailable:I

    const v0, 0x1010039

    .line 75
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelActive:I

    const v0, 0x1010036

    .line 77
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelInactive:I

    const v0, 0x1010212

    .line 79
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelUnavailable:I

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    .line 93
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v1, 0x15e

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 95
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$singleAnimator$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$singleAnimator$1$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 105
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 93
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    .line 111
    iput p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 113
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    .line 116
    invoke-static {}, Landroid/widget/LinearLayout;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x800013

    .line 118
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 119
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 121
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 122
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-direct {p0, p3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setColor(I)V

    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$dimen;->qs_tile_padding:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 127
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$dimen;->qs_tile_start_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 128
    invoke-virtual {p0, p3, p1, p1, p1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 130
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$dimen;->qs_icon_size:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 131
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createAndAddLabels()V

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createAndAddSideView()V

    return-void
.end method

.method public static final synthetic access$setAllColors(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;IIII)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setAllColors(IIII)V

    return-void
.end method

.method private final createAndAddLabels()V
    .locals 4

    .line 177
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 178
    sget v1, Lcom/android/systemui/R$layout;->qs_tile_label:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.systemui.qs.tileimpl.IgnorableChildLinearLayout"

    .line 177
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 179
    sget v1, Lcom/android/systemui/R$id;->tile_label:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "labelContainer.requireViewById(R.id.tile_label)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    const/4 v1, 0x0

    const-string v2, "labelContainer"

    if-eqz v0, :cond_3

    sget v3, Lcom/android/systemui/R$id;->app_label:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "labelContainer.requireViewById(R.id.app_label)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setSecondaryLabel(Landroid/widget/TextView;)V

    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->collapsed:Z

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->setIgnoreLastView(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 185
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setLabelColor(I)V

    .line 186
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setSecondaryLabelColor(I)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final createAndAddSideView()V
    .locals 3

    .line 191
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 192
    sget v1, Lcom/android/systemui/R$layout;->qs_tile_side_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 191
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setSideView(Landroid/view/ViewGroup;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->customDrawable:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "sideView.requireViewById(R.id.customDrawable)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->chevron:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "sideView.requireViewById(R.id.chevron)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    const/4 v0, 0x2

    .line 195
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getChevronColorForState(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setChevronColor(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final getBackgroundColorForState(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 516
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Invalid state "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTileViewImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .line 512
    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorActive:I

    goto :goto_0

    .line 513
    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorInactive:I

    goto :goto_0

    .line 514
    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorUnavailable:I

    :goto_0
    return p0
.end method

.method private final getChevronColorForState(I)I
    .locals 0

    .line 545
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(I)I

    move-result p0

    return p0
.end method

.method private final getLabelColorForState(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 528
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Invalid state "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTileViewImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .line 524
    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelActive:I

    goto :goto_0

    .line 525
    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelInactive:I

    goto :goto_0

    .line 526
    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelUnavailable:I

    :goto_0
    return p0
.end method

.method private final getSecondaryLabelColorForState(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 539
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Invalid state "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTileViewImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .line 536
    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelActive:I

    goto :goto_0

    .line 537
    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelUnavailable:I

    :goto_0
    return p0
.end method

.method private final getStateText(Lcom/android/systemui/plugins/qs/QSTile$State;)Ljava/lang/String;
    .locals 1

    .line 481
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->tile_disabled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "{\n            context.getString(R.string.tile_disabled)\n        }"

    .line 481
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 483
    :cond_0
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_1

    .line 484
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->tile_unavailable:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "{\n            context.getString(R.string.tile_unavailable)\n        }"

    .line 483
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 485
    :cond_1
    instance-of p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    if-ne v0, p1, :cond_2

    .line 487
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->switch_bar_off:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->switch_bar_on:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string/jumbo p1, "{\n            if (state.state == Tile.STATE_INACTIVE) {\n                context.getString(R.string.switch_bar_off)\n            } else {\n                context.getString(R.string.switch_bar_on)\n            }\n        }"

    .line 485
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private final init(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 239
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private final loadSideViewDrawableIfNecessary(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 6

    .line 465
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->sideViewCustomDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const-string v2, "chevronView"

    const/16 v3, 0x8

    const-string v4, "customDrawableView"

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 466
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 467
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 466
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 469
    :cond_3
    instance-of v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->forceExpandIcon:Z

    if-eqz p1, :cond_4

    goto :goto_0

    .line 474
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 475
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 474
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 470
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 471
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 471
    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 470
    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method

.method private final setAllColors(IIII)V
    .locals 0

    .line 441
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setColor(I)V

    .line 442
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setLabelColor(I)V

    .line 443
    invoke-direct {p0, p3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setSecondaryLabelColor(I)V

    .line 444
    invoke-direct {p0, p4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setChevronColor(I)V

    return-void
.end method

.method private final setChevronColor(I)V
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    const-string p0, "chevronView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setColor(I)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 449
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->paintColor:I

    return-void

    :cond_0
    const-string p0, "colorBackgroundDrawable"

    .line 448
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setLabelColor(I)V
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const-string p0, "label"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setSecondaryLabelColor(I)V
    .locals 0

    .line 457
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected animationsEnabled()Z
    .locals 3

    .line 500
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 503
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    return v1

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    aget v0, v0, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    neg-int p0, p0

    if-lt v0, p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public final createTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 200
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->qs_tile_background:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.RippleDrawable"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->ripple:Landroid/graphics/drawable/RippleDrawable;

    .line 201
    sget v1, Lcom/android/systemui/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "ripple.findDrawableByLayerId(R.id.background)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "ripple"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getDetailY()I
    .locals 1

    .line 250
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public getHeightOverride()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->heightOverride:I

    return p0
.end method

.method public getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object p0
.end method

.method public getIconWithBackground()Landroid/view/View;
    .locals 0

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object p0

    return-object p0
.end method

.method public getLabelContainer()Landroid/view/View;
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "labelContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getSecondaryIcon()Landroid/view/View;
    .locals 0

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getSecondaryLabel()Landroid/view/View;
    .locals 0

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method protected final getSecondaryLabel()Landroid/widget/TextView;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "secondaryLabel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method protected final getSideView()Landroid/view/ViewGroup;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->sideView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "sideView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 9

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->animationsEnabled()Z

    move-result v0

    .line 336
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->showRippleEffect:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    .line 337
    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClickable(Z)V

    .line 338
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 340
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getStateText(Lcom/android/systemui/plugins/qs/QSTile$State;)Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 346
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 351
    :cond_1
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ", "

    .line 352
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 354
    iget v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v5, v4, :cond_2

    .line 355
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastStateDescription:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 356
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    .line 360
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastStateDescription:Ljava/lang/CharSequence;

    .line 363
    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v4, 0x0

    if-nez v1, :cond_3

    move-object v1, v4

    goto :goto_1

    .line 366
    :cond_3
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 363
    :goto_1
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    .line 369
    instance-of v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v1, :cond_4

    .line 370
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 371
    iget-boolean v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    if-eq v5, v1, :cond_4

    .line 372
    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    .line 378
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    const-string v5, "label"

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 379
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 381
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v1

    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v1

    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x8

    goto :goto_3

    :cond_7
    move v6, v3

    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    :cond_8
    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    if-eq v1, v6, :cond_e

    .line 392
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    if-eqz v0, :cond_d

    .line 394
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x2

    new-array v7, v6, [I

    .line 397
    iget v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->paintColor:I

    aput v8, v7, v3

    .line 398
    iget v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(I)I

    move-result v8

    aput v8, v7, v2

    const-string v8, "background"

    .line 395
    invoke-static {v8, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v1, v3

    new-array v7, v6, [I

    .line 402
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v8

    aput v8, v7, v3

    .line 403
    iget v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(I)I

    move-result v8

    aput v8, v7, v2

    .line 400
    invoke-static {v5, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v1, v2

    new-array v7, v6, [I

    .line 407
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v8

    aput v8, v7, v3

    .line 408
    iget v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(I)I

    move-result v8

    aput v8, v7, v2

    const-string v8, "secondaryLabel"

    .line 405
    invoke-static {v8, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v7, 0x3

    new-array v6, v6, [I

    .line 412
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v8

    if-nez v8, :cond_9

    move v8, v3

    goto :goto_4

    :cond_9
    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    :goto_4
    aput v8, v6, v3

    .line 413
    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getChevronColorForState(I)I

    move-result v3

    aput v3, v6, v2

    const-string v3, "chevron"

    .line 410
    invoke-static {v3, v6}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v7

    .line 394
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_a
    const-string p0, "chevronView"

    .line 412
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 407
    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 402
    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 419
    :cond_d
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(I)I

    move-result v0

    .line 420
    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(I)I

    move-result v1

    .line 421
    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(I)I

    move-result v3

    .line 422
    iget v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getChevronColorForState(I)I

    move-result v6

    .line 418
    invoke-direct {p0, v0, v1, v3, v6}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setAllColors(IIII)V

    .line 428
    :cond_e
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->loadSideViewDrawableIfNecessary(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 432
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    return-void

    .line 430
    :cond_f
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 378
    :cond_10
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 2

    const-string/jumbo v0, "tile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    .line 228
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$2;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$2;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    .line 226
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateResources()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 293
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 303
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 305
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/systemui/R$string;->switch_bar_on:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/systemui/R$string;->switch_bar_off:I

    .line 304
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const/4 v0, 0x1

    .line 311
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 312
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 315
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    .line 316
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 317
    sget v2, Lcom/android/systemui/R$string;->accessibility_long_click_tile:I

    .line 316
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 314
    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 206
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getHeightOverride()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getHeightOverride()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBottom(I)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$onStateChanged$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$onStateChanged$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetOverride()V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/HeightOverrideable$DefaultImpls;->resetOverride(Lcom/android/systemui/qs/tileimpl/HeightOverrideable;)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 3

    .line 259
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    const-string v0, "colorBackgroundDrawable"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 260
    iget-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    if-eqz p1, :cond_2

    .line 261
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 265
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "ripple"

    .line 261
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 260
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 267
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public setHeightOverride(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->heightOverride:I

    return-void
.end method

.method protected final setSecondaryLabel(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    return-void
.end method

.method protected final setShowRippleEffect(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    return-void
.end method

.method protected final setSideView(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->sideView:Landroid/view/ViewGroup;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locInScreen=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    const-string v2, ", iconView="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, ", tileState="

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 328
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sb.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityTraversalAfter(I)V

    return-object p0
.end method

.method public final updateResources()V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget v2, Lcom/android/systemui/R$dimen;->qs_tile_text_size:I

    invoke-static {v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 146
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->qs_icon_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 147
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 148
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 149
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->qs_tile_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 153
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_tile_start_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 154
    invoke-virtual {p0, v3, v2, v2, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 156
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->qs_label_container_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 157
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 158
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 162
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 164
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 165
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 166
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 169
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->qs_drawable_end_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 170
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 171
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 172
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-void

    :cond_0
    const-string p0, "customDrawableView"

    .line 170
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "chevronView"

    .line 164
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p0, "labelContainer"

    .line 157
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p0, "label"

    .line 143
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
