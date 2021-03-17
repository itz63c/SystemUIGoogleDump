.class Lcom/google/android/systemui/assist/OpaLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/OpaLayout;->getDiamondAnimatorSet()Landroid/util/ArraySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/OpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/OpaLayout;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const-string p1, "OpaLayout.cancel.diamond"

    .line 538
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 539
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 540
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/assist/OpaLayout;->access$200(Lcom/google/android/systemui/assist/OpaLayout;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const-string p1, "OpaLayout.end.diamond"

    .line 545
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 546
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 547
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$3;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/assist/OpaLayout;->access$300(Lcom/google/android/systemui/assist/OpaLayout;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "OpaLayout.start.diamond"

    .line 532
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 533
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
