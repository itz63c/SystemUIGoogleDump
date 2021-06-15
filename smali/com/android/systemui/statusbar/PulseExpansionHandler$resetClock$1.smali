.class final Lcom/android/systemui/statusbar/PulseExpansionHandler$resetClock$1;
.super Ljava/lang/Object;
.source "PulseExpansionHandler.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/PulseExpansionHandler;->resetClock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/PulseExpansionHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/PulseExpansionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler$resetClock$1;->this$0:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 300
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler$resetClock$1;->this$0:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->access$setEmptyDragAmount(Lcom/android/systemui/statusbar/PulseExpansionHandler;F)V

    return-void
.end method
