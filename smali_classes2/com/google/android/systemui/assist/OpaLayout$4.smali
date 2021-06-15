.class Lcom/google/android/systemui/assist/OpaLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/OpaLayout;->getRetractAnimatorSet()Landroid/util/ArraySet;
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

    .line 627
    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$4;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "OpaLayout.cancel.retract"

    .line 636
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 637
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const-string p1, "OpaLayout.end.retract"

    .line 642
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 643
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 644
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$4;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-static {p1}, Lcom/google/android/systemui/assist/OpaLayout;->access$200(Lcom/google/android/systemui/assist/OpaLayout;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 645
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$4;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/assist/OpaLayout;->access$400(Lcom/google/android/systemui/assist/OpaLayout;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "OpaLayout.start.retract"

    .line 630
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 631
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
