.class final Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$1$1;
.super Ljava/lang/Object;
.source "ToggleRangeBehavior.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->updateRange(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$1$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 244
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$1$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getClipLayer()Landroid/graphics/drawable/ClipDrawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    return-void
.end method
