.class Lcom/google/android/systemui/assist/LockscreenOpaLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockscreenOpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/LockscreenOpaLayout;->getRetractAnimatorSet()Landroid/util/ArraySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$2;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$2;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-static {p1}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->access$300(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 176
    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$2;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-static {p1}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->access$400(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V

    .line 177
    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$2;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->access$002(Lcom/google/android/systemui/assist/LockscreenOpaLayout;I)I

    .line 178
    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$2;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->access$102(Lcom/google/android/systemui/assist/LockscreenOpaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
