.class public final Lcom/android/systemui/controls/ui/ControlViewHolder;
.super Ljava/lang/Object;
.source "ControlViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlViewHolder.kt\ncom/android/systemui/controls/ui/ControlViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,462:1\n1#2:463\n*E\n"
.end annotation


# static fields
.field private static final ATTR_DISABLED:[I

.field private static final ATTR_ENABLED:[I

.field public static final Companion:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;

.field private static final FORCE_PANEL_DEVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final baseLayer:Landroid/graphics/drawable/GradientDrawable;

.field private behavior:Lcom/android/systemui/controls/ui/Behavior;

.field private final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final clipLayer:Landroid/graphics/drawable/ClipDrawable;

.field private final context:Landroid/content/Context;

.field private final controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

.field private final controlsController:Lcom/android/systemui/controls/controller/ControlsController;

.field public cws:Lcom/android/systemui/controls/ui/ControlWithState;

.field private final icon:Landroid/widget/ImageView;

.field private isLoading:Z

.field private lastAction:Landroid/service/controls/actions/ControlAction;

.field private lastChallengeDialog:Landroid/app/Dialog;

.field private final layout:Landroid/view/ViewGroup;

.field private nextStatusText:Ljava/lang/CharSequence;

.field private final onDialogCancel:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private stateAnimator:Landroid/animation/ValueAnimator;

.field private final status:Landroid/widget/TextView;

.field private statusAnimator:Landroid/animation/Animator;

.field private final subtitle:Landroid/widget/TextView;

.field private final title:Landroid/widget/TextView;

.field private final toggleBackgroundIntensity:F

.field private final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private userInteractionInProgress:Z

.field private visibleDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->Companion:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x31

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x32

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 75
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    .line 79
    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_ENABLED:[I

    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    .line 80
    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_DISABLED:[I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;)V
    .locals 1

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlActionCoordinator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 63
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 64
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 65
    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 66
    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 106
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 107
    sget p3, Lcom/android/systemui/R$fraction;->controls_toggle_bg_intensity:I

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4, p4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->toggleBackgroundIntensity:F

    .line 111
    sget p2, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "layout.requireViewById(R.id.icon)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    .line 112
    sget p2, Lcom/android/systemui/R$id;->status:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "layout.requireViewById(R.id.status)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    const-string p3, ""

    .line 113
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->nextStatusText:Ljava/lang/CharSequence;

    .line 114
    sget p3, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p5, "layout.requireViewById(R.id.title)"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    .line 115
    sget p3, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p5, "layout.requireViewById(R.id.subtitle)"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p5, "layout.getContext()"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    .line 124
    new-instance p3, Lcom/android/systemui/controls/ui/ControlViewHolder$onDialogCancel$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$onDialogCancel$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->onDialogCancel:Lkotlin/jvm/functions/Function0;

    .line 136
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 137
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 138
    sget p3, Lcom/android/systemui/R$id;->clip_layer:I

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const-string p5, "null cannot be cast to non-null type android.graphics.drawable.ClipDrawable"

    invoke-static {p3, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Landroid/graphics/drawable/ClipDrawable;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    .line 139
    sget p3, Lcom/android/systemui/R$id;->background:I

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    .line 141
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public static final synthetic access$getBaseLayer$p(Lcom/android/systemui/controls/ui/ControlViewHolder;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method public static final synthetic access$setLastChallengeDialog$p(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    return-void
.end method

.method public static final synthetic access$setStateAnimator$p(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->stateAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setStatusAnimator$p(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public static final synthetic access$updateStatusRow(Lcom/android/systemui/controls/ui/ControlViewHolder;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateStatusRow(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V

    return-void
.end method

.method private final animateBackgroundChange(ZZI)V
    .locals 15

    move-object v9, p0

    .line 306
    iget-object v0, v9, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->control_default_background:I

    iget-object v2, v9, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_3

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/service/controls/Control;->getCustomColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-array v6, v4, [I

    const v7, 0x101009e

    aput v7, v6, v5

    .line 311
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    .line 312
    iget-object v1, v9, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v6, v9, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move/from16 v7, p3

    invoke-virtual {v1, v7, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    goto :goto_2

    .line 309
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    new-array v6, v3, [Ljava/lang/Integer;

    .line 313
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_3
    new-array v6, v3, [Ljava/lang/Integer;

    .line 316
    iget-object v7, v9, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, v9, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    .line 317
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    .line 315
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 307
    :goto_3
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iput v7, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 321
    iget-object v7, v9, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getClipLayer()Landroid/graphics/drawable/ClipDrawable;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/ClipDrawable;->setAlpha(I)V

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getBehavior()Lcom/android/systemui/controls/ui/Behavior;

    move-result-object v8

    instance-of v8, v8, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    if-eqz v8, :cond_4

    .line 325
    iget v8, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v10, v9, Lcom/android/systemui/controls/ui/ControlViewHolder;->toggleBackgroundIntensity:F

    invoke-static {v0, v8, v10}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    :cond_4
    move v8, v0

    .line 329
    iget-object v0, v9, Lcom/android/systemui/controls/ui/ControlViewHolder;->stateAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_4
    if-eqz p1, :cond_a

    .line 331
    instance-of v0, v7, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_8

    .line 332
    move-object v0, v7

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_5
    if-nez v2, :cond_7

    iget v0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6

    .line 334
    :cond_8
    iget v0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :goto_6
    move v10, v0

    .line 336
    iget-object v0, v9, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_9

    move v11, v8

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    move v11, v0

    .line 337
    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v12

    new-array v0, v3, [I

    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getClipLayer()Landroid/graphics/drawable/ClipDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/ClipDrawable;->getAlpha()I

    move-result v2

    aput v2, v0, v5

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 342
    new-instance v14, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;

    move-object v0, v14

    move-object v1, v7

    move-object v2, v13

    move v3, v10

    move-object v4, v6

    move-object v5, p0

    move v6, v11

    move v7, v8

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;ILkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/controls/ui/ControlViewHolder;IIF)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 352
    new-instance v0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$2;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x2bc

    .line 357
    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 358
    sget-object v0, Lcom/android/systemui/Interpolators;->CONTROL_STATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    .line 360
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 341
    iput-object v13, v9, Lcom/android/systemui/controls/ui/ControlViewHolder;->stateAnimator:Landroid/animation/ValueAnimator;

    goto :goto_8

    .line 362
    :cond_a
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 363
    instance-of v0, v7, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_b

    .line 364
    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    iget v0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 366
    :cond_b
    iget-object v0, v9, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_8
    return-void
.end method

.method private final animateStatusChange(ZLkotlin/jvm/functions/Function0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :goto_0
    if-nez p1, :cond_1

    .line 376
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 380
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    const/4 v0, 0x2

    const-string v1, "alpha"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 381
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 382
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    new-array p2, v3, [F

    const v3, 0x3ee66666    # 0.45f

    aput v3, p2, v2

    invoke-static {p1, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 383
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 p2, -0x1

    .line 384
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v0, 0x1f4

    .line 385
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 386
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x384

    .line 387
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 388
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 389
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 382
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    goto :goto_1

    .line 391
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v5, v4, v2

    invoke-static {p1, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v4, 0xc8

    .line 392
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 393
    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 394
    new-instance v7, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$fadeOut$1$1;

    invoke-direct {v7, p2}, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$fadeOut$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    new-array v7, v3, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v2

    invoke-static {p2, v1, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 401
    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 402
    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    .line 405
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 406
    new-instance p1, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$animateStatusChange$2$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 412
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 413
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 404
    iput-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->statusAnimator:Landroid/animation/Animator;

    :goto_1
    return-void
.end method

.method public static synthetic applyRenderInfo$default(Lcom/android/systemui/controls/ui/ControlViewHolder;ZIZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 264
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ZIZ)V

    return-void
.end method

.method public static synthetic bindBehavior$default(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/Behavior;Lkotlin/reflect/KClass;IILjava/lang/Object;)Lcom/android/systemui/controls/ui/Behavior;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 241
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindBehavior(Lcom/android/systemui/controls/ui/Behavior;Lkotlin/reflect/KClass;I)Lcom/android/systemui/controls/ui/Behavior;

    move-result-object p0

    return-object p0
.end method

.method private final setEnabled(Z)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 459
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic setStatusText$default(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/CharSequence;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 292
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private final updateContentDescription()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateStatusRow(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V
    .locals 1

    .line 424
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setEnabled(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateContentDescription()V

    .line 429
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 p2, 0x0

    if-nez p5, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {p5}, Landroid/service/controls/Control;->getCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object p5

    if-nez p5, :cond_1

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 436
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 431
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez p2, :cond_7

    .line 438
    instance-of p2, p3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz p2, :cond_6

    .line 441
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Landroid/graphics/drawable/StateListDrawable;

    if-nez p2, :cond_4

    .line 442
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 444
    sget-object p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_ENABLED:[I

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->ATTR_DISABLED:[I

    .line 445
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_2

    .line 447
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 451
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result p1

    const/16 p2, 0x34

    if-eq p1, p2, :cond_7

    .line 452
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final action(Landroid/service/controls/actions/ControlAction;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastAction:Landroid/service/controls/actions/ControlAction;

    .line 233
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlWithState;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lcom/android/systemui/controls/controller/ControlsController;->action(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/actions/ControlAction;)V

    return-void
.end method

.method public final actionResponse(I)V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->enableActionOnTouch(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_9

    if-eq p1, v2, :cond_8

    const/4 v4, 0x2

    if-eq p1, v4, :cond_7

    const/4 v3, 0x3

    if-eq p1, v3, :cond_5

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 202
    :cond_1
    sget-object p1, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    .line 203
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->onDialogCancel:Lkotlin/jvm/functions/Function0;

    .line 202
    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    if-nez p1, :cond_2

    goto :goto_1

    .line 204
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 197
    :cond_3
    sget-object p1, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    .line 198
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->onDialogCancel:Lkotlin/jvm/functions/Function0;

    .line 197
    invoke-virtual {p1, p0, v1, v0, v2}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    if-nez p1, :cond_4

    goto :goto_1

    .line 199
    :cond_4
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 207
    :cond_5
    sget-object p1, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    .line 208
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->onDialogCancel:Lkotlin/jvm/functions/Function0;

    .line 207
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->createConfirmationDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;Lkotlin/jvm/functions/Function0;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    if-nez p1, :cond_6

    goto :goto_1

    .line 209
    :cond_6
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 193
    :cond_7
    iput-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setErrorStatus()V

    goto :goto_1

    .line 187
    :cond_8
    iput-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    goto :goto_1

    .line 189
    :cond_9
    iput-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setErrorStatus()V

    :goto_1
    return-void
.end method

.method public final applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ZIZ)V
    .locals 11

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, -0x3e8

    goto :goto_1

    .line 267
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v0

    .line 271
    :goto_1
    sget-object v1, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ControlWithState;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->lookup(Landroid/content/Context;Landroid/content/ComponentName;II)Lcom/android/systemui/controls/ui/RenderInfo;

    move-result-object p2

    .line 272
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/RenderInfo;->getForeground()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 273
    iget-object v7, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->nextStatusText:Ljava/lang/CharSequence;

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object v10

    .line 277
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    .line 280
    :cond_2
    new-instance v0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;

    move-object v4, v0

    move-object v5, p0

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;ZLjava/lang/CharSequence;Lcom/android/systemui/controls/ui/RenderInfo;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V

    invoke-direct {p0, p3, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->animateStatusChange(ZLkotlin/jvm/functions/Function0;)V

    .line 284
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/RenderInfo;->getEnabledBackground()I

    move-result p2

    invoke-direct {p0, p3, p1, p2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->animateBackgroundChange(ZZI)V

    return-void
.end method

.method public final bindBehavior(Lcom/android/systemui/controls/ui/Behavior;Lkotlin/reflect/KClass;I)Lcom/android/systemui/controls/ui/Behavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/Behavior;",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/android/systemui/controls/ui/Behavior;",
            ">;I)",
            "Lcom/android/systemui/controls/ui/Behavior;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/ui/Behavior;

    .line 250
    invoke-interface {p1, p0}, Lcom/android/systemui/controls/ui/Behavior;->initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    .line 253
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Lcom/android/systemui/controls/ui/Behavior;->bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V

    const-string p0, "behavior.also {\n            it.bind(cws, offset)\n        }"

    .line 259
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final bindData(Lcom/android/systemui/controls/ui/ControlWithState;)V
    .locals 6

    const-string v0, "cws"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->userInteractionInProgress:Z

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setCws(Lcom/android/systemui/controls/ui/ControlWithState;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSubtitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 155
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 165
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder$bindData$2$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->runPendingAction(Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    .line 175
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 176
    sget-object p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->Companion:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;->findBehaviorClass(ILandroid/service/controls/templates/ControlTemplate;I)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    .line 175
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindBehavior$default(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/Behavior;Lkotlin/reflect/KClass;IILjava/lang/Object;)Lcom/android/systemui/controls/ui/Behavior;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateContentDescription()V

    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 217
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->visibleDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 218
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->visibleDialog:Landroid/app/Dialog;

    return-void
.end method

.method public final getBehavior()Lcom/android/systemui/controls/ui/Behavior;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    return-object p0
.end method

.method public final getBgExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public final getClipLayer()Landroid/graphics/drawable/ClipDrawable;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    return-object p0
.end method

.method public final getControlStatus()I
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/controls/Control;->getStatus()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getControlTemplate()Landroid/service/controls/templates/ControlTemplate;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    const-string v0, "NO_TEMPLATE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public final getCws()Lcom/android/systemui/controls/ui/ControlWithState;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "cws"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getDeviceType()I
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/service/controls/Control;->getDeviceType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlInfo;->getDeviceType()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1
    return p0
.end method

.method public final getIcon()Landroid/widget/ImageView;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getLastAction()Landroid/service/controls/actions/ControlAction;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastAction:Landroid/service/controls/actions/ControlAction;

    return-object p0
.end method

.method public final getLayout()Landroid/view/ViewGroup;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getStatus()Landroid/widget/TextView;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getSubtitle()Landroid/widget/TextView;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getUiExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public final setCws(Lcom/android/systemui/controls/ui/ControlWithState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    return-void
.end method

.method public final setErrorStatus()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->controls_error_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Lcom/android/systemui/controls/ui/ControlViewHolder$setErrorStatus$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder$setErrorStatus$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->animateStatusChange(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setLoading(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    return-void
.end method

.method public final setStatusText(Ljava/lang/CharSequence;Z)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 294
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 295
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateContentDescription()V

    .line 298
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->nextStatusText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setStatusTextSize(F)V
    .locals 1

    .line 290
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final setUserInteractionInProgress(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->userInteractionInProgress:Z

    return-void
.end method

.method public final setVisibleDialog(Landroid/app/Dialog;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->visibleDialog:Landroid/app/Dialog;

    return-void
.end method

.method public final usePanel()Z
    .locals 2

    .line 237
    sget-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p0

    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
