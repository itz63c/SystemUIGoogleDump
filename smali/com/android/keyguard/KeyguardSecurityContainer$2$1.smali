.class Lcom/android/keyguard/KeyguardSecurityContainer$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardSecurityContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecurityContainer$2;->onReady(Landroid/view/WindowInsetsAnimationController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSecurityContainer$2;

.field final synthetic val$controller:Landroid/view/WindowInsetsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer$2;Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2$1;->this$1:Lcom/android/keyguard/KeyguardSecurityContainer$2;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2$1;->val$controller:Landroid/view/WindowInsetsAnimationController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 371
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2$1;->this$1:Lcom/android/keyguard/KeyguardSecurityContainer$2;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainer$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$200(Lcom/android/keyguard/KeyguardSecurityContainer;I)V

    .line 374
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2$1;->val$controller:Landroid/view/WindowInsetsAnimationController;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2$1;->this$1:Lcom/android/keyguard/KeyguardSecurityContainer$2;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 p1, 0x14

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$100(Lcom/android/keyguard/KeyguardSecurityContainer;I)V

    return-void
.end method
