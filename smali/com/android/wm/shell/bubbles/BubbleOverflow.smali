.class public final Lcom/android/wm/shell/bubbles/BubbleOverflow;
.super Ljava/lang/Object;
.source "BubbleOverflow.kt"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/BubbleOverflow$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/wm/shell/bubbles/BubbleOverflow$Companion;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapSize:I

.field private final context:Landroid/content/Context;

.field private dotColor:I

.field private dotPath:Landroid/graphics/Path;

.field private expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field private iconBitmapSize:I

.field private final inflater:Landroid/view/LayoutInflater;

.field private overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

.field private final positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field private showDot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleOverflow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleOverflow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->Companion:Lcom/android/wm/shell/bubbles/BubbleOverflow$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positioner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v0, "from(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->inflater:Landroid/view/LayoutInflater;

    .line 59
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateResources()V

    .line 60
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleBitmapSize()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->bitmapSize:I

    int-to-float p1, p1

    const p2, 0x3eeb851f    # 0.46f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 61
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->iconBitmapSize:I

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 63
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    return-void
.end method

.method private final updateBtnTheme()V
    .locals 9

    .line 93
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 97
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010435

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 98
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 99
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 100
    :goto_0
    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->dotColor:I

    .line 102
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/wm/shell/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    const/16 v5, 0x20

    if-ne v3, v5, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 107
    :goto_1
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_3

    .line 108
    sget v3, Lcom/android/wm/shell/R$color;->bubbles_dark:I

    goto :goto_2

    :cond_3
    sget v3, Lcom/android/wm/shell/R$color;->bubbles_light:I

    .line 107
    :goto_2
    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {v5, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 110
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v6, :cond_4

    move-object v6, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 111
    :goto_3
    iget v7, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->bitmapSize:I

    iget v8, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->iconBitmapSize:I

    sub-int/2addr v7, v8

    .line 110
    invoke-direct {v3, v6, v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 112
    new-instance v6, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v6, v5, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6, v2, v4}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    const-string v4, "iconFactory.createBadgedIconBitmap(AdaptiveIconDrawable(bg, fg),\n            null /* user */, true /* shrinkNonAdaptiveIcons */).icon"

    .line 113
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->bitmap:Landroid/graphics/Bitmap;

    const v3, 0x1040234

    .line 117
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    const-string v3, "createPathFromPathData(\n            res.getString(com.android.internal.R.string.config_icon_mask))"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->dotPath:Landroid/graphics/Path;

    .line 118
    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    .line 121
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 122
    invoke-virtual {v3, v0, v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 124
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->dotPath:Landroid/graphics/Path;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 127
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->setRenderedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 128
    :goto_4
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    sget-object v0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->removeDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V

    :goto_5
    return-void

    :cond_7
    const-string p0, "dotPath"

    .line 124
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final cleanUpExpandedState()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->cleanUpExpandedState()V

    :goto_0
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    return-void
.end method

.method public getAppBadge()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBubbleIcon()Landroid/graphics/Bitmap;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "bitmap"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getDotColor()I
    .locals 0

    .line 151
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->dotColor:I

    return p0
.end method

.method public getDotPath()Landroid/graphics/Path;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->dotPath:Landroid/graphics/Path;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "dotPath"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/wm/shell/R$layout;->bubble_expanded_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.wm.shell.bubbles.BubbleExpandedView"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 144
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    .line 145
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateResources()V

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    return-object p0
.end method

.method public bridge synthetic getIconView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object p0

    return-object p0
.end method

.method public getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/wm/shell/R$layout;->bubble_overflow_button:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.wm.shell.bubbles.BadgedImageView"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BadgedImageView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 182
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->initialize(Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    .line 183
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 184
    sget v2, Lcom/android/wm/shell/R$string;->bubble_overflow_button_content_description:I

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleSize()I

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    :goto_1
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateBtnTheme()V

    .line 189
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "Overflow"

    return-object p0
.end method

.method public final initialize(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 2

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->getStackView()Lcom/android/wm/shell/bubbles/BubbleStackView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->initialize(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Z)V

    :goto_0
    return-void
.end method

.method public setExpandedContentAlpha(F)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public final setShowDot(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->showDot:Z

    .line 137
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    :goto_0
    return-void
.end method

.method public setTaskViewVisibility(Z)V
    .locals 0

    return-void
.end method

.method public final setVisible(I)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showDot()Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->showDot:Z

    return p0
.end method

.method public final update()V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateResources()V

    .line 78
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget v1, Lcom/android/wm/shell/R$drawable;->bubble_ic_overflow_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    :goto_1
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateBtnTheme()V

    return-void
.end method

.method public final updateResources()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleBitmapSize()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->bitmapSize:I

    int-to-float v0, v0

    const v1, 0x3eeb851f    # 0.46f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 86
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->iconBitmapSize:I

    .line 87
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleSize()I

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateDimensions()V

    :goto_1
    return-void
.end method
