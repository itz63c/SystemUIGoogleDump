.class public final Lcom/android/systemui/biometrics/AuthRippleView$startRipple$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AuthRippleView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/AuthRippleView;->startRipple(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleView;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lcom/android/systemui/biometrics/AuthRippleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$4;->$onAnimationEnd:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$4;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    .line 91
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$4;->$onAnimationEnd:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 94
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$4;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/biometrics/AuthRippleView;->access$setRippleInProgress$p(Lcom/android/systemui/biometrics/AuthRippleView;Z)V

    .line 95
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$4;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
