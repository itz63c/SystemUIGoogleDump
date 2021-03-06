.class public final Lcom/android/systemui/privacy/OngoingPrivacyChip;
.super Landroid/widget/FrameLayout;
.source "OngoingPrivacyChip.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOngoingPrivacyChip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OngoingPrivacyChip.kt\ncom/android/systemui/privacy/OngoingPrivacyChip\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n1828#2,3:111\n*E\n*S KotlinDebug\n*F\n+ 1 OngoingPrivacyChip.kt\ncom/android/systemui/privacy/OngoingPrivacyChip\n*L\n59#1,3:111\n*E\n"
.end annotation


# instance fields
.field private cameraBackgroundColor:I

.field private defaultBackgroundColor:I

.field private iconColor:I

.field private iconMargin:I

.field private iconSize:I

.field private iconsContainer:Landroid/widget/LinearLayout;

.field private privacyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/privacy/OngoingPrivacyChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/privacy/OngoingPrivacyChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/privacy/OngoingPrivacyChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->privacyList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 26
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/privacy/OngoingPrivacyChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final generateContentDescription(Lcom/android/systemui/privacy/PrivacyChipBuilder;)V
    .locals 4

    .line 90
    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyChipBuilder;->joinTypes()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    sget v1, Lcom/android/systemui/R$string;->ongoing_privacy_chip_content_multiple_apps:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateResources()V
    .locals 5

    .line 96
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    sget v1, Lcom/android/systemui/R$dimen;->ongoing_appops_chip_icon_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 96
    iput v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconMargin:I

    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    sget v1, Lcom/android/systemui/R$dimen;->ongoing_appops_chip_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 98
    iput v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconSize:I

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010433

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 100
    iput v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconColor:I

    .line 102
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->privacy_circle_microphone_location:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->defaultBackgroundColor:I

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->privacy_circle_camera:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->cameraBackgroundColor:I

    .line 105
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    sget v1, Lcom/android/systemui/R$dimen;->ongoing_appops_chip_side_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const-string v3, "iconsContainer"

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$drawable;->privacy_chip_bg:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final updateView(Lcom/android/systemui/privacy/PrivacyChipBuilder;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->privacyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "iconsContainer"

    if-nez v0, :cond_4

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->generateContentDescription(Lcom/android/systemui/privacy/PrivacyChipBuilder;)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-static {p0, p1, v0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->updateView$setIcons(Lcom/android/systemui/privacy/OngoingPrivacyChip;Lcom/android/systemui/privacy/PrivacyChipBuilder;Landroid/view/ViewGroup;)V

    .line 78
    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyChipBuilder;->getTypes()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->cameraBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->defaultBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 86
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void

    .line 84
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private static final updateView$setIcons(Lcom/android/systemui/privacy/OngoingPrivacyChip;Lcom/android/systemui/privacy/PrivacyChipBuilder;Landroid/view/ViewGroup;)V
    .locals 5

    .line 58
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 59
    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyChipBuilder;->generateIcons()Ljava/util/List;

    move-result-object p1

    .line 1829
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 61
    iget v3, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 62
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    iget v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconSize:I

    invoke-virtual {p2, v3, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 69
    iget v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconMargin:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 70
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final getPrivacyList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->privacyList:Ljava/util/List;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 50
    sget v0, Lcom/android/systemui/R$id;->icons_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "requireViewById(R.id.icons_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->updateResources()V

    return-void
.end method

.method public final setPrivacyList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->privacyList:Ljava/util/List;

    .line 44
    new-instance p1, Lcom/android/systemui/privacy/PrivacyChipBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->privacyList:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/privacy/PrivacyChipBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->updateView(Lcom/android/systemui/privacy/PrivacyChipBuilder;)V

    return-void
.end method
