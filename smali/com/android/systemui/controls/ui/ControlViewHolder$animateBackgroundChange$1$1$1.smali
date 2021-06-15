.class final Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;
.super Ljava/lang/Object;
.source "ControlViewHolder.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlViewHolder;->animateBackgroundChange(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $newBaseColor:I

.field final synthetic $newClipColor:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $oldAlpha:F

.field final synthetic $oldBaseColor:I

.field final synthetic $oldColor:I

.field final synthetic $this_apply:Landroid/graphics/drawable/Drawable;

.field final synthetic $this_apply$1:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;ILkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/controls/ui/ControlViewHolder;IIF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->$this_apply:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->$this_apply$1:Landroid/animation/ValueAnimator;

    iput p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->$oldColor:I

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->$newClipColor:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput p6, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->$oldBaseColor:I

    iput p7, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->$newBaseColor:I

    iput p8, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->$oldAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->$this_apply:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->$this_apply$1:Landroid/animation/ValueAnimator;

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    .line 354
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->$oldColor:I

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->$newClipColor:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 355
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    .line 354
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->access$getBaseLayer$p(Lcom/android/systemui/controls/ui/ControlViewHolder;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->$oldBaseColor:I

    iget v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->$newBaseColor:I

    .line 358
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    .line 357
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$animateBackgroundChange$1$1$1;->$oldAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {p0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method
