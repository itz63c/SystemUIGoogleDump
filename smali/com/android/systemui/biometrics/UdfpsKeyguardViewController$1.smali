.class Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;
.super Ljava/lang/Object;
.source "UdfpsKeyguardViewController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozeAmountChanged(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$000(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$100(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->onDozeAmountChanged(FF)V

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    .line 282
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {p1, v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$202(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z

    .line 284
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$302(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;I)I

    .line 297
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$400(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->setStatusBarState(I)V

    .line 298
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method

.method public onStatePreChange(II)V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$202(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z

    .line 291
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method
